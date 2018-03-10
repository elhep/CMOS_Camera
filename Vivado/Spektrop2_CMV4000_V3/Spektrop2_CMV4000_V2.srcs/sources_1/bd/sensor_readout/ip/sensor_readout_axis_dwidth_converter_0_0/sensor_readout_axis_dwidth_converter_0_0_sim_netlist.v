// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar  7 07:40:50 2018
// Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V3/Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ip/sensor_readout_axis_dwidth_converter_0_0/sensor_readout_axis_dwidth_converter_0_0_sim_netlist.v
// Design      : sensor_readout_axis_dwidth_converter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sensor_readout_axis_dwidth_converter_0_0,axis_dwidth_converter_v1_1_14_axis_dwidth_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_dwidth_converter_v1_1_14_axis_dwidth_converter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module sensor_readout_axis_dwidth_converter_0_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN sensor_readout_aclk_0, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN sensor_readout_aclk_0, LAYERED_METADATA undef" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN sensor_readout_aclk_0, LAYERED_METADATA undef" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000010011" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_M_AXIS_TDATA_WIDTH = "32" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_TDATA_WIDTH = "128" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
  (* P_D1_REG_CONFIG = "0" *) 
  (* P_D1_TUSER_WIDTH = "16" *) 
  (* P_D2_TDATA_WIDTH = "128" *) 
  (* P_D2_TUSER_WIDTH = "16" *) 
  (* P_D3_REG_CONFIG = "0" *) 
  (* P_D3_TUSER_WIDTH = "4" *) 
  (* P_M_RATIO = "4" *) 
  (* P_SS_TKEEP_REQUIRED = "8" *) 
  (* P_S_RATIO = "1" *) 
  sensor_readout_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axis_dwidth_converter inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000010011" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_FAMILY = "zynq" *) (* C_M_AXIS_TDATA_WIDTH = "32" *) (* C_M_AXIS_TUSER_WIDTH = "1" *) 
(* C_S_AXIS_TDATA_WIDTH = "128" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_14_axis_dwidth_converter" *) (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
(* P_D1_REG_CONFIG = "0" *) (* P_D1_TUSER_WIDTH = "16" *) (* P_D2_TDATA_WIDTH = "128" *) 
(* P_D2_TUSER_WIDTH = "16" *) (* P_D3_REG_CONFIG = "0" *) (* P_D3_TUSER_WIDTH = "4" *) 
(* P_M_RATIO = "4" *) (* P_SS_TKEEP_REQUIRED = "8" *) (* P_S_RATIO = "1" *) 
module sensor_readout_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axis_dwidth_converter
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire areset_r_i_1_n_0;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(areset_r_i_1_n_0));
  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_r_i_1_n_0),
        .Q(areset_r),
        .R(1'b0));
  sensor_readout_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axisc_downsizer \gen_downsizer_conversion.axisc_downsizer_0 
       (.aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_14_axisc_downsizer" *) 
module sensor_readout_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axisc_downsizer
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tdata,
    aclk,
    s_axis_tlast,
    aclken,
    m_axis_tready,
    areset_r,
    s_axis_tvalid,
    s_axis_tdata);
  output s_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
  output [31:0]m_axis_tdata;
  input aclk;
  input s_axis_tlast;
  input aclken;
  input m_axis_tready;
  input areset_r;
  input s_axis_tvalid;
  input [127:0]s_axis_tdata;

  wire aclk;
  wire aclken;
  wire areset_r;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]p_0_in;
  wire p_0_in_1;
  wire [127:0]r0_data;
  wire r0_data_2;
  wire r0_last_i_1_n_0;
  wire r0_last_reg_n_0;
  wire r0_out_sel_next_r;
  wire \r0_out_sel_next_r[0]_i_1_n_0 ;
  wire \r0_out_sel_next_r[1]_i_1_n_0 ;
  wire \r0_out_sel_next_r[1]_i_2_n_0 ;
  wire \r0_out_sel_next_r_reg_n_0_[0] ;
  wire \r0_out_sel_next_r_reg_n_0_[1] ;
  wire \r0_out_sel_r[0]_i_2_n_0 ;
  wire \r0_out_sel_r[1]_i_1_n_0 ;
  wire \r0_out_sel_r_reg_n_0_[0] ;
  wire \r0_out_sel_r_reg_n_0_[1] ;
  wire [31:0]r1_data;
  wire r1_data_0;
  wire r1_last_reg_n_0;
  wire [127:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(r1_data[0]),
        .I1(r0_data[32]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[64]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[0]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(r1_data[10]),
        .I1(r0_data[42]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[74]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[10]),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(r1_data[11]),
        .I1(r0_data[43]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[75]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[11]),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(r1_data[12]),
        .I1(r0_data[44]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[76]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[12]),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(r1_data[13]),
        .I1(r0_data[45]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[77]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[13]),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(r1_data[14]),
        .I1(r0_data[46]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[78]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[14]),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(r1_data[15]),
        .I1(r0_data[47]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[79]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[15]),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(r1_data[16]),
        .I1(r0_data[48]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[80]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[16]),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(r1_data[17]),
        .I1(r0_data[49]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[81]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[17]),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(r1_data[18]),
        .I1(r0_data[50]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[82]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[18]),
        .O(m_axis_tdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(r1_data[19]),
        .I1(r0_data[51]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[83]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[19]),
        .O(m_axis_tdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(r1_data[1]),
        .I1(r0_data[33]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[65]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[1]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(r1_data[20]),
        .I1(r0_data[52]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[84]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[20]),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(r1_data[21]),
        .I1(r0_data[53]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[85]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[21]),
        .O(m_axis_tdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(r1_data[22]),
        .I1(r0_data[54]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[86]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[22]),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(r1_data[23]),
        .I1(r0_data[55]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[87]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[23]),
        .O(m_axis_tdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(r1_data[24]),
        .I1(r0_data[56]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[88]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[24]),
        .O(m_axis_tdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(r1_data[25]),
        .I1(r0_data[57]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[89]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[25]),
        .O(m_axis_tdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(r1_data[26]),
        .I1(r0_data[58]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[90]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[26]),
        .O(m_axis_tdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(r1_data[27]),
        .I1(r0_data[59]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[91]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[27]),
        .O(m_axis_tdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(r1_data[28]),
        .I1(r0_data[60]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[92]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[28]),
        .O(m_axis_tdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(r1_data[29]),
        .I1(r0_data[61]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[93]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[29]),
        .O(m_axis_tdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(r1_data[2]),
        .I1(r0_data[34]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[66]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[2]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(r1_data[30]),
        .I1(r0_data[62]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[94]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[30]),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(r1_data[31]),
        .I1(r0_data[63]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[95]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[31]),
        .O(m_axis_tdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(r1_data[3]),
        .I1(r0_data[35]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[67]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[3]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(r1_data[4]),
        .I1(r0_data[36]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[68]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[4]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(r1_data[5]),
        .I1(r0_data[37]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[69]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[5]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(r1_data[6]),
        .I1(r0_data[38]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[70]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[6]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(r1_data[7]),
        .I1(r0_data[39]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[71]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[7]),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(r1_data[8]),
        .I1(r0_data[40]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[72]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[8]),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(r1_data[9]),
        .I1(r0_data[41]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_data[73]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_data[9]),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    m_axis_tlast_INST_0
       (.I0(s_axis_tready),
        .I1(\state_reg_n_0_[2] ),
        .I2(m_axis_tvalid),
        .I3(r1_last_reg_n_0),
        .O(m_axis_tlast));
  LUT3 #(
    .INIT(8'h08)) 
    \r0_data[127]_i_1 
       (.I0(aclken),
        .I1(s_axis_tready),
        .I2(\state_reg_n_0_[2] ),
        .O(r0_data_2));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[100] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[100]),
        .Q(r0_data[100]),
        .R(1'b0));
  FDRE \r0_data_reg[101] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[101]),
        .Q(r0_data[101]),
        .R(1'b0));
  FDRE \r0_data_reg[102] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[102]),
        .Q(r0_data[102]),
        .R(1'b0));
  FDRE \r0_data_reg[103] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[103]),
        .Q(r0_data[103]),
        .R(1'b0));
  FDRE \r0_data_reg[104] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[104]),
        .Q(r0_data[104]),
        .R(1'b0));
  FDRE \r0_data_reg[105] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[105]),
        .Q(r0_data[105]),
        .R(1'b0));
  FDRE \r0_data_reg[106] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[106]),
        .Q(r0_data[106]),
        .R(1'b0));
  FDRE \r0_data_reg[107] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[107]),
        .Q(r0_data[107]),
        .R(1'b0));
  FDRE \r0_data_reg[108] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[108]),
        .Q(r0_data[108]),
        .R(1'b0));
  FDRE \r0_data_reg[109] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[109]),
        .Q(r0_data[109]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[110] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[110]),
        .Q(r0_data[110]),
        .R(1'b0));
  FDRE \r0_data_reg[111] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[111]),
        .Q(r0_data[111]),
        .R(1'b0));
  FDRE \r0_data_reg[112] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[112]),
        .Q(r0_data[112]),
        .R(1'b0));
  FDRE \r0_data_reg[113] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[113]),
        .Q(r0_data[113]),
        .R(1'b0));
  FDRE \r0_data_reg[114] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[114]),
        .Q(r0_data[114]),
        .R(1'b0));
  FDRE \r0_data_reg[115] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[115]),
        .Q(r0_data[115]),
        .R(1'b0));
  FDRE \r0_data_reg[116] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[116]),
        .Q(r0_data[116]),
        .R(1'b0));
  FDRE \r0_data_reg[117] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[117]),
        .Q(r0_data[117]),
        .R(1'b0));
  FDRE \r0_data_reg[118] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[118]),
        .Q(r0_data[118]),
        .R(1'b0));
  FDRE \r0_data_reg[119] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[119]),
        .Q(r0_data[119]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[120] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[120]),
        .Q(r0_data[120]),
        .R(1'b0));
  FDRE \r0_data_reg[121] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[121]),
        .Q(r0_data[121]),
        .R(1'b0));
  FDRE \r0_data_reg[122] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[122]),
        .Q(r0_data[122]),
        .R(1'b0));
  FDRE \r0_data_reg[123] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[123]),
        .Q(r0_data[123]),
        .R(1'b0));
  FDRE \r0_data_reg[124] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[124]),
        .Q(r0_data[124]),
        .R(1'b0));
  FDRE \r0_data_reg[125] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[125]),
        .Q(r0_data[125]),
        .R(1'b0));
  FDRE \r0_data_reg[126] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[126]),
        .Q(r0_data[126]),
        .R(1'b0));
  FDRE \r0_data_reg[127] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[127]),
        .Q(r0_data[127]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[16]),
        .Q(r0_data[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[17]),
        .Q(r0_data[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[18]),
        .Q(r0_data[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[19]),
        .Q(r0_data[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[20]),
        .Q(r0_data[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[21]),
        .Q(r0_data[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[22]),
        .Q(r0_data[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[23]),
        .Q(r0_data[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[24]),
        .Q(r0_data[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[25]),
        .Q(r0_data[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[26]),
        .Q(r0_data[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[27]),
        .Q(r0_data[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[28]),
        .Q(r0_data[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[29]),
        .Q(r0_data[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[30]),
        .Q(r0_data[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[31]),
        .Q(r0_data[31]),
        .R(1'b0));
  FDRE \r0_data_reg[32] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[32]),
        .Q(r0_data[32]),
        .R(1'b0));
  FDRE \r0_data_reg[33] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[33]),
        .Q(r0_data[33]),
        .R(1'b0));
  FDRE \r0_data_reg[34] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[34]),
        .Q(r0_data[34]),
        .R(1'b0));
  FDRE \r0_data_reg[35] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[35]),
        .Q(r0_data[35]),
        .R(1'b0));
  FDRE \r0_data_reg[36] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[36]),
        .Q(r0_data[36]),
        .R(1'b0));
  FDRE \r0_data_reg[37] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[37]),
        .Q(r0_data[37]),
        .R(1'b0));
  FDRE \r0_data_reg[38] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[38]),
        .Q(r0_data[38]),
        .R(1'b0));
  FDRE \r0_data_reg[39] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[39]),
        .Q(r0_data[39]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[40] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[40]),
        .Q(r0_data[40]),
        .R(1'b0));
  FDRE \r0_data_reg[41] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[41]),
        .Q(r0_data[41]),
        .R(1'b0));
  FDRE \r0_data_reg[42] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[42]),
        .Q(r0_data[42]),
        .R(1'b0));
  FDRE \r0_data_reg[43] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[43]),
        .Q(r0_data[43]),
        .R(1'b0));
  FDRE \r0_data_reg[44] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[44]),
        .Q(r0_data[44]),
        .R(1'b0));
  FDRE \r0_data_reg[45] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[45]),
        .Q(r0_data[45]),
        .R(1'b0));
  FDRE \r0_data_reg[46] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[46]),
        .Q(r0_data[46]),
        .R(1'b0));
  FDRE \r0_data_reg[47] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[47]),
        .Q(r0_data[47]),
        .R(1'b0));
  FDRE \r0_data_reg[48] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[48]),
        .Q(r0_data[48]),
        .R(1'b0));
  FDRE \r0_data_reg[49] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[49]),
        .Q(r0_data[49]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[50] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[50]),
        .Q(r0_data[50]),
        .R(1'b0));
  FDRE \r0_data_reg[51] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[51]),
        .Q(r0_data[51]),
        .R(1'b0));
  FDRE \r0_data_reg[52] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[52]),
        .Q(r0_data[52]),
        .R(1'b0));
  FDRE \r0_data_reg[53] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[53]),
        .Q(r0_data[53]),
        .R(1'b0));
  FDRE \r0_data_reg[54] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[54]),
        .Q(r0_data[54]),
        .R(1'b0));
  FDRE \r0_data_reg[55] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[55]),
        .Q(r0_data[55]),
        .R(1'b0));
  FDRE \r0_data_reg[56] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[56]),
        .Q(r0_data[56]),
        .R(1'b0));
  FDRE \r0_data_reg[57] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[57]),
        .Q(r0_data[57]),
        .R(1'b0));
  FDRE \r0_data_reg[58] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[58]),
        .Q(r0_data[58]),
        .R(1'b0));
  FDRE \r0_data_reg[59] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[59]),
        .Q(r0_data[59]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[60] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[60]),
        .Q(r0_data[60]),
        .R(1'b0));
  FDRE \r0_data_reg[61] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[61]),
        .Q(r0_data[61]),
        .R(1'b0));
  FDRE \r0_data_reg[62] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[62]),
        .Q(r0_data[62]),
        .R(1'b0));
  FDRE \r0_data_reg[63] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[63]),
        .Q(r0_data[63]),
        .R(1'b0));
  FDRE \r0_data_reg[64] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[64]),
        .Q(r0_data[64]),
        .R(1'b0));
  FDRE \r0_data_reg[65] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[65]),
        .Q(r0_data[65]),
        .R(1'b0));
  FDRE \r0_data_reg[66] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[66]),
        .Q(r0_data[66]),
        .R(1'b0));
  FDRE \r0_data_reg[67] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[67]),
        .Q(r0_data[67]),
        .R(1'b0));
  FDRE \r0_data_reg[68] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[68]),
        .Q(r0_data[68]),
        .R(1'b0));
  FDRE \r0_data_reg[69] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[69]),
        .Q(r0_data[69]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[70] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[70]),
        .Q(r0_data[70]),
        .R(1'b0));
  FDRE \r0_data_reg[71] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[71]),
        .Q(r0_data[71]),
        .R(1'b0));
  FDRE \r0_data_reg[72] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[72]),
        .Q(r0_data[72]),
        .R(1'b0));
  FDRE \r0_data_reg[73] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[73]),
        .Q(r0_data[73]),
        .R(1'b0));
  FDRE \r0_data_reg[74] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[74]),
        .Q(r0_data[74]),
        .R(1'b0));
  FDRE \r0_data_reg[75] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[75]),
        .Q(r0_data[75]),
        .R(1'b0));
  FDRE \r0_data_reg[76] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[76]),
        .Q(r0_data[76]),
        .R(1'b0));
  FDRE \r0_data_reg[77] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[77]),
        .Q(r0_data[77]),
        .R(1'b0));
  FDRE \r0_data_reg[78] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[78]),
        .Q(r0_data[78]),
        .R(1'b0));
  FDRE \r0_data_reg[79] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[79]),
        .Q(r0_data[79]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[80] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[80]),
        .Q(r0_data[80]),
        .R(1'b0));
  FDRE \r0_data_reg[81] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[81]),
        .Q(r0_data[81]),
        .R(1'b0));
  FDRE \r0_data_reg[82] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[82]),
        .Q(r0_data[82]),
        .R(1'b0));
  FDRE \r0_data_reg[83] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[83]),
        .Q(r0_data[83]),
        .R(1'b0));
  FDRE \r0_data_reg[84] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[84]),
        .Q(r0_data[84]),
        .R(1'b0));
  FDRE \r0_data_reg[85] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[85]),
        .Q(r0_data[85]),
        .R(1'b0));
  FDRE \r0_data_reg[86] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[86]),
        .Q(r0_data[86]),
        .R(1'b0));
  FDRE \r0_data_reg[87] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[87]),
        .Q(r0_data[87]),
        .R(1'b0));
  FDRE \r0_data_reg[88] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[88]),
        .Q(r0_data[88]),
        .R(1'b0));
  FDRE \r0_data_reg[89] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[89]),
        .Q(r0_data[89]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[90] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[90]),
        .Q(r0_data[90]),
        .R(1'b0));
  FDRE \r0_data_reg[91] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[91]),
        .Q(r0_data[91]),
        .R(1'b0));
  FDRE \r0_data_reg[92] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[92]),
        .Q(r0_data[92]),
        .R(1'b0));
  FDRE \r0_data_reg[93] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[93]),
        .Q(r0_data[93]),
        .R(1'b0));
  FDRE \r0_data_reg[94] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[94]),
        .Q(r0_data[94]),
        .R(1'b0));
  FDRE \r0_data_reg[95] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[95]),
        .Q(r0_data[95]),
        .R(1'b0));
  FDRE \r0_data_reg[96] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[96]),
        .Q(r0_data[96]),
        .R(1'b0));
  FDRE \r0_data_reg[97] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[97]),
        .Q(r0_data[97]),
        .R(1'b0));
  FDRE \r0_data_reg[98] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[98]),
        .Q(r0_data[98]),
        .R(1'b0));
  FDRE \r0_data_reg[99] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[99]),
        .Q(r0_data[99]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_data_2),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    r0_last_i_1
       (.I0(s_axis_tlast),
        .I1(s_axis_tready),
        .I2(\state_reg_n_0_[2] ),
        .I3(aclken),
        .I4(r0_last_reg_n_0),
        .O(r0_last_i_1_n_0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r0_last_i_1_n_0),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAE6AA)) 
    \r0_out_sel_next_r[0]_i_1 
       (.I0(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I1(m_axis_tready),
        .I2(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I3(aclken),
        .I4(\r0_out_sel_next_r[1]_i_2_n_0 ),
        .I5(areset_r),
        .O(\r0_out_sel_next_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000AAEAAA)) 
    \r0_out_sel_next_r[1]_i_1 
       (.I0(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I1(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I2(m_axis_tready),
        .I3(aclken),
        .I4(\r0_out_sel_next_r[1]_i_2_n_0 ),
        .I5(areset_r),
        .O(\r0_out_sel_next_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF10101010101010)) 
    \r0_out_sel_next_r[1]_i_2 
       (.I0(m_axis_tvalid),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_axis_tready),
        .I3(\r0_out_sel_r_reg_n_0_[1] ),
        .I4(\r0_out_sel_r_reg_n_0_[0] ),
        .I5(m_axis_tready),
        .O(\r0_out_sel_next_r[1]_i_2_n_0 ));
  FDRE \r0_out_sel_next_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_next_r[0]_i_1_n_0 ),
        .Q(\r0_out_sel_next_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r0_out_sel_next_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_next_r[1]_i_1_n_0 ),
        .Q(\r0_out_sel_next_r_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \r0_out_sel_r[0]_i_1 
       (.I0(areset_r),
        .I1(p_0_in_1),
        .I2(\r0_out_sel_r_reg_n_0_[1] ),
        .I3(\r0_out_sel_r_reg_n_0_[0] ),
        .I4(m_axis_tready),
        .I5(aclken),
        .O(r0_out_sel_next_r));
  LUT4 #(
    .INIT(16'hDF80)) 
    \r0_out_sel_r[0]_i_2 
       (.I0(m_axis_tready),
        .I1(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I2(aclken),
        .I3(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_out_sel_r[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r0_out_sel_r[0]_i_3 
       (.I0(s_axis_tready),
        .I1(\state_reg_n_0_[2] ),
        .I2(m_axis_tvalid),
        .O(p_0_in_1));
  LUT6 #(
    .INIT(64'h000000000F00DF80)) 
    \r0_out_sel_r[1]_i_1 
       (.I0(m_axis_tready),
        .I1(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I2(aclken),
        .I3(\r0_out_sel_r_reg_n_0_[1] ),
        .I4(\r0_out_sel_next_r[1]_i_2_n_0 ),
        .I5(areset_r),
        .O(\r0_out_sel_r[1]_i_1_n_0 ));
  FDRE \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[0]_i_2_n_0 ),
        .Q(\r0_out_sel_r_reg_n_0_[0] ),
        .R(r0_out_sel_next_r));
  FDRE \r0_out_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[1]_i_1_n_0 ),
        .Q(\r0_out_sel_r_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[0]_i_1 
       (.I0(r0_data[96]),
        .I1(r0_data[32]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[64]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[10]_i_1 
       (.I0(r0_data[106]),
        .I1(r0_data[42]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[74]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[11]_i_1 
       (.I0(r0_data[107]),
        .I1(r0_data[43]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[75]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[12]_i_1 
       (.I0(r0_data[108]),
        .I1(r0_data[44]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[76]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[13]_i_1 
       (.I0(r0_data[109]),
        .I1(r0_data[45]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[77]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[14]_i_1 
       (.I0(r0_data[110]),
        .I1(r0_data[46]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[78]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[15]_i_1 
       (.I0(r0_data[111]),
        .I1(r0_data[47]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[79]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[16]_i_1 
       (.I0(r0_data[112]),
        .I1(r0_data[48]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[80]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[16]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[17]_i_1 
       (.I0(r0_data[113]),
        .I1(r0_data[49]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[81]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[17]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[18]_i_1 
       (.I0(r0_data[114]),
        .I1(r0_data[50]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[82]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[18]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[19]_i_1 
       (.I0(r0_data[115]),
        .I1(r0_data[51]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[83]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[1]_i_1 
       (.I0(r0_data[97]),
        .I1(r0_data[33]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[65]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[20]_i_1 
       (.I0(r0_data[116]),
        .I1(r0_data[52]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[84]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[20]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[21]_i_1 
       (.I0(r0_data[117]),
        .I1(r0_data[53]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[85]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[21]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[22]_i_1 
       (.I0(r0_data[118]),
        .I1(r0_data[54]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[86]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[22]),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[23]_i_1 
       (.I0(r0_data[119]),
        .I1(r0_data[55]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[87]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[23]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[24]_i_1 
       (.I0(r0_data[120]),
        .I1(r0_data[56]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[88]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[24]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[25]_i_1 
       (.I0(r0_data[121]),
        .I1(r0_data[57]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[89]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[26]_i_1 
       (.I0(r0_data[122]),
        .I1(r0_data[58]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[90]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[26]),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[27]_i_1 
       (.I0(r0_data[123]),
        .I1(r0_data[59]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[91]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[27]),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[28]_i_1 
       (.I0(r0_data[124]),
        .I1(r0_data[60]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[92]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[28]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[29]_i_1 
       (.I0(r0_data[125]),
        .I1(r0_data[61]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[93]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[2]_i_1 
       (.I0(r0_data[98]),
        .I1(r0_data[34]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[66]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[30]_i_1 
       (.I0(r0_data[126]),
        .I1(r0_data[62]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[94]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[30]),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'h0020)) 
    \r1_data[31]_i_1 
       (.I0(aclken),
        .I1(s_axis_tready),
        .I2(m_axis_tvalid),
        .I3(\state_reg_n_0_[2] ),
        .O(r1_data_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[31]_i_2 
       (.I0(r0_data[127]),
        .I1(r0_data[63]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[95]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[31]),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[3]_i_1 
       (.I0(r0_data[99]),
        .I1(r0_data[35]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[67]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[4]_i_1 
       (.I0(r0_data[100]),
        .I1(r0_data[36]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[68]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[5]_i_1 
       (.I0(r0_data[101]),
        .I1(r0_data[37]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[69]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[6]_i_1 
       (.I0(r0_data[102]),
        .I1(r0_data[38]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[70]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[7]_i_1 
       (.I0(r0_data[103]),
        .I1(r0_data[39]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[71]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[8]_i_1 
       (.I0(r0_data[104]),
        .I1(r0_data[40]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[72]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[9]_i_1 
       (.I0(r0_data[105]),
        .I1(r0_data[41]),
        .I2(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I3(r0_data[73]),
        .I4(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I5(r0_data[9]),
        .O(p_0_in[9]));
  FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[0]),
        .Q(r1_data[0]),
        .R(1'b0));
  FDRE \r1_data_reg[10] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[10]),
        .Q(r1_data[10]),
        .R(1'b0));
  FDRE \r1_data_reg[11] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[11]),
        .Q(r1_data[11]),
        .R(1'b0));
  FDRE \r1_data_reg[12] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[12]),
        .Q(r1_data[12]),
        .R(1'b0));
  FDRE \r1_data_reg[13] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[13]),
        .Q(r1_data[13]),
        .R(1'b0));
  FDRE \r1_data_reg[14] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[14]),
        .Q(r1_data[14]),
        .R(1'b0));
  FDRE \r1_data_reg[15] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[15]),
        .Q(r1_data[15]),
        .R(1'b0));
  FDRE \r1_data_reg[16] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[16]),
        .Q(r1_data[16]),
        .R(1'b0));
  FDRE \r1_data_reg[17] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[17]),
        .Q(r1_data[17]),
        .R(1'b0));
  FDRE \r1_data_reg[18] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[18]),
        .Q(r1_data[18]),
        .R(1'b0));
  FDRE \r1_data_reg[19] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[19]),
        .Q(r1_data[19]),
        .R(1'b0));
  FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[1]),
        .Q(r1_data[1]),
        .R(1'b0));
  FDRE \r1_data_reg[20] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[20]),
        .Q(r1_data[20]),
        .R(1'b0));
  FDRE \r1_data_reg[21] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[21]),
        .Q(r1_data[21]),
        .R(1'b0));
  FDRE \r1_data_reg[22] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[22]),
        .Q(r1_data[22]),
        .R(1'b0));
  FDRE \r1_data_reg[23] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[23]),
        .Q(r1_data[23]),
        .R(1'b0));
  FDRE \r1_data_reg[24] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[24]),
        .Q(r1_data[24]),
        .R(1'b0));
  FDRE \r1_data_reg[25] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[25]),
        .Q(r1_data[25]),
        .R(1'b0));
  FDRE \r1_data_reg[26] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[26]),
        .Q(r1_data[26]),
        .R(1'b0));
  FDRE \r1_data_reg[27] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[27]),
        .Q(r1_data[27]),
        .R(1'b0));
  FDRE \r1_data_reg[28] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[28]),
        .Q(r1_data[28]),
        .R(1'b0));
  FDRE \r1_data_reg[29] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[29]),
        .Q(r1_data[29]),
        .R(1'b0));
  FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[2]),
        .Q(r1_data[2]),
        .R(1'b0));
  FDRE \r1_data_reg[30] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[30]),
        .Q(r1_data[30]),
        .R(1'b0));
  FDRE \r1_data_reg[31] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[31]),
        .Q(r1_data[31]),
        .R(1'b0));
  FDRE \r1_data_reg[3] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[3]),
        .Q(r1_data[3]),
        .R(1'b0));
  FDRE \r1_data_reg[4] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[4]),
        .Q(r1_data[4]),
        .R(1'b0));
  FDRE \r1_data_reg[5] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[5]),
        .Q(r1_data[5]),
        .R(1'b0));
  FDRE \r1_data_reg[6] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[6]),
        .Q(r1_data[6]),
        .R(1'b0));
  FDRE \r1_data_reg[7] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[7]),
        .Q(r1_data[7]),
        .R(1'b0));
  FDRE \r1_data_reg[8] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[8]),
        .Q(r1_data[8]),
        .R(1'b0));
  FDRE \r1_data_reg[9] 
       (.C(aclk),
        .CE(r1_data_0),
        .D(p_0_in[9]),
        .Q(r1_data[9]),
        .R(1'b0));
  FDRE r1_last_reg
       (.C(aclk),
        .CE(r1_data_0),
        .D(r0_last_reg_n_0),
        .Q(r1_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AEEEA2E2)) 
    \state[0]_i_1 
       (.I0(s_axis_tready),
        .I1(aclken),
        .I2(\state_reg_n_0_[2] ),
        .I3(m_axis_tvalid),
        .I4(\state[0]_i_2_n_0 ),
        .I5(areset_r),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000080FFFFFF80FF)) 
    \state[0]_i_2 
       (.I0(m_axis_tready),
        .I1(\r0_out_sel_next_r_reg_n_0_[0] ),
        .I2(\r0_out_sel_next_r_reg_n_0_[1] ),
        .I3(m_axis_tvalid),
        .I4(s_axis_tready),
        .I5(s_axis_tvalid),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(areset_r),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0BFFFFFF0A000000)) 
    \state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\state_reg_n_0_[2] ),
        .I3(s_axis_tready),
        .I4(aclken),
        .I5(m_axis_tvalid),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(areset_r),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000CFFFF00800000)) 
    \state[2]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tvalid),
        .I2(s_axis_tready),
        .I3(m_axis_tready),
        .I4(aclken),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(s_axis_tready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(m_axis_tvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
