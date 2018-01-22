--------------------------------------------------------------------------------
-- Part of MV1 Test System Controller
--
-- Function: Top level
--
-- Bart Ceulemans
-- CMOSIS nv
--------------------------------------------------------------------------------
--TODO
--Poprawi� rst_n, zeby byl aktywny poziomem niskim
--------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library unisim;
    use unisim.vcomponents.all;

entity tsc_mv1_top is
  port (
    -- EXTERNAL CONTROL
	rst_n               : in std_logic;
--	clk_100m			: in std_logic;
    clk_200m_p           : in std_logic;
    clk_200m_n           : in std_logic;
--	clk_400m			: in std_logic;
--	clk_idelay			: in std_logic;
--	clk_locked			: in std_logic;
--	clk_rst				: out std_logic;
	cmd_grab_frame		: in std_logic;
--	clk_ser 			: in std_logic;
--	clk_ser_locked		: in std_logic;
    prev_en : in std_logic;
	
    -- SENSOR CLOCK AND RESET
    sen_clk_in        : out std_logic;
    sen_reset_n       : out std_logic;

    -- CONTROL OUTPUTS TO SENSOR
    frame_req         : out std_logic;

    -- LVDS DATA TO/FROM SENSOR
    data_rx_p         : in unsigned (15 downto 0);
    data_rx_n         : in unsigned (15 downto 0);

    ctrl_rx_p         : in std_logic;
    ctrl_rx_n         : in std_logic;
    
    clk_rx_p          : in std_logic;
    clk_rx_n          : in std_logic;

    clk_byp_p         : out std_logic;
    clk_byp_n         : out std_logic;
    
    -- DESERIALIZED OUTPUT
    data00   : out unsigned (11 downto 0);
    data01   : out unsigned (11 downto 0);
    data02   : out unsigned (11 downto 0);
    data03   : out unsigned (11 downto 0);
    data04   : out unsigned (11 downto 0);
    data05   : out unsigned (11 downto 0);
    data06   : out unsigned (11 downto 0);
    data07   : out unsigned (11 downto 0);
    data08   : out unsigned (11 downto 0);
    data09   : out unsigned (11 downto 0);
    data10   : out unsigned (11 downto 0);
    data11   : out unsigned (11 downto 0);
    data12   : out unsigned (11 downto 0);
    data13   : out unsigned (11 downto 0);
    data14   : out unsigned (11 downto 0);
    data15   : out unsigned (11 downto 0);
    
    ctrl_par : out unsigned (11 downto 0);
    
    pix_clk             : out std_logic;
    data_valid          : out std_logic;
    
    --DEBUG
	training_active     : out std_logic;
	monitor_locked      : out std_logic;
	monitor_clk_rx      : out std_logic;
    rst_sys_dbg 		: out std_logic;
    state_no 			: out std_logic_vector(3 downto 0)
    );
end entity tsc_mv1_top;


architecture rtl of tsc_mv1_top is

  ------------------------------------------------------------------------------
  -- TOP-LEVEL SIGNALS

  -- CLOCKS/RESETS
  --zegar ddr - 200MHz
  signal clk_rx_h                 : std_logic;
  signal rst_rx_h                 : std_logic;

  signal n_clk_sys                : std_logic;
  signal clk_sys                  : std_logic;
  signal rst_sys                  : std_logic;
  
--  signal clk_par					: std_logic;
--  signal rst_par					: std_logic;

  signal clk_idelay               : std_logic;
  signal rst_idelay               : std_logic;

  -- FIFO FOR REGISTER READBACK
  signal  fifo_wen                : std_logic := '0';
  signal  fifo_din                : unsigned ( 7 downto 0 ) := (others => '0');

  -- REGISTERS
  signal  reg_read_training       : std_logic := '0';
  signal  reg_10bit               : std_logic := '1';

  -- COMMANDS FROM CONTROL BLOCK TO OTHER BLOCKS
  signal  cmd_start_training      : std_logic := '0';
  signal  training_done           : std_logic := '0';

  -- MONITOR SIGNALS
  --signal  monitor_locked          : std_logic;
  --signal  monitor_clk_rx          : std_logic;              -- From sensor
  --signal  monitor_sertc           : std_logic := '0';
  --signal  monitor_fval            : std_logic := '0';
  
  signal ctrl_par_sig                 : unsigned(11 downto 0);

  ------------------------------------------------------------------------------
  -- COMPONENT tsc_mv1_clocking
  component tsc_mv1_clocking is
  port (
    -- CLOCK/RESET INPUTS
    rst_n                : in  std_logic;
 --   clk_100m			 : in std_logic;
    clk_200m_p           : in std_logic;
    clk_200m_n           : in std_logic;   
        -- EXTERNAL CLOCK
      clk_rx_p           : in std_logic;
      clk_rx_n           : in std_logic;

    -- REGISTERS
    reg_10bit            : in std_logic;

    -- MONITOR OUTPUTS
    monitor_locked       : out std_logic;
    monitor_clk_rx       : out std_logic;

    -- CLOCK/RESET OUTPUTS
    out_clk_rx_h        : out std_logic;
    out_rst_rx_h        : out std_logic;

    out_clk_sys         : out std_logic;
    out_n_clk_sys       : out std_logic;
    out_rst_sys         : out std_logic;

    out_clk_idelay      : out std_logic;
    out_rst_idelay      : out std_logic;

    out_clk_byp_p       : out std_logic;
    out_clk_byp_n       : out std_logic
    );
  end component tsc_mv1_clocking;


  ------------------------------------------------------------------------------
  -- COMPONENT tsc_mv1_datapath
  component tsc_mv1_datapath is
  port (
    -- CLOCK & RESET
    clk_rx_h            : in std_logic;

    rst_sys             : in  std_logic;
    clk_sys             : in  std_logic;

    rst_idelay          : in std_logic;
    clk_idelay          : in std_logic;

    -- SETTINGS
    reg_read_training   : in  std_logic;
    reg_10bit           : in  std_logic;

    -- COMMANDS
    cmd_start_training  : in  std_logic;

    -- STATUS
    training_done       : out std_logic;
    training_active     : out std_logic;

    -- REGISTER OUTPUTS
    fifo_wen            : out std_logic;
    fifo_din            : out unsigned (7 downto 0);

    -- LVDS INPUTS FROM SENSOR
    data_rx_p           : in  unsigned (15 downto 0);
    data_rx_n           : in  unsigned (15 downto 0);

    ctrl_rx_p           : in  std_logic;
    ctrl_rx_n           : in  std_logic;
    
    -- DESERIALIZED OUTPUT
    data00   : out unsigned (11 downto 0);
    data01   : out unsigned (11 downto 0);
    data02   : out unsigned (11 downto 0);
    data03   : out unsigned (11 downto 0);
    data04   : out unsigned (11 downto 0);
    data05   : out unsigned (11 downto 0);
    data06   : out unsigned (11 downto 0);
    data07   : out unsigned (11 downto 0);
    data08   : out unsigned (11 downto 0);
    data09   : out unsigned (11 downto 0);
    data10   : out unsigned (11 downto 0);
    data11   : out unsigned (11 downto 0);
    data12   : out unsigned (11 downto 0);
    data13   : out unsigned (11 downto 0);
    data14   : out unsigned (11 downto 0);
    data15   : out unsigned (11 downto 0);
	ctrl_par  : out unsigned (11 downto 0)
    );
  end component;


  ------------------------------------------------------------------------------
  -- COMPONENT tsc_mv1_control
  component tsc_mv1_control is
  port (
    -- CLOCK/RESET
    rst_sys             : in  std_logic;
    clk_sys             : in  std_logic;
    n_clk_sys           : in  std_logic;

    -- CONTROL INPUTS

    -- INPUTS
    cmd_grab_frame		:	in	std_logic;
    training_done       : in  std_logic;
    fval                : in std_logic;
    prev_en             : in std_logic;

    -- OUTPUTS (CONTROLLER INTERNAL)
    cmd_start_training  : out std_logic;

    -- OUTPUTS (TO SENSOR)
    sen_reset_n         : out std_logic;
    frame_req           : out std_logic;
    data_valid          : out std_logic;
        -- DEBUG
    state_no            : out std_logic_vector(3 downto 0)
    );
  end component;

begin
  rst_sys_dbg <= rst_sys;
  sen_clk_in  <= n_clk_sys;--not clk_sys;
  pix_clk <=  clk_sys;--not clk_sys;--clk_par;
  ctrl_par <= ctrl_par_sig;

  ------------------------------------------------------------------------------
  -- INSTANCE tsc_mv1_clocking
  inst_clocking: tsc_mv1_clocking
  port map (
    rst_n               => rst_n,
--    clk_100m			=> clk_100m,
    clk_200m_p          => clk_200m_p,
    clk_200m_n          => clk_200m_n,
    clk_rx_p            => clk_rx_p,
    clk_rx_n            => clk_rx_n,
    reg_10bit           => reg_10bit,
    monitor_locked      => monitor_locked,
    monitor_clk_rx      => monitor_clk_rx,
    out_clk_rx_h        => clk_rx_h,
    out_rst_rx_h        => rst_rx_h,
    out_clk_sys         => clk_sys,
    out_n_clk_sys       => n_clk_sys,
    out_rst_sys         => rst_sys,
    out_clk_idelay      => clk_idelay,
    out_rst_idelay      => rst_idelay,
    out_clk_byp_p       => clk_byp_p,
    out_clk_byp_n       => clk_byp_n
    );


  ------------------------------------------------------------------------------
  -- INSTANCE tsc_mv1_datapath
  inst_datapath: tsc_mv1_datapath
  port map (
    clk_rx_h            => clk_rx_h,--clk_ser,
    rst_sys             => rst_sys,--rst_par,
    clk_sys             => clk_sys,--clk_par,
    rst_idelay          => rst_idelay,
    clk_idelay          => clk_idelay,

    reg_read_training   => reg_read_training,
    reg_10bit           => reg_10bit,

    cmd_start_training  => cmd_start_training  ,

    training_done       => training_done       ,
    training_active     => training_active,

    fifo_wen            => fifo_wen            ,
    fifo_din            => fifo_din            ,

    data_rx_p           => data_rx_p           ,
    data_rx_n           => data_rx_n           ,
    ctrl_rx_p           => ctrl_rx_p           ,
    ctrl_rx_n           => ctrl_rx_n           ,
    data00              => data00,
    data01              => data01,
    data02              => data02,
    data03              => data03,
    data04              => data04,
    data05              => data05,
    data06              => data06,
    data07              => data07,
    data08              => data08,
    data09              => data09,
    data10              => data10,
    data11              => data11,
    data12              => data12,
    data13              => data13,
    data14              => data14,
    data15              => data15,
	ctrl_par			=> ctrl_par_sig
    );

  ------------------------------------------------------------------------------
  -- INSTANCE tsc_mv1_control
  inst_control: tsc_mv1_control
  port map (
    rst_sys             => rst_sys,
    clk_sys             => clk_sys,
    n_clk_sys           => n_clk_sys,
    training_done       => training_done,
    fval                => ctrl_par_sig(2),
    prev_en             => prev_en,
	cmd_grab_frame		=> cmd_grab_frame,
    cmd_start_training  => cmd_start_training,
    sen_reset_n         => sen_reset_n,
    frame_req           => frame_req,
    data_valid          => data_valid,
    state_no            => state_no
    );

end architecture rtl;
