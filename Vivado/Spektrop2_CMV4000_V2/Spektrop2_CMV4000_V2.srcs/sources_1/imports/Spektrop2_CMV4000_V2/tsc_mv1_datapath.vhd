--------------------------------------------------------------------------------
-- Part of MV1 Test System Controller
--
-- Function: Data path between LVDS from sensor and LVDS towards camera link
--
-- Bart Ceulemans
-- CMOSIS nv
--------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;


entity tsc_mv1_datapath is
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
    training_active       : out std_logic;

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
end entity tsc_mv1_datapath;

architecture rtl of tsc_mv1_datapath is

  -- CONSTANTS
  --constant c_RX_DATA_INV_MASK : unsigned (15 downto 0):= "1001000000000101"; tak bylo oryginalnie
  constant c_RX_DATA_INV_MASK : unsigned (15 downto 0):= "1111111111111111";
  constant c_RX_CTRL_INV_MASK : std_logic             := '1';

  -- DATA FROM RECEIVER
  --signal  ctrl_par      : unsigned (11 downto 0) := (others => '0');

  ------------------------------------------------------------------------------
  -- COMPONENT tsc_mv1_rx
  component tsc_mv1_rx is
  generic (
    g_NR_CHAN           : integer;
    g_DATA_INV_MASK     : unsigned;
    g_CTRL_INV_MASK     : std_logic
    );
  port (
    -- CLOCK & RESET
    clk_rx_h            : in std_logic;

    rst_sys             : in std_logic;
    clk_sys             : in std_logic;

    rst_idelay          : in std_logic;
    clk_idelay          : in std_logic;

    -- LVDS INPUTS
    data_rx_p           : in unsigned (g_NR_CHAN-1 downto 0);
    data_rx_n           : in unsigned (g_NR_CHAN-1 downto 0);

    ctrl_rx_p           : in std_logic;
    ctrl_rx_n           : in std_logic;

    -- COMMANDS
    reg_read_training   : in std_logic;
    cmd_start_training  : in std_logic;

    -- TRAINING STATUS
    training_done       : out std_logic;
    training_active       : out std_logic;

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
  end component;


  ------------------------------------------------------------------------------

begin
  ------------------------------------------------------------------------------
  -- INSTANTIATE THE RECEIVER (DATA FROM SENSOR)
  inst_rx: tsc_mv1_rx
  generic map (
    g_NR_CHAN           => 16,
    g_DATA_INV_MASK     => c_RX_DATA_INV_MASK,
    g_CTRL_INV_MASK     => c_RX_CTRL_INV_MASK
    )
  port map (
    clk_rx_h            => clk_rx_h,
    rst_sys             => rst_sys,
    clk_sys             => clk_sys,
    rst_idelay          => rst_idelay,
    clk_idelay          => clk_idelay,
    data_rx_p           => data_rx_p,
    data_rx_n           => data_rx_n,
    ctrl_rx_p           => ctrl_rx_p,
    ctrl_rx_n           => ctrl_rx_n,
    reg_10bit           => reg_10bit,
    reg_read_training   => reg_read_training,
    cmd_start_training  => cmd_start_training,
    training_done       => training_done,
    training_active     => training_active,
    fifo_din            => fifo_din,
    fifo_wen            => fifo_wen,
    data_par_00         => data00,
    data_par_01         => data01,
    data_par_02         => data02,
    data_par_03         => data03,
    data_par_04         => data04,
    data_par_05         => data05,
    data_par_06         => data06,
    data_par_07         => data07,
    data_par_08         => data08,
    data_par_09         => data09,
    data_par_10         => data10,
    data_par_11         => data11,
    data_par_12         => data12,
    data_par_13         => data13,
    data_par_14         => data14,
    data_par_15         => data15,
    ctrl_par            => ctrl_par
    );

end architecture rtl;
