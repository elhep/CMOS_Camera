-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Mar  6 00:02:15 2018
-- Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V3/Spektrop2_CMV4000_V2.srcs/sources_1/bd/system/ip/system_aurora_8b10b_0_0/system_aurora_8b10b_0_0_stub.vhdl
-- Design      : system_aurora_8b10b_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_aurora_8b10b_0_0 is
  Port ( 
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tlast : in STD_LOGIC;
    txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_refclk1 : in STD_LOGIC;
    tx_hard_err : out STD_LOGIC;
    tx_lane_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_channel_up : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    tx_system_reset : in STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt_reset : in STD_LOGIC;
    tx_lock : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    pll_not_locked : in STD_LOGIC
  );

end system_aurora_8b10b_0_0;

architecture stub of system_aurora_8b10b_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_tx_tdata[0:31],s_axi_tx_tvalid,s_axi_tx_tready,s_axi_tx_tkeep[0:3],s_axi_tx_tlast,txp[0:0],txn[0:0],gt_refclk1,tx_hard_err,tx_lane_up[0:0],tx_channel_up,user_clk,sync_clk,tx_system_reset,power_down,loopback[2:0],gt_reset,tx_lock,sys_reset_out,init_clk_in,tx_resetdone_out,drpclk_in,gt_common_reset_out,gt0_pll0refclklost_in,quad1_common_lock_in,GT0_PLL0OUTCLK_IN,GT0_PLL1OUTCLK_IN,GT0_PLL0OUTREFCLK_IN,GT0_PLL1OUTREFCLK_IN,tx_out_clk,pll_not_locked";
begin
end;
