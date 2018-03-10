// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar  6 00:02:15 2018
// Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V3/Spektrop2_CMV4000_V2.srcs/sources_1/bd/system/ip/system_aurora_8b10b_0_0/system_aurora_8b10b_0_0_stub.v
// Design      : system_aurora_8b10b_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_aurora_8b10b_0_0(s_axi_tx_tdata, s_axi_tx_tvalid, 
  s_axi_tx_tready, s_axi_tx_tkeep, s_axi_tx_tlast, txp, txn, gt_refclk1, tx_hard_err, tx_lane_up, 
  tx_channel_up, user_clk, sync_clk, tx_system_reset, power_down, loopback, gt_reset, tx_lock, 
  sys_reset_out, init_clk_in, tx_resetdone_out, drpclk_in, gt_common_reset_out, 
  gt0_pll0refclklost_in, quad1_common_lock_in, GT0_PLL0OUTCLK_IN, GT0_PLL1OUTCLK_IN, 
  GT0_PLL0OUTREFCLK_IN, GT0_PLL1OUTREFCLK_IN, tx_out_clk, pll_not_locked)
/* synthesis syn_black_box black_box_pad_pin="s_axi_tx_tdata[0:31],s_axi_tx_tvalid,s_axi_tx_tready,s_axi_tx_tkeep[0:3],s_axi_tx_tlast,txp[0:0],txn[0:0],gt_refclk1,tx_hard_err,tx_lane_up[0:0],tx_channel_up,user_clk,sync_clk,tx_system_reset,power_down,loopback[2:0],gt_reset,tx_lock,sys_reset_out,init_clk_in,tx_resetdone_out,drpclk_in,gt_common_reset_out,gt0_pll0refclklost_in,quad1_common_lock_in,GT0_PLL0OUTCLK_IN,GT0_PLL1OUTCLK_IN,GT0_PLL0OUTREFCLK_IN,GT0_PLL1OUTREFCLK_IN,tx_out_clk,pll_not_locked" */;
  input [0:31]s_axi_tx_tdata;
  input s_axi_tx_tvalid;
  output s_axi_tx_tready;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tlast;
  output [0:0]txp;
  output [0:0]txn;
  input gt_refclk1;
  output tx_hard_err;
  output [0:0]tx_lane_up;
  output tx_channel_up;
  input user_clk;
  input sync_clk;
  input tx_system_reset;
  input power_down;
  input [2:0]loopback;
  input gt_reset;
  output tx_lock;
  output sys_reset_out;
  input init_clk_in;
  output tx_resetdone_out;
  input drpclk_in;
  output gt_common_reset_out;
  input gt0_pll0refclklost_in;
  input quad1_common_lock_in;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  output tx_out_clk;
  input pll_not_locked;
endmodule
