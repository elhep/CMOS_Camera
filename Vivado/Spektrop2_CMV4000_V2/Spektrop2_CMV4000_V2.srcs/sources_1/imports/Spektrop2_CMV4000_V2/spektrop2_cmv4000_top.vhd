-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jan 22 01:12:45 2018
-- Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode pin_planning -force -port_diff_buffers
--               C:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V2/spektrop2_cmv4000_top.vhd
-- Design      : ios
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- The following library declaration should be present if 
---- instantiating any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;


entity spektrop2_cmv4000_top is
  Port ( 

-- Processor board signals

    FPGA_BANK35_DIFF_P : in STD_LOGIC_VECTOR(15 downto 0);
    FPGA_BANK35_DIFF_N : in STD_LOGIC_VECTOR(15 downto 0);   
    FPGA_BANK13_IO : in STD_LOGIC_VECTOR ( 10 downto 0 );
    --Not used FPGA_BANK34_HSTL_IN_IO : in STD_LOGIC_VECTOR ( 25 downto 0 );
    --Not used FPGA_BANK34_HSTL_IO0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_MGT1_P : in STD_LOGIC;
    CLK_MGT1_N : in STD_LOGIC;
    CLK_MGT0_P : in STD_LOGIC;
    CLK_MGT0_N : in STD_LOGIC;
    COAXPRESS_UPLINK_I : in STD_LOGIC;
    SI5340_SDA : inout STD_LOGIC;
    SI5340_LOS_XAXBb : in STD_LOGIC;
    SI5340_nINTR : in STD_LOGIC;
    SI5340_LOL : in STD_LOGIC;
    SI5340_nRST : out STD_LOGIC;
    SI5340_SCL : out STD_LOGIC;
    LED0 : out STD_LOGIC;
    LED1 : out STD_LOGIC;
    MGT_RX0_P : in STD_LOGIC;
    MGT_RX0_N : in STD_LOGIC;
    MGT_TX0_P : out STD_LOGIC;
    MGT_TX0_N : out STD_LOGIC;
    MGT_TX1_P : out STD_LOGIC;
    MGT_TX1_N : out STD_LOGIC;
    MGT_TX2_P : out STD_LOGIC;
    MGT_TX2_N : out STD_LOGIC;
    RS485_RX : in STD_LOGIC;
    RS485_TX : out STD_LOGIC;
    GS12281_nCS : out STD_LOGIC;
    GS12281_SCLK : out STD_LOGIC;
    GS12281_SDIN : in STD_LOGIC;
    GS12281_SDOUT : out STD_LOGIC;
    GS12281_GPIO : inout STD_LOGIC_VECTOR ( 4 downto 1 );
    
-- CMV4000 signals   
    --main reset of the CMV4000 IP
    rst_n           : in std_logic;
    --sensor data
    data_in_p       : in unsigned (15 downto 0);
    data_in_n       : in unsigned (15 downto 0);
    --data clock
    clk_in_p        : in std_logic;
    clk_in_n        : in std_logic;
    --control signal
    cntrl_in_p      : in std_logic;
    cntrl_in_n      : in std_logic;
           
    --trigger
    frame_req       : out std_logic;
    --slow sensor clock
    sen_clk_in      : out std_logic;
    --sensor reset
    sen_reset_n     : out std_logic;
          
    --fast sensor clock 480 MHz
    CLK_LVDS_OUT_P  : out std_logic;
    CLK_LVDS_OUT_N  : out std_logic;
          
    cmd_grab_frame        : in std_logic;
          
    fvalid_led            : out std_logic;
    --control_led           : out std_logic;
    --monitor_locked_led    : out std_logic;
    --rst_sys_dbg_led       : out std_logic;
    --state_no_led          : out std_logic_vector(3 downto 0);
    
    
-- Zynq Processing System signals
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC
  );

end spektrop2_cmv4000_top;

architecture STRUCTURE of spektrop2_cmv4000_top is
  signal CLK_MGT1_IBUFDS_GTE2_O : STD_LOGIC;
  signal CLK_MGT0_IBUFDS_GTE2_O : STD_LOGIC;
  signal MGT_RX0_IBUFDS_GTE2_O : STD_LOGIC;
  signal MGT_TX0_OBUFDS_I : STD_LOGIC;
  signal MGT_TX1_OBUFDS_I : STD_LOGIC;
  signal MGT_TX2_OBUFDS_I : STD_LOGIC;
  
  
  component tsc_ms1_top is
  port {
          -- EXTERNAL CONTROL
      rst_n               : in std_logic;
      clk_100m            : in std_logic;
    --    clk_400m            : in std_logic;
    --    clk_idelay            : in std_logic;
    --    clk_locked            : in std_logic;
    --    clk_rst                : out std_logic;
      cmd_grab_frame        : in std_logic;
    --    clk_ser             : in std_logic;
    --    clk_ser_locked        : in std_logic;
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
      rst_sys_dbg         : out std_logic;
      state_no             : out std_logic_vector(3 downto 0)
  };
  
  component proc_sys is
  port {
      FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
      FIXED_IO_ps_clk : inout STD_LOGIC;
      FIXED_IO_ps_porb : inout STD_LOGIC;
      FIXED_IO_ps_srstb : inout STD_LOGIC
  
  };
  
begin



  CLK_MGT1_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
    port map (
      I => CLK_MGT1_P,
      IB => CLK_MGT1_N,
      O => CLK_MGT1_IBUFDS_GTE2_O
    );

  CLK_MGT0_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
    port map (
      I => CLK_MGT0_P,
      IB => CLK_MGT0_N,
      O => CLK_MGT0_IBUFDS_GTE2_O
    );

  MGT_RX0_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
    port map (
      I => MGT_RX0_P,
      IB => MGT_RX0_N,
      O => MGT_RX0_IBUFDS_GTE2_O
    );

  MGT_TX0_OBUFDS: unisim.vcomponents.OBUFDS
    port map (
      O => MGT_TX0_P,
      OB => MGT_TX0_N,
      I => MGT_TX0_OBUFDS_I
    );

  MGT_TX1_OBUFDS: unisim.vcomponents.OBUFDS
    port map (
      O => MGT_TX1_P,
      OB => MGT_TX1_N,
      I => MGT_TX1_OBUFDS_I
    );

  MGT_TX2_OBUFDS: unisim.vcomponents.OBUFDS
    port map (
      O => MGT_TX2_P,
      OB => MGT_TX2_N,
      I => MGT_TX2_OBUFDS_I
    );


end STRUCTURE;
