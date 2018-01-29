--------------------------------------------------------------------------------
-- Part of MV1 Test System Controller
--
-- Function: Generates all clocks
--
-- Bart Ceulemans
-- CMOSIS nv
--------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library unisim;
    use unisim.vcomponents.all;

entity tsc_mv1_clocking is
  port (
    -- CLOCK/RESET INPUTS
    rst_n               : in  std_logic;
	clk_100m			: in std_logic;
	
    -- EXTERNAL CLOCK
   clk_rx_p            : in std_logic;
   clk_rx_n            : in std_logic;

    -- REGISTERS
    reg_10bit           : in std_logic;

    -- MONITOR OUTPUTS
    monitor_locked      : out std_logic;
    monitor_clk_rx      : out std_logic;

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
end entity tsc_mv1_clocking;

architecture rtl of tsc_mv1_clocking is

  signal rst_200m                 : std_logic := '1';
  signal rst_200m_pipe            : unsigned (5 downto 0) := (others => '1');

  -- CLOCK DIVISION
  signal cnt_div                  : unsigned (2 downto 0) := (others => '0');

  --signal clk_sys_unbuf            : std_logic := '0';
  signal n_clk_sys                  : std_logic;
  signal clk_sys                  : std_logic := '0';
  signal rst_sys                  : std_logic := '1'; --active high
  signal rst_sys_pipe             : unsigned (5 downto 0) := (others => '1');
  
  signal clk_locked                 : std_logic := '0';
  signal clk_200m                   : std_logic := '0';
  signal clk_400m                   : std_logic := '0';
  signal clk_idelay                 : std_logic := '0';
  signal rst_idelay                 : std_logic;
  signal pll_rst                   : std_logic := '1';
  
  signal clk_rx                     : std_logic;
--  signal clk_rx_90                  : std_logic;
  signal clk_rx_unbuf               : std_logic;
  signal pll0_locked                : std_logic;
--  signal pll1_locked                : std_logic;
  
  component clk_wiz_v3_6_0
  port
   (-- Clock in ports
    CLK_IN1           : in     std_logic;
    -- Clock out ports
    CLK_OUT1          : out    std_logic; -- 400Mhz
    CLK_OUT2          : out    std_logic; -- 200 MHz
    CLK_OUT3          : out    std_logic; -- 200 MHz idelay
    CLK_OUT4            : out std_logic; -- 40 MHz sys_clk
    CLK_OUT5            : out std_logic; -- 40 MHz n_clk_sys
    -- Status and control signals
    RESET             : in     std_logic;
    LOCKED            : out    std_logic
   );
  end component;
  
  --pll służący do przesuwania zegara wejściowego LVDS
--  component clk_wiz_v3_6_1
--  port
--   (-- Clock in ports
--    CLK_IN1           : in     std_logic;
--    -- Clock out ports
--    CLK_OUT1          : out    std_logic;
--    -- Status and control signals
--    RESET             : in     std_logic;
--    LOCKED            : out    std_logic
--   );
--  end component;

begin
  pll_rst <= rst_n;
  rst_idelay <= rst_200m;
  ------------------------------------------------------------------------------
  -- OUTPUTS
  out_clk_rx_h      <= clk_200m;--clk_rx_90;--FIXME clk_200m;
  out_rst_rx_h      <= rst_200m;

  out_n_clk_sys     <= n_clk_sys;
  out_clk_sys       <= clk_sys;
  out_rst_sys       <= rst_sys;

  out_clk_idelay    <= clk_idelay;
  out_rst_idelay    <= rst_idelay;
  
  monitor_clk_rx <= clk_rx;
  
      -- CLOCK RECEIVER
    inst_clk_ibufds: ibufds
    generic map (IOSTANDARD => "LVDS_25", DIFF_TERM => true )
    port map (i => clk_rx_p, ib => clk_rx_n, o => clk_rx_unbuf);
    
    -- BUFFERS
    inst_bufg_rx : bufg    port map (i => clk_rx_unbuf,  o => clk_rx );
  
  inst_obufds: obufds
  generic map (IOSTANDARD => "LVDS_25")
  port map (i => clk_400m, o => out_clk_byp_p, ob => out_clk_byp_n);

  clk_locked <= pll0_locked;
  monitor_locked    <= pll0_locked; --and pll1_locked;

  clk_gen0_inst : clk_wiz_v3_6_0
    port map
    (-- Clock in ports
        CLK_IN1 => clk_100m,
        -- Clock out ports
        CLK_OUT1 => clk_400m, --480 MHz
        CLK_OUT2 => clk_200m, --240 MHz
        CLK_OUT3 => clk_idelay, --200 MHz (zegar dla idelay)
        CLK_OUT4 => clk_sys, -- 40 MHz sys_clk
        CLK_OUT5 => n_clk_sys, -- 40 MHz n_clk_sys
        -- Status and control signals
        RESET  => pll_rst,
        LOCKED => pll0_locked
    );
    
--  clk_gen1_inst : clk_wiz_v3_6_1
--  port map
--   (-- Clock in ports
--    CLK_IN1 => clk_rx,
--    -- Clock out ports
--    CLK_OUT1 => clk_rx_90,
--    -- Status and control signals
--    RESET  => pll_rst,
--        LOCKED => pll1_locked);

  ------------------------------------------------------------------------------
  -- CLOCK DIVISION (200 MHz -> 40/33 MHz)
--  clk_div_proc: process (clk_200m)
--  begin
--    if rising_edge(clk_200m) then
--      if (rst_200m = '1') then

--        cnt_div         <= (others => '0');
--        clk_sys_unbuf   <= '0';

--      else
--        -- CLK_SYS
--        cnt_div <= cnt_div - 1;

--        if (cnt_div = 0) then
--          clk_sys_unbuf <= '1';

--          if (reg_10bit = '1') then
--            cnt_div <= "100";
--          else
--            cnt_div <= "101";
--          end if;
--        end if;

--        if (cnt_div = 3) then
--          clk_sys_unbuf <= '0';
--        end if;

--      end if;
--    end if;
--  end process;


--  -- BUFFERS
--  inst_bufg_sys : bufg    port map (i => clk_sys_unbuf,  o => clk_sys );


  -- RESET GENERATION
  rst_sys   <= rst_sys_pipe (0);

  rst_sys_proc: process (rst_200m, clk_sys)
  begin
    if (rst_200m = '1') then
      rst_sys_pipe  <= (others => '1');
    elsif rising_edge(clk_sys) then
      rst_sys_pipe  <= '0' & rst_sys_pipe(rst_sys_pipe'high downto 1);
    end if;
  end process;


  ------------------------------------------------------------------------------
 
  -- RESET GENERATION
  rst_200m  <= rst_200m_pipe(0);

  rst_200m_proc: process (rst_n, clk_locked, clk_200m)
  begin
    if (rst_n = '1' or clk_locked = '0') then
      rst_200m_pipe    <= (others => '1');
    elsif rising_edge(clk_200m) then
      rst_200m_pipe    <= '0' & rst_200m_pipe(rst_200m_pipe'high downto 1);
    end if;
  end process;
  

end architecture rtl;
