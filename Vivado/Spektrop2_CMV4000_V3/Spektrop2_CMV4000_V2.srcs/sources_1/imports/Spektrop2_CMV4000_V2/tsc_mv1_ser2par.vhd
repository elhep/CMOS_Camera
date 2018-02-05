--------------------------------------------------------------------------------
--  PRODUCT:        MV1 test system
--
--  FUNCTION:       Deserialises LVDS data inputs (of programmable length)
--
--  INFO:           The IDELAY primitive in the ser2par block need the
--                  IDELAYCTRL primitive.  Instantiate that block at a higher
--                  level.
--
--
--  Bart Ceulemans
--  CMOSIS nv
--------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library unisim;
    use unisim.vcomponents.all;


--------------------------------------------------------------------------------
entity tsc_mv1_ser2par is
  port (
    data_ser_p              : in  std_logic;
    data_ser_n              : in  std_logic;

    clk_par                 : in  std_logic;
    clk_ser                 : in  std_logic;

    rst                     : in  std_logic;
    -- delay enable
    dlyce                   : in  std_logic;
    -- delay reset
    dlyrst                  : in  std_logic;
    bitslip                 : in  std_logic;

    reg_10bit               : in  std_logic;
    reg_invert              : in  std_logic;

    data_par                : out unsigned (11 downto 0)
    );
end entity tsc_mv1_ser2par;


--------------------------------------------------------------------------------
architecture rtl of tsc_mv1_ser2par is

  signal rst_sync           : std_logic := '1';

  signal data_ser           : std_logic;
  signal data_ser_del       : std_logic;

  signal bitslip_q          : std_logic := '0';
  signal bitslip_qq         : std_logic := '0';
  signal bitslip_req        : std_logic := '0';
  signal bitslip_even       : std_logic := '0';

  signal iddr_q1            : std_logic;
  signal iddr_q2            : std_logic;

  signal data_1             : std_logic;
  signal data_2             : std_logic;
  signal data_2_q           : std_logic;

  signal load_parallel      : std_logic := '0';
  signal shift_timer        : unsigned ( 4 downto 0):= (others => '1');
  signal shift_data         : unsigned (11 downto 0):= (others => '0');

begin

  -------------------------------------
  -- LVDS RECEIVER: IBUFDS PRIMITIVE --
  -------------------------------------
  inst_ibufds: ibufds
  generic map (
    IOSTANDARD              => "LVDS_25",
    DIFF_TERM               => true
    )
  port map (
    i                       => data_ser_p,
    ib                      => data_ser_n,
    o                       => data_ser
    );


  ------------------------------------
  -- 32-TAP DELAY: IDELAY PRIMITIVE --
  ------------------------------------
   inst_idelay: idelay
   generic map (
     IOBDELAY_TYPE           => "VARIABLE",
     IOBDELAY_VALUE          => 0
     )
   port map (
     i                       => data_ser,
     o                       => data_ser_del,
     inc                     => '1',
     rst                     => dlyrst,
     ce                      => dlyce,
     c                       => clk_par
     );

  -----------------------------------------
  -- DDR INPUT FLIPFLOPS: IDDR PRIMITIVE --
  -----------------------------------------
  inst_iddr: iddr
  generic map (
    DDR_CLK_EDGE            => "SAME_EDGE_PIPELINED",
    INIT_Q1                 => '0',
    INIT_Q2                 => '0',
    SRTYPE                  => "SYNC"
    )
  port map (
    d         => data_ser_del,--FIXME data_ser_del
    q1        => iddr_q1,
    q2        => iddr_q2,
    c         => clk_ser,
--    sr		  => '0',
	r         => '0',
    s         => '0',
    ce        => '1'
    );


  ----------------
  -- CONTROLLER --
  ----------------
  control_proc: process (clk_ser)
  begin
    if rising_edge(clk_ser) then
      rst_sync  <= rst;

      if (rst_sync = '1') then

        bitslip_q         <= '0';
        bitslip_qq        <= '0';
        bitslip_req       <= '0';
        bitslip_even      <= '0';

        load_parallel     <= '0';

        data_1            <= '0';
        data_2            <= '0';
        data_2_q          <= '0';

        shift_timer       <= (others => '1');
        shift_data        <= (others => '0');
        data_par          <= (others => '0');


      else

        ------------------------------------------------------------------------
        -- RISING EDGE DETECTOR ON BITSLIP
        bitslip_q         <= bitslip;
        bitslip_qq        <= bitslip_q;


        ------------------------------------------------------------------------
        -- ASSERT BITSLIP REQUEST
        -- The receiver sampled 2 bits per clock period. At the rising edge of
        -- clk_ser, these two bits are shifted into the shift_data shift reg.
        -- The actual bitslip shifts 2 bits at once (one clk_ser cycle slipped).
        -- Therefore, every other bitslip_request, the bitslip will not be
        -- executed. Instead bits 12 downto 1 instead of 11 downto 0 will be
        -- assigned to the parallel output.
        if (bitslip_q = '1' and bitslip_qq = '0') then
          if (bitslip_even = '0') then
            bitslip_even  <= '1';
            bitslip_req   <= '1';
          else
            bitslip_even  <= '0';
          end if;
        end if;


        ------------------------------------------------------------------------
        -- TIMER
        -- The timer will count the required number of clocks to receive one
        -- data word. At the end of a timer period, the data is copied from the
        -- shift register to the parallel data output.
        -- When a bitslip request is high, the timer will count one clock less
        -- in a timer period. This means that the word sampling window will move
        -- by 2 bits.
        load_parallel <= '0';
        shift_timer   <= '0' & shift_timer(shift_timer'high downto 1);


        if (reg_10bit = '1') then

          if (shift_timer (2 downto 0) = "001") then
            shift_timer   <= (others => '1');
            load_parallel <= '1';
          elsif (shift_timer (2 downto 0) = "011") then
            if (bitslip_req = '1') then
              shift_timer   <= (others => '1');
              bitslip_req   <= '0';
            end if;
          end if;

        else

          if (shift_timer (2 downto 0) = "000") then
            shift_timer   <= (others => '1');
            load_parallel <= '1';
          elsif (shift_timer (2 downto 0) = "001") then
            if (bitslip_req = '1') then
              shift_timer   <= (others => '1');
              bitslip_req   <= '0';
            end if;
          end if;

        end if;


        -- Safety measure to prevent lock-up situations
        if (shift_timer (2 downto 0) = "000") then
          shift_timer   <= (others => '1');
          load_parallel <= '1';
        end if;


        ------------------------------------------------------------------------
        -- SHIFT IN DATA
        data_1      <= iddr_q1 xor reg_invert;
        data_2      <= iddr_q2 xor reg_invert;
        data_2_q    <= data_2;


        if (bitslip_even = '1') then
          shift_data      <=  data_2     &
                              data_1     &
                              shift_data(shift_data'high downto 2);
        else
          shift_data      <=  data_1     &
                              data_2_q   &
                              shift_data(shift_data'high downto 2);
        end if;


        ------------------------------------------------------------------------
        -- COPY SHIFT REGISTER TO PARALLEL DATA OUTPUT
        if (load_parallel = '1') then
          if (reg_10bit = '1') then
            data_par  <= "00" & shift_data (11 downto 2);
          else
            data_par  <= shift_data;
          end if;
        end if;

      end if;
    end if;
  end process;


end rtl;
