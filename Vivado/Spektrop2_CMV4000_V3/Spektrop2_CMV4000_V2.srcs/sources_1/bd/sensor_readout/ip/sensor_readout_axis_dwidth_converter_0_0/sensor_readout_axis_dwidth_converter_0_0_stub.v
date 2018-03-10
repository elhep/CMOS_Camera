// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar  7 07:40:50 2018
// Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V3/Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ip/sensor_readout_axis_dwidth_converter_0_0/sensor_readout_axis_dwidth_converter_0_0_stub.v
// Design      : sensor_readout_axis_dwidth_converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_dwidth_converter_v1_1_14_axis_dwidth_converter,Vivado 2017.4" *)
module sensor_readout_axis_dwidth_converter_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[127:0],s_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tlast" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
endmodule
