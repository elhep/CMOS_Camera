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


entity ios is
  Port ( 
    FPGA_BANK13_IO : in STD_LOGIC_VECTOR ( 10 downto 0 );
    FPGA_BANK34_HSTL_IN_IO : in STD_LOGIC_VECTOR ( 25 downto 0 );
    FPGA_BANK34_HSTL_IO0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GS12281_GPIO : inout STD_LOGIC_VECTOR ( 4 downto 1 );
    CLK_MGT1_N : in STD_LOGIC;
    CLK_MGT1 : in STD_LOGIC;
    CLK_MGT0 : in STD_LOGIC;
    CLK_MGT0_N : in STD_LOGIC;
    COAXPRESS_UPLINK_I : in STD_LOGIC;
    SI5340_SDA : inout STD_LOGIC;
    LED0 : out STD_LOGIC;
    LED1 : out STD_LOGIC;
    MGT_RX0 : in STD_LOGIC;
    MGT_RX0_N : in STD_LOGIC;
    MGT_TX0 : out STD_LOGIC;
    MGT_TX0_N : out STD_LOGIC;
    MGT_TX1 : out STD_LOGIC;
    MGT_TX1_N : out STD_LOGIC;
    MGT_TX2 : out STD_LOGIC;
    MGT_TX2_N : out STD_LOGIC;
    RS485_RX : in STD_LOGIC;
    RS485_TX : out STD_LOGIC;
    SI5340_LOS_XAXBb : in STD_LOGIC;
    SI5340_nINTR : in STD_LOGIC;
    SI5340_LOL : in STD_LOGIC;
    SI5340_nRST : out STD_LOGIC;
    SI5340_SCL : out STD_LOGIC;
    GS12281_nCS : out STD_LOGIC;
    GS12281_SCLK : out STD_LOGIC;
    GS12281_SDIN : in STD_LOGIC;
    GS12281_SDOUT : out STD_LOGIC
  );

end ios;

architecture STRUCTURE of ios is
  signal CLK_MGT1_IBUFDS_GTE2_O : STD_LOGIC;
  signal CLK_MGT0_IBUFDS_GTE2_O : STD_LOGIC;
  signal MGT_RX0_IBUFDS_GTE2_O : STD_LOGIC;
  signal MGT_TX0_OBUFDS_I : STD_LOGIC;
  signal MGT_TX1_OBUFDS_I : STD_LOGIC;
  signal MGT_TX2_OBUFDS_I : STD_LOGIC;
begin
  CLK_MGT1_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
    port map (
      I => CLK_MGT1,
      IB => CLK_MGT1_N,
      O => CLK_MGT1_IBUFDS_GTE2_O
    );

  CLK_MGT0_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
    port map (
      I => CLK_MGT0,
      IB => CLK_MGT0_N,
      O => CLK_MGT0_IBUFDS_GTE2_O
    );

  MGT_RX0_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
    port map (
      I => MGT_RX0,
      IB => MGT_RX0_N,
      O => MGT_RX0_IBUFDS_GTE2_O
    );

  MGT_TX0_OBUFDS: unisim.vcomponents.OBUFDS
    port map (
      O => MGT_TX0,
      OB => MGT_TX0_N,
      I => MGT_TX0_OBUFDS_I
    );

  MGT_TX1_OBUFDS: unisim.vcomponents.OBUFDS
    port map (
      O => MGT_TX1,
      OB => MGT_TX1_N,
      I => MGT_TX1_OBUFDS_I
    );

  MGT_TX2_OBUFDS: unisim.vcomponents.OBUFDS
    port map (
      O => MGT_TX2,
      OB => MGT_TX2_N,
      I => MGT_TX2_OBUFDS_I
    );


end STRUCTURE;
