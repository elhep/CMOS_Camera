--------------------------------------------------------------------------------
-- Part of MV1 Test System Controller
--
-- Function: Receiver of LVDS data from sensor
--
-- Bart Ceulemans
-- CMOSIS nv
--------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library unisim;
    use unisim.vcomponents.all;


entity tsc_mv1_rx is
  generic (
    g_NR_CHAN           : integer;
    g_DATA_INV_MASK     : unsigned;
    g_CTRL_INV_MASK     : std_logic
    );
  port (
    -- CLOCK & RESET
    clk_rx_h            : in std_logic;   -- master clock speed * 5

    rst_sys             : in std_logic;   -- master clock speed
    clk_sys             : in std_logic;

    rst_idelay          : in std_logic;   -- 200 MHz
    clk_idelay          : in std_logic;

    -- LVDS INPUTS
    data_rx_p           : in unsigned (g_NR_CHAN-1 downto 0);
    data_rx_n           : in unsigned (g_NR_CHAN-1 downto 0);

    ctrl_rx_p           : in std_logic;
    ctrl_rx_n           : in std_logic;

    -- COMMANDS
    reg_read_training   : in  std_logic;
    cmd_start_training  : in std_logic;

    -- TRAINING STATUS
    training_done       : out std_logic;
    training_active     : out std_logic;

    -- REGISTER INPUTS/OUTPUTS
	reg_10bit           : in  std_logic;
    fifo_wen            : out std_logic;
    fifo_din            : out unsigned (7 downto 0);

    -- PARALLEL DATA OUTPUT
    data_par_00         : out unsigned (11 downto 0);
    data_par_01         : out unsigned (11 downto 0);
    data_par_02         : out unsigned (11 downto 0);
    data_par_03         : out unsigned (11 downto 0);
    data_par_04         : out unsigned (11 downto 0);
    data_par_05         : out unsigned (11 downto 0);
    data_par_06         : out unsigned (11 downto 0);
    data_par_07         : out unsigned (11 downto 0);
    data_par_08         : out unsigned (11 downto 0);
    data_par_09         : out unsigned (11 downto 0);
    data_par_10         : out unsigned (11 downto 0);
    data_par_11         : out unsigned (11 downto 0);
    data_par_12         : out unsigned (11 downto 0);
    data_par_13         : out unsigned (11 downto 0);
    data_par_14         : out unsigned (11 downto 0);
    data_par_15         : out unsigned (11 downto 0);
    ctrl_par            : out unsigned (11 downto 0)
    );
end entity tsc_mv1_rx;


architecture rtl of tsc_mv1_rx is

  -- CONSTANTS
  constant c_TOT_ISERDES_BITS : integer :=(g_NR_CHAN+1) * 12;
  constant c_INVERT_MASK      : unsigned (g_NR_CHAN downto 0) :=
                                      g_CTRL_INV_MASK & g_DATA_INV_MASK;

  -- DATA FOR g_NR_CHAN+1 CHANNELS
  signal data_p           : unsigned (g_NR_CHAN downto 0) := (others => '0');
  signal data_n           : unsigned (g_NR_CHAN downto 0) := (others => '0');

  -- PARALLEL DATA FROM RECEIVERS (CTRL & 16 DATA)
  type t_data_array is array (g_NR_CHAN  downto 0) of
                    unsigned (11         downto 0);

  signal iserdes_data_par_2D  : t_data_array := (others => (others => '0'));

  -- ALIGNMENT CONTROLLER
  type    t_fsm_align_ctrl is (s_IDLE, s_START_ALIGN, s_ALIGN);
  subtype t_chan_sel       is integer range g_NR_CHAN downto 0;

  signal fsm_align_ctrl   : t_fsm_align_ctrl  := s_IDLE;
  signal chan_sel         : t_chan_sel        := 0;
  signal training_word    : unsigned(11 downto 0):=(others =>'0');

  signal align_done       : std_logic := '0';
  signal start_align      : std_logic := '0';

  -- ALIGNMENT FSM
  type t_fsm_align is (s_IDLE, s_RESET_1, s_RESET_2, s_WORD_ALIGN, s_FINISH,
                        s_EYE_SAMPLE, s_EYE_CHECK, s_EYE_DELAY, s_EYE_CALC,
                        s_EYE_CENTER,
                        s_WRITE_START, s_WRITE_MID, s_WRITE_END, s_WRITE_WORD,
                        s_WRITE_OK);
  type t_eye_state is (s_FIND_EDGE_1, s_EDGE_1, s_FIND_EDGE_2);

  signal eye_state      : t_eye_state := s_FIND_EDGE_1;
  signal fsm_align      : t_fsm_align := s_IDLE;
  signal cnt_align      : unsigned (3 downto 0) := (others => '0');

  signal data_stable    : std_logic := '0';
  signal cnt_steps      : unsigned ( 7 downto 0) := (others => '0');
  signal cnt_error      : unsigned ( 2 downto 0) := (others => '0');
  signal cnt_samples    : unsigned ( 3 downto 0) := (others => '0');
  signal data_curr      : unsigned (11 downto 0) :=(others => '0');
  signal data_prev      : unsigned (11 downto 0) :=(others => '0');


  -- Registers (start, end and mid of eye; ok and not ok)
    signal loc_eye_start    : unsigned (7 downto 0) := (others => '0');
    signal loc_eye_mid      : unsigned (7 downto 0) := (others => '0');
    signal loc_eye_end      : unsigned (7 downto 0) := (others => '0');
  signal loc_word         : unsigned (7 downto 0) := (others => '0');
  signal loc_ok           : std_logic := '0';
  signal loc_nok          : std_logic := '0';

  signal iserdes_sr       : unsigned (g_NR_CHAN downto 0) := (others => '1');
  signal iserdes_dlyce    : unsigned (g_NR_CHAN downto 0) := (others => '0');
  signal iserdes_dlyrst   : unsigned (g_NR_CHAN downto 0) := (others => '1');
  signal iserdes_bitslip  : unsigned (g_NR_CHAN downto 0) := (others => '0');


  ------------------------------------------------------------------------------
  -- COMPONENT: receiver and serial to parallel converter
  component tsc_mv1_ser2par is
  port (
    data_ser_p              : in  std_logic;
    data_ser_n              : in  std_logic;

    clk_par                 : in  std_logic;
    clk_ser                 : in  std_logic;

    rst                     : in  std_logic;
    dlyce                   : in  std_logic;
    dlyrst                  : in  std_logic;
    bitslip                 : in  std_logic;

    reg_10bit               : in  std_logic;
    reg_invert              : in  std_logic;

    data_par                : out unsigned (11 downto 0)
    );
  end component;


begin

------------------------------------------------------------------------------
-- IDELAYCTRL BLOCK & CLOCK DIVIDER FOR 200 MHZ CLOCK
-- These blocks must be instantiated in the source code if the VARIABLE
-- setting is used for the ISERDES generic IOBDELAY_TYPE
-- The refclk input of the idelayctrl defines the delay per tap
--  250 MHz -> ~60ps/tap
--  200 MHz -> ~75ps/tap
--  150 MHz -> ~95ps/tap
    inst_idelayctrl: idelayctrl
    port map ( rst => rst_idelay, refclk => clk_idelay);

  ------------------------------------------------------------------------------
  -- INSTANTIATE RECEIVER FOR DATA CHANNELS & CONTROL CHANNEL
  -- The data channels are number 0 to g_NR_CHAN-1
  -- The control channel is number g_NR_CHAN

  data_p  <= ctrl_rx_p & data_rx_p;
  data_n  <= ctrl_rx_n & data_rx_n;

  gen_ser2par: for i_gen in g_NR_CHAN downto 0 generate
  begin

    inst_ser2par: tsc_mv1_ser2par
    port map (
      data_ser_p      => data_p(i_gen),
      data_ser_n      => data_n(i_gen),
      clk_par         => clk_sys,
      clk_ser         => clk_rx_h,
      rst             => rst_sys,
      dlyce           => iserdes_dlyce(i_gen),
      dlyrst          => iserdes_dlyrst(i_gen),
      bitslip         => iserdes_bitslip(i_gen),
      reg_10bit       => reg_10bit,
      reg_invert      => c_INVERT_MASK(i_gen),
      data_par        => iserdes_data_par_2D(i_gen)
      );

  end generate;

  data_par_00   <= iserdes_data_par_2D( 0);
  data_par_01   <= iserdes_data_par_2D( 1);
  data_par_02   <= iserdes_data_par_2D( 2);
  data_par_03   <= iserdes_data_par_2D( 3);
  data_par_04   <= iserdes_data_par_2D( 4);
  data_par_05   <= iserdes_data_par_2D( 5);
  data_par_06   <= iserdes_data_par_2D( 6);
  data_par_07   <= iserdes_data_par_2D( 7);
  data_par_08   <= iserdes_data_par_2D( 8);
  data_par_09   <= iserdes_data_par_2D( 9);
  data_par_10   <= iserdes_data_par_2D(10);
  data_par_11   <= iserdes_data_par_2D(11);
  data_par_12   <= iserdes_data_par_2D(12);
  data_par_13   <= iserdes_data_par_2D(13);
  data_par_14   <= iserdes_data_par_2D(14);
  data_par_15   <= iserdes_data_par_2D(15);
  ctrl_par      <= iserdes_data_par_2D(16);

 ------------------------------------------------------------------------------
  -- ALIGNMENT CONTROLLER
  -- To reduce the amount of resources used, there is only one alignment machine
  -- that is used by all input channels
  -- The alignment algorithm is run for every channel sequenctially
  -- The alignment controller selects the correct channel and starts the
  -- alignment algorithm (in align_chan_proc process)

  align_ctrl_proc: process (clk_sys)
  begin
    if (clk_sys'event and clk_sys = '1') then
      if (rst_sys = '1') then
        -- RESET
        start_align     <= '0';
        training_done   <= '0';
        training_active <= '0';

        data_curr       <= (others => '0');
        training_word   <= (others => '0');
        chan_sel        <= 0;

      else
        -- DEFAULT VALUES
        start_align     <= '0';
        training_done   <= '0';
        training_active <= '0';

        -- FSM
        case fsm_align_ctrl is
          --
          when s_IDLE =>
            if (cmd_start_training = '1') then
              fsm_align_ctrl  <= s_START_ALIGN;
              chan_sel        <= 0;
            end if;

          --
          when s_START_ALIGN =>
            start_align     <= '1';
            fsm_align_ctrl  <= s_ALIGN;
            training_active <= '1';


          --
          when s_ALIGN =>
            training_active <= '1';
            if (align_done = '1') then
              if (chan_sel = g_NR_CHAN) then
                -- Last alignment finished: finish routine and assert OK output
                fsm_align_ctrl  <= s_IDLE;
                training_done   <= '1';
              else
                -- Alignment finished: go to next channel
                chan_sel        <= chan_sel + 1;
                fsm_align_ctrl  <= s_START_ALIGN;
              end if;
            end if;
        end case;

        -- SELECT CORRECT DATA
        data_curr <= iserdes_data_par_2D (chan_sel);

        -- GENERATE TRAINING WORD
        if (chan_sel = g_NR_CHAN) then
          training_word     <= (others => '0');
          training_word(9)  <= '1';
        else
          training_word     <= to_unsigned (85, 12);
        end if;

      end if;
    end if;
  end process;


  ------------------------------------------------------------------------------
  -- BIT & WORD ALIGNMENT
  -- Runs the training algorithm on 1 channel
  -- (first bit alignment, then word alignment)
  --
  -- Bit alignment: 
  --  Continuously sample data (data_curr) and compare for 'n' samples to
  --  the data from the previous iteration (data_prev).
  --  After comparing, the IDELAY parameter is increment to go to the next
  --  delay step.
  --  A complete stable region is found between the points loc_eye_start and
  --  loc_eye_end.
  --  The mid point between these two is found (loc_eye_mid) and the IDELAY
  --  of the channel is set to that value.
  --
  -- Word alignment: 
  --  the bitslip module of the ISERDES is asserted until the
  --  data output matches the training word (85 for data channels, 512 for 
  --  control channel)

    align_chan_proc: process (clk_sys)
      variable sum    : unsigned (7 downto 0);
    begin
      if (clk_sys'event and clk_sys = '1') then
        if (rst_sys = '1') then
          fsm_align         <= s_IDLE;
          eye_state         <= s_FIND_EDGE_1;
          cnt_align         <= (others => '0');
          align_done        <= '0';
  
          cnt_steps         <= (others => '0');
          cnt_error         <= (others => '0');
          cnt_samples       <= (others => '0');
          data_prev         <= (others => '0');
          data_stable       <= '0';
  
          iserdes_sr        <= (others => '1');
          iserdes_dlyce     <= (others => '0');
          iserdes_dlyrst    <= (others => '1');
          iserdes_bitslip   <= (others => '0');
  
          loc_eye_start     <= (others => '0');
          loc_eye_mid       <= (others => '0');
          loc_eye_end       <= (others => '0');
          loc_word          <= (others => '0');
          loc_ok            <= '0';
          loc_nok           <= '0';
  
          fifo_din          <= (others => '0');
          fifo_wen          <= '0';
  
        else
          -- DEFAULT VALUES
          iserdes_sr        <= (others => '0');
          iserdes_dlyrst    <= (others => '0');
          iserdes_dlyce     <= (others => '0');
          iserdes_bitslip   <= (others => '0');
  
          align_done        <= '0';
  
          fifo_din          <= (others => '0');
          fifo_wen          <= '0';
  
  
          -- FSM
          case fsm_align is
            --
            when s_IDLE =>
              if (start_align = '1') then
                loc_eye_start <= to_unsigned(31,loc_eye_start'length);
                loc_eye_mid   <= to_unsigned(31,loc_eye_mid'length);
                loc_eye_end   <= to_unsigned(31,loc_eye_end'length);
                loc_word      <= to_unsigned(12,loc_word'length);
                loc_ok        <= '0';
                loc_nok       <= '0';
  
                fsm_align     <= s_RESET_1;
                cnt_align     <= (others => '1');
  
                cnt_steps     <= (others => '0');
              end if;
  
  
            --
            when s_RESET_1 =>
              -- Reset ISERDES module
              if (cnt_align = "1111") then
                iserdes_sr(chan_sel)      <= '1';
                iserdes_dlyrst(chan_sel)  <= '1';
              end if;
  
              if (cnt_align = 0) then
                fsm_align   <= s_EYE_SAMPLE;
                eye_state   <= s_FIND_EDGE_1;
                data_stable <= '1';
                data_prev   <= data_curr;
                cnt_samples <= (others => '1');
                cnt_error   <= (others => '0');
              else
                cnt_align   <= cnt_align - 1;
              end if;
  
  
            --
            when s_EYE_SAMPLE =>
              -- Make 'n' samples to check if data is stable and 
              -- the same as previous
              if (data_curr /= data_prev) then
                data_stable   <= '0';
              end if;
  
              if (cnt_samples = 0) then
                data_prev   <= data_curr;
                fsm_align   <= s_EYE_DELAY;
                cnt_align   <= (others => '1');
              else
                cnt_samples <= cnt_samples - 1;
              end if;
  
  
            --
            when s_EYE_DELAY =>
              -- Add 1 delay tap to ISERDES delay
              if (cnt_align = "1111") then
                iserdes_dlyce(chan_sel) <= '1';
              end if;
  
              if (cnt_align = 0) then
                fsm_align   <= s_EYE_CHECK;
              else
                cnt_align   <= cnt_align - 1;
              end if;
  
  
            --
            when s_EYE_CHECK =>
              -- Check if data was stable and take action
              fsm_align   <= s_EYE_SAMPLE;
              cnt_samples <= (others => '1');
              data_stable <= '1';
  
              cnt_steps   <= cnt_steps + 1;
  
              if (cnt_error /= 0) then
                cnt_error   <= cnt_error - 1;
              end if;
  
              if (cnt_steps = 31) then
                fsm_align <= s_EYE_CALC;
  
              elsif (cnt_error = 0) then
                case eye_state is
                  --
                  when s_FIND_EDGE_1 =>
                    if (data_stable = '0') then
                      eye_state   <= s_EDGE_1;
                      cnt_error   <= (others => '1');
                    end if;
  
                  --
                  when s_EDGE_1 =>
                    if (data_stable = '1') then
                      eye_state     <= s_FIND_EDGE_2;
                      cnt_error     <= (others => '1');
                      loc_eye_start <= cnt_steps;
                    end if;
  
                  --
                  when s_FIND_EDGE_2 =>
                    if (data_stable = '0') then
                      fsm_align   <= s_EYE_CALC;
                      loc_eye_end <= cnt_steps;
                    end if;
  
                end case;
              end if;
  
  
            --
            when s_EYE_CALC =>
              fsm_align   <= s_RESET_2;
              cnt_align   <= "1111";
  
              sum         := loc_eye_start + loc_eye_end;
              loc_eye_mid <= "000" & sum (5 downto 1);
              cnt_steps   <= "000" & sum (5 downto 1);
  
  
            --
            when s_RESET_2 =>
              -- Reset ISERDES module
              if (cnt_align = "1111") then
                iserdes_sr(chan_sel)      <= '1';
                iserdes_dlyrst(chan_sel)  <= '1';
              end if;
  
              if (cnt_align = 0) then
                fsm_align   <= s_EYE_CENTER;
                cnt_align   <= "1111";
              else
                cnt_align   <= cnt_align - 1;
              end if;
  
  
            --
            when s_EYE_CENTER =>
              -- Go to center of eye
              if (cnt_align = "1111") then
                iserdes_dlyce(chan_sel) <= '1';
              end if;
  
              if (cnt_align = 0) then
                if (cnt_steps = 0) then
                  fsm_align   <= s_WORD_ALIGN;
                  cnt_align   <= (others => '0');
                  cnt_steps   <= (others => '0');
                else
                  cnt_steps   <= cnt_steps - 1;
                  cnt_align   <= "1111";
                end if;
              else
                cnt_align   <= cnt_align - 1;
              end if;
  
  
            --
            when s_WORD_ALIGN =>
              -- Match training word
              if (cnt_align = 0) then
                if (data_curr = training_word) then
                  if (reg_read_training = '1') then
                    fsm_align <= s_WRITE_START;
                  else
                    fsm_align   <= s_FINISH;
                  end if;
  
                  loc_word    <= cnt_steps;
                  loc_ok      <= '1';
  
                elsif (cnt_steps = 12) then
                  if (reg_read_training = '1') then
                    fsm_align <= s_WRITE_START;
                  else
                    fsm_align   <= s_FINISH;
                  end if;
  
                  loc_word    <= cnt_steps;
                  loc_nok     <= '1';
  
                else
                  iserdes_bitslip(chan_sel)   <= '1';
                  cnt_align                   <= "1111";
                  cnt_steps                   <= cnt_steps + 1;
                end if;
              else
                cnt_align   <= cnt_align - 1;
              end if;
  
  
            --
            when s_WRITE_START =>
              fifo_din  <= loc_eye_start;
              fifo_wen  <= '1';
              fsm_align <= s_WRITE_MID;
  
  
            --
            when s_WRITE_MID =>
              fifo_din  <= loc_eye_mid;
              fifo_wen  <= '1';
              fsm_align <= s_WRITE_END;
  
  
            --
            when s_WRITE_END =>
              fifo_din  <= loc_eye_end;
              fifo_wen  <= '1';
              fsm_align <= s_WRITE_WORD;
  
  
            --
            when s_WRITE_WORD =>
              fifo_din  <= loc_word;
              fifo_wen  <= '1';
              fsm_align <= s_WRITE_OK;
  
  
            --
            when s_WRITE_OK =>
              fifo_din  <= "000000" & loc_nok & loc_ok;
              fifo_wen  <= '1';
              fsm_align <= s_FINISH;
  
  
            --
            when s_FINISH =>
              fsm_align   <= s_IDLE;
              align_done  <= '1';
  
          end case;
        end if;
      end if;
    end process;
  
end architecture rtl;
