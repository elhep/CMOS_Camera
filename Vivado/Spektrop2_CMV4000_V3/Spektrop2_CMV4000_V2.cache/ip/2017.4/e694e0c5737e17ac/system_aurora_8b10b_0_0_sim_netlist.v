// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar  6 00:02:13 2018
// Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_aurora_8b10b_0_0_sim_netlist.v
// Design      : system_aurora_8b10b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_tx_tdata,
    s_axi_tx_tvalid,
    s_axi_tx_tready,
    s_axi_tx_tkeep,
    s_axi_tx_tlast,
    txp,
    txn,
    gt_refclk1,
    tx_hard_err,
    tx_lane_up,
    tx_channel_up,
    user_clk,
    sync_clk,
    tx_system_reset,
    power_down,
    loopback,
    gt_reset,
    tx_lock,
    sys_reset_out,
    init_clk_in,
    tx_resetdone_out,
    drpclk_in,
    gt_common_reset_out,
    gt0_pll0refclklost_in,
    quad1_common_lock_in,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    tx_out_clk,
    pll_not_locked);
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

  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire drpclk_in;
  wire gt0_pll0refclklost_in;
  wire gt_common_reset_out;
  wire gt_refclk1;
  wire gt_reset;
  wire init_clk_in;
  wire [2:0]loopback;
  wire pll_not_locked;
  wire power_down;
  wire quad1_common_lock_in;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_channel_up;
  wire tx_hard_err;
  wire [0:0]tx_lane_up;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire tx_system_reset;
  wire [0:0]txn;
  wire [0:0]txp;
  wire user_clk;
  wire NLW_U0_DRPRDY_OUT_UNCONNECTED;
  wire [15:0]NLW_U0_DRPDO_OUT_UNCONNECTED;

  (* CC_FREQ_FACTOR = "12" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_core U0
       (.DRPADDR_IN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDI_IN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO_OUT(NLW_U0_DRPDO_OUT_UNCONNECTED[15:0]),
        .DRPEN_IN(1'b0),
        .DRPRDY_OUT(NLW_U0_DRPRDY_OUT_UNCONNECTED),
        .DRPWE_IN(1'b0),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .GT_RESET(gt_reset),
        .LOOPBACK(loopback),
        .PLL_NOT_LOCKED(pll_not_locked),
        .POWER_DOWN(power_down),
        .S_AXI_TX_TDATA(s_axi_tx_tdata),
        .S_AXI_TX_TKEEP(s_axi_tx_tkeep),
        .S_AXI_TX_TLAST(s_axi_tx_tlast),
        .S_AXI_TX_TREADY(s_axi_tx_tready),
        .S_AXI_TX_TVALID(s_axi_tx_tvalid),
        .TXN(txn),
        .TXP(txp),
        .TX_CHANNEL_UP(tx_channel_up),
        .TX_HARD_ERR(tx_hard_err),
        .TX_LANE_UP(tx_lane_up),
        .TX_LOCK(tx_lock),
        .TX_OUT_CLK(tx_out_clk),
        .TX_RESETDONE_OUT(tx_resetdone_out),
        .TX_SYSTEM_RESET(tx_system_reset),
        .drpclk_in(drpclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_refclk1(gt_refclk1),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .sync_clk(sync_clk),
        .sys_reset_out(sys_reset_out),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_AXI_TO_LL
   (idle_r_reg,
    sof_to_data_r_reg,
    new_pkt_r,
    user_clk,
    S_AXI_TX_TVALID,
    tx_dst_rdy);
  output idle_r_reg;
  output sof_to_data_r_reg;
  input new_pkt_r;
  input user_clk;
  input S_AXI_TX_TVALID;
  input tx_dst_rdy;

  wire S_AXI_TX_TVALID;
  wire idle_r_reg;
  wire new_pkt_r;
  wire sof_to_data_r_reg;
  wire tx_dst_rdy;
  wire user_clk;

  FDRE new_pkt_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(new_pkt_r),
        .Q(idle_r_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFB)) 
    sof_to_eof_1_r_i_2
       (.I0(idle_r_reg),
        .I1(S_AXI_TX_TVALID),
        .I2(tx_dst_rdy),
        .O(sof_to_data_r_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_GT_WRAPPER
   (TX_RESETDONE_OUT,
    \FSM_sequential_state_reg[2] ,
    TXN,
    TXP,
    TX_OUT_CLK,
    DRPDO_OUT,
    gt_common_reset_out,
    hard_err_flop_r_reg,
    gt_txresetdone_r2_reg,
    TX_LOCK,
    quad1_common_lock_in,
    drpclk_in,
    DRPEN_IN,
    DRPWE_IN,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    sync_clk,
    user_clk,
    POWER_DOWN,
    DRPDI_IN,
    LOOPBACK,
    TXDATA,
    TXCHARISK,
    DRPADDR_IN,
    init_clk_in,
    AR,
    ENABLE_ERR_DETECT,
    PLL_NOT_LOCKED);
  output TX_RESETDONE_OUT;
  output \FSM_sequential_state_reg[2] ;
  output TXN;
  output TXP;
  output TX_OUT_CLK;
  output [15:0]DRPDO_OUT;
  output gt_common_reset_out;
  output hard_err_flop_r_reg;
  output gt_txresetdone_r2_reg;
  output TX_LOCK;
  input quad1_common_lock_in;
  input drpclk_in;
  input DRPEN_IN;
  input DRPWE_IN;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  input sync_clk;
  input user_clk;
  input POWER_DOWN;
  input [15:0]DRPDI_IN;
  input [2:0]LOOPBACK;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]DRPADDR_IN;
  input init_clk_in;
  input [0:0]AR;
  input ENABLE_ERR_DETECT;
  input PLL_NOT_LOCKED;

  wire [0:0]AR;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire ENABLE_ERR_DETECT;
  wire \FSM_sequential_state_reg[2] ;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire [2:0]LOOPBACK;
  wire PLL_NOT_LOCKED;
  wire POWER_DOWN;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_LOCK;
  wire TX_OUT_CLK;
  wire TX_RESETDONE_OUT;
  wire drpclk_in;
  wire gt0_txresetdone_r3_reg_srl3_n_0;
  wire gt_common_reset_out;
  wire gt_tx_reset_i;
  wire gt_txresetdone_r2_reg;
  wire gt_txuserrdy_i;
  wire hard_err_flop_r_reg;
  wire init_clk_in;
  wire quad1_common_lock_in;
  wire sync_clk;
  wire system_aurora_8b10b_0_0_multi_gt_i_n_4;
  wire txfsm_txresetdone_r;
  wire user_clk;

  (* srl_name = "U0/\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(system_aurora_8b10b_0_0_multi_gt_i_n_4),
        .Q(gt0_txresetdone_r3_reg_srl3_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_tx_startup_fsm gt_txresetfsm_i
       (.AR(AR),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .TX_LOCK(TX_LOCK),
        .TX_RESETDONE_OUT(TX_RESETDONE_OUT),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txresetdone_r2_reg(gt_txresetdone_r2_reg),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6 gtrxreset_cdc_sync
       (.init_clk_in(init_clk_in),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_multi_gt system_aurora_8b10b_0_0_multi_gt_i
       (.DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .ENABLE_ERR_DETECT(ENABLE_ERR_DETECT),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .POWER_DOWN(POWER_DOWN),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_flop_r_reg(hard_err_flop_r_reg),
        .init_clk_in(init_clk_in),
        .sync_clk(sync_clk),
        .txfsm_txresetdone_r_reg(system_aurora_8b10b_0_0_multi_gt_i_n_4),
        .user_clk(user_clk));
  FDRE txfsm_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt0_txresetdone_r3_reg_srl3_n_0),
        .Q(txfsm_txresetdone_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_IDLE_AND_VER_GEN
   (\gen_v_r_reg[1] ,
    gen_a_i,
    \gen_k_r_reg[0] ,
    \gen_r_r_reg[0] ,
    gen_k_flop_0_i_0,
    user_clk,
    D0_out,
    gen_ver_i,
    tx_reset_simplex_r,
    SYSTEM_RESET_reg);
  output [2:0]\gen_v_r_reg[1] ;
  output gen_a_i;
  output [3:0]\gen_k_r_reg[0] ;
  output [3:0]\gen_r_r_reg[0] ;
  output gen_k_flop_0_i_0;
  input user_clk;
  input D0_out;
  input gen_ver_i;
  input tx_reset_simplex_r;
  input SYSTEM_RESET_reg;

  wire D;
  wire D0_in;
  wire D0_out;
  wire D1_in;
  wire D1_out;
  wire D2_out;
  wire SYSTEM_RESET_reg;
  wire [0:2]down_count_r;
  wire \down_count_r[0]_i_1_n_0 ;
  wire \down_count_r[1]_i_1_n_0 ;
  wire \downcounter_r[0]_i_1_n_0 ;
  wire \downcounter_r[1]_i_1_n_0 ;
  wire \downcounter_r[2]_i_1_n_0 ;
  wire \downcounter_r_reg_n_0_[0] ;
  wire \downcounter_r_reg_n_0_[1] ;
  wire \downcounter_r_reg_n_0_[2] ;
  wire gen_a_i;
  wire gen_k_flop_0_i_0;
  wire gen_k_flop_1_i_i_1_n_0;
  wire gen_k_flop_2_i_i_1_n_0;
  wire gen_k_flop_3_i_i_1_n_0;
  wire [3:0]\gen_k_r_reg[0] ;
  wire gen_r_flop_0_i_i_1_n_0;
  wire [3:0]\gen_r_r_reg[0] ;
  wire [2:0]\gen_v_r_reg[1] ;
  wire gen_ver_i;
  wire \lfsr_reg_reg_n_0_[3] ;
  wire p_1_in;
  wire [0:0]p_4_out;
  wire prev_cycle_gen_ver_r;
  wire tx_reset_simplex_r;
  wire user_clk;
  wire ver_counter_c;

  FDRE DID_VER_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ver_counter_c),
        .Q(gen_k_flop_0_i_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \down_count_r[0]_i_1 
       (.I0(D0_in),
        .I1(\lfsr_reg_reg_n_0_[3] ),
        .O(\down_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \down_count_r[1]_i_1 
       (.I0(\lfsr_reg_reg_n_0_[3] ),
        .I1(D0_in),
        .O(\down_count_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[0]_i_1_n_0 ),
        .Q(down_count_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[1]_i_1_n_0 ),
        .Q(down_count_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_3_i_i_1_n_0),
        .Q(down_count_r[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000CCC2)) 
    \downcounter_r[0]_i_1 
       (.I0(down_count_r[0]),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(tx_reset_simplex_r),
        .I5(SYSTEM_RESET_reg),
        .O(\downcounter_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F00E)) 
    \downcounter_r[1]_i_1 
       (.I0(down_count_r[1]),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(tx_reset_simplex_r),
        .I5(SYSTEM_RESET_reg),
        .O(\downcounter_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003332)) 
    \downcounter_r[2]_i_1 
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(down_count_r[2]),
        .I4(tx_reset_simplex_r),
        .I5(SYSTEM_RESET_reg),
        .O(\downcounter_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[0]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[1]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[2]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[2] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_a_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D1_out),
        .Q(gen_a_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010101)) 
    gen_a_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(gen_k_flop_0_i_0),
        .I4(gen_ver_i),
        .O(D1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D2_out),
        .Q(\gen_k_r_reg[0] [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD5D5D5D5D5D5D5C0)) 
    gen_k_flop_0_i_i_1
       (.I0(p_1_in),
        .I1(gen_ver_i),
        .I2(gen_k_flop_0_i_0),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(\downcounter_r_reg_n_0_[2] ),
        .I5(\downcounter_r_reg_n_0_[0] ),
        .O(D2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_1_i_i_1_n_0),
        .Q(\gen_k_r_reg[0] [2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_1_i_i_1
       (.I0(D1_in),
        .O(gen_k_flop_1_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_2_i_i_1_n_0),
        .Q(\gen_k_r_reg[0] [1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_2_i_i_1
       (.I0(D0_in),
        .O(gen_k_flop_2_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_3_i_i_1_n_0),
        .Q(\gen_k_r_reg[0] [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_3_i_i_1
       (.I0(\lfsr_reg_reg_n_0_[3] ),
        .O(gen_k_flop_3_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_0_i_i_1_n_0),
        .Q(\gen_r_r_reg[0] [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FE00FE00FE00)) 
    gen_r_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(gen_ver_i),
        .I5(gen_k_flop_0_i_0),
        .O(gen_r_flop_0_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D1_in),
        .Q(\gen_r_r_reg[0] [2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_in),
        .Q(\gen_r_r_reg[0] [1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(\lfsr_reg_reg_n_0_[3] ),
        .Q(\gen_r_r_reg[0] [0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_out),
        .Q(\gen_v_r_reg[1] [2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_out),
        .Q(\gen_v_r_reg[1] [1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_out),
        .Q(\gen_v_r_reg[1] [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h32CD)) 
    \lfsr_reg[3]_i_1 
       (.I0(D0_in),
        .I1(\lfsr_reg_reg_n_0_[3] ),
        .I2(D1_in),
        .I3(p_1_in),
        .O(p_4_out));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D1_in),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_in),
        .Q(D1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\lfsr_reg_reg_n_0_[3] ),
        .Q(D0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_4_out),
        .Q(\lfsr_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/idle_and_ver_gen_i/ver_counter_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(D),
        .Q(ver_counter_c));
  LUT3 #(
    .INIT(8'hD0)) 
    ver_counter_i_i_1
       (.I0(prev_cycle_gen_ver_r),
        .I1(gen_k_flop_0_i_0),
        .I2(gen_ver_i),
        .O(D));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_RESET_LOGIC
   (sys_reset_out,
    RESET_SYMGEN,
    \simplex_timer_r_reg[17] ,
    tx_aligned_simplex_r_reg,
    tx_verify_simplex_r_reg,
    PLL_NOT_LOCKED,
    out,
    init_clk_in,
    user_clk,
    TX_LOCK,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg ,
    tx_reset_simplex_r,
    CHANNEL_HARD_ERR_Buffer_reg,
    tx_aligned_simplex_r,
    simplex_timer_r_reg,
    \simplex_timer_r_reg[2] ,
    simplex_timer_r_reg_0_sp_1,
    tx_verify_simplex_r);
  output sys_reset_out;
  output RESET_SYMGEN;
  output \simplex_timer_r_reg[17] ;
  output tx_aligned_simplex_r_reg;
  output tx_verify_simplex_r_reg;
  input PLL_NOT_LOCKED;
  input out;
  input init_clk_in;
  input user_clk;
  input TX_LOCK;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg ;
  input tx_reset_simplex_r;
  input CHANNEL_HARD_ERR_Buffer_reg;
  input tx_aligned_simplex_r;
  input [0:0]simplex_timer_r_reg;
  input \simplex_timer_r_reg[2] ;
  input simplex_timer_r_reg_0_sp_1;
  input tx_verify_simplex_r;

  wire CHANNEL_HARD_ERR_Buffer_reg;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg ;
  wire PLL_NOT_LOCKED;
  wire RESET_SYMGEN;
  wire SYSTEM_RESET0_n_0;
  wire TX_LOCK;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r3;
  wire init_clk_in;
  wire out;
  wire pll_not_locked_sync;
  wire scndry_out;
  wire [0:0]simplex_timer_r_reg;
  wire \simplex_timer_r_reg[17] ;
  wire \simplex_timer_r_reg[2] ;
  wire simplex_timer_r_reg_0_sn_1;
  wire sys_reset_out;
  wire tx_aligned_simplex_r;
  wire tx_aligned_simplex_r_reg;
  wire tx_lock_comb_r;
  wire tx_lock_sync;
  wire tx_reset_simplex_r;
  wire tx_verify_simplex_r;
  wire tx_verify_simplex_r_reg;
  wire user_clk;

  assign simplex_timer_r_reg_0_sn_1 = simplex_timer_r_reg_0_sp_1;
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    SYSTEM_RESET0
       (.I0(tx_lock_sync),
        .I1(pll_not_locked_sync),
        .I2(out),
        .I3(scndry_out),
        .I4(gt_txresetdone_r3),
        .O(SYSTEM_RESET0_n_0));
  FDRE SYSTEM_RESET_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SYSTEM_RESET0_n_0),
        .Q(sys_reset_out),
        .R(1'b0));
  FDCE gt_txresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg ),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
  FDRE gt_txresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(1'b0));
  FDCE gt_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg ),
        .D(1'b1),
        .Q(gt_txresetdone_r));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3_9 link_reset_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(scndry_out),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    new_pkt_r_i_2
       (.I0(sys_reset_out),
        .I1(tx_reset_simplex_r),
        .O(RESET_SYMGEN));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync_10 pll_not_locked_cdc_sync
       (.PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .out(pll_not_locked_sync),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \simplex_timer_r[0]_i_1 
       (.I0(sys_reset_out),
        .I1(CHANNEL_HARD_ERR_Buffer_reg),
        .O(\simplex_timer_r_reg[17] ));
  LUT6 #(
    .INIT(64'h000000000000ABAA)) 
    tx_aligned_simplex_r_i_1
       (.I0(tx_aligned_simplex_r),
        .I1(simplex_timer_r_reg),
        .I2(\simplex_timer_r_reg[2] ),
        .I3(simplex_timer_r_reg_0_sn_1),
        .I4(RESET_SYMGEN),
        .I5(CHANNEL_HARD_ERR_Buffer_reg),
        .O(tx_aligned_simplex_r_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3_11 tx_lock_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(tx_lock_sync),
        .tx_lock_comb_r(tx_lock_comb_r),
        .user_clk(user_clk));
  FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(TX_LOCK),
        .Q(tx_lock_comb_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000BAAA)) 
    tx_verify_simplex_r_i_1
       (.I0(tx_verify_simplex_r),
        .I1(\simplex_timer_r_reg[2] ),
        .I2(simplex_timer_r_reg),
        .I3(simplex_timer_r_reg_0_sn_1),
        .I4(RESET_SYMGEN),
        .I5(CHANNEL_HARD_ERR_Buffer_reg),
        .O(tx_verify_simplex_r_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_STANDARD_CC_MODULE
   (DO_CC_I,
    SYSTEM_RESET_reg,
    user_clk);
  output DO_CC_I;
  input SYSTEM_RESET_reg;
  input user_clk;

  wire DO_CC_I;
  wire DO_CC_i_1_n_0;
  wire SYSTEM_RESET_reg;
  wire [5:5]cc_count_r;
  wire cc_idle_count_done_c;
  wire count_13d_flop_r_reg_r_n_0;
  wire \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ;
  wire count_13d_srl_r_reg_gate_n_0;
  wire count_13d_srl_r_reg_r_0_n_0;
  wire count_13d_srl_r_reg_r_1_n_0;
  wire count_13d_srl_r_reg_r_2_n_0;
  wire count_13d_srl_r_reg_r_3_n_0;
  wire count_13d_srl_r_reg_r_4_n_0;
  wire count_13d_srl_r_reg_r_5_n_0;
  wire count_13d_srl_r_reg_r_6_n_0;
  wire count_13d_srl_r_reg_r_7_n_0;
  wire count_13d_srl_r_reg_r_8_n_0;
  wire count_13d_srl_r_reg_r_9_n_0;
  wire count_13d_srl_r_reg_r_n_0;
  wire count_16d_flop_r;
  wire count_16d_flop_r_i_1_n_0;
  wire count_16d_srl_r0;
  wire \count_16d_srl_r_reg_n_0_[0] ;
  wire \count_16d_srl_r_reg_n_0_[10] ;
  wire \count_16d_srl_r_reg_n_0_[11] ;
  wire \count_16d_srl_r_reg_n_0_[12] ;
  wire \count_16d_srl_r_reg_n_0_[13] ;
  wire \count_16d_srl_r_reg_n_0_[14] ;
  wire \count_16d_srl_r_reg_n_0_[1] ;
  wire \count_16d_srl_r_reg_n_0_[2] ;
  wire \count_16d_srl_r_reg_n_0_[3] ;
  wire \count_16d_srl_r_reg_n_0_[4] ;
  wire \count_16d_srl_r_reg_n_0_[5] ;
  wire \count_16d_srl_r_reg_n_0_[6] ;
  wire \count_16d_srl_r_reg_n_0_[7] ;
  wire \count_16d_srl_r_reg_n_0_[8] ;
  wire \count_16d_srl_r_reg_n_0_[9] ;
  wire count_24d_flop_r;
  wire count_24d_flop_r_i_1_n_0;
  wire count_24d_srl_r0;
  wire \count_24d_srl_r_reg_n_0_[0] ;
  wire \count_24d_srl_r_reg_n_0_[10] ;
  wire \count_24d_srl_r_reg_n_0_[1] ;
  wire \count_24d_srl_r_reg_n_0_[2] ;
  wire \count_24d_srl_r_reg_n_0_[3] ;
  wire \count_24d_srl_r_reg_n_0_[4] ;
  wire \count_24d_srl_r_reg_n_0_[5] ;
  wire \count_24d_srl_r_reg_n_0_[6] ;
  wire \count_24d_srl_r_reg_n_0_[7] ;
  wire \count_24d_srl_r_reg_n_0_[8] ;
  wire \count_24d_srl_r_reg_n_0_[9] ;
  wire [1:0]p_2_in;
  wire [2:2]p_3_out;
  wire \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ;
  wire \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ;
  wire prepare_count_r_reg_gate_n_0;
  wire reset_r;
  wire user_clk;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    DO_CC_i_1
       (.I0(reset_r),
        .I1(p_3_out),
        .I2(p_2_in[1]),
        .I3(p_2_in[0]),
        .I4(cc_count_r),
        .O(DO_CC_i_1_n_0));
  FDRE DO_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_i_1_n_0),
        .Q(DO_CC_I),
        .R(SYSTEM_RESET_reg));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in[1]),
        .R(SYSTEM_RESET_reg));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[0]),
        .R(SYSTEM_RESET_reg));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[0]),
        .Q(cc_count_r),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_flop_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(count_13d_flop_r_reg_r_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ),
        .Q(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_gate_n_0),
        .Q(count_16d_srl_r0),
        .R(SYSTEM_RESET_reg));
  (* srl_bus_name = "U0/\standard_cc_module_i/count_13d_srl_r_reg " *) 
  (* srl_name = "U0/\standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 " *) 
  SRL16E \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ),
        .Q(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1 
       (.I0(count_16d_srl_r0),
        .I1(reset_r),
        .O(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    count_13d_srl_r_reg_gate
       (.I0(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .I1(count_13d_srl_r_reg_r_9_n_0),
        .O(count_13d_srl_r_reg_gate_n_0));
  FDRE count_13d_srl_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_flop_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_0
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_0_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_1
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_0_n_0),
        .Q(count_13d_srl_r_reg_r_1_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_2
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_1_n_0),
        .Q(count_13d_srl_r_reg_r_2_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_3
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_2_n_0),
        .Q(count_13d_srl_r_reg_r_3_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_4
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_3_n_0),
        .Q(count_13d_srl_r_reg_r_4_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_5
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_4_n_0),
        .Q(count_13d_srl_r_reg_r_5_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_6
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_5_n_0),
        .Q(count_13d_srl_r_reg_r_6_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_7
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_6_n_0),
        .Q(count_13d_srl_r_reg_r_7_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_8
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_7_n_0),
        .Q(count_13d_srl_r_reg_r_8_n_0),
        .R(SYSTEM_RESET_reg));
  FDRE count_13d_srl_r_reg_r_9
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_8_n_0),
        .Q(count_13d_srl_r_reg_r_9_n_0),
        .R(SYSTEM_RESET_reg));
  LUT4 #(
    .INIT(16'hFBF8)) 
    count_16d_flop_r_i_1
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .I2(reset_r),
        .I3(count_16d_flop_r),
        .O(count_16d_flop_r_i_1_n_0));
  FDRE count_16d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_16d_flop_r_i_1_n_0),
        .Q(count_16d_flop_r),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(count_16d_flop_r),
        .Q(\count_16d_srl_r_reg_n_0_[0] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[9] ),
        .Q(\count_16d_srl_r_reg_n_0_[10] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[10] ),
        .Q(\count_16d_srl_r_reg_n_0_[11] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[12] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[11] ),
        .Q(\count_16d_srl_r_reg_n_0_[12] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[13] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[12] ),
        .Q(\count_16d_srl_r_reg_n_0_[13] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[14] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[13] ),
        .Q(\count_16d_srl_r_reg_n_0_[14] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[0] ),
        .Q(\count_16d_srl_r_reg_n_0_[1] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[1] ),
        .Q(\count_16d_srl_r_reg_n_0_[2] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[2] ),
        .Q(\count_16d_srl_r_reg_n_0_[3] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[3] ),
        .Q(\count_16d_srl_r_reg_n_0_[4] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[4] ),
        .Q(\count_16d_srl_r_reg_n_0_[5] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[5] ),
        .Q(\count_16d_srl_r_reg_n_0_[6] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[6] ),
        .Q(\count_16d_srl_r_reg_n_0_[7] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[7] ),
        .Q(\count_16d_srl_r_reg_n_0_[8] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_16d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[8] ),
        .Q(\count_16d_srl_r_reg_n_0_[9] ),
        .R(SYSTEM_RESET_reg));
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    count_24d_flop_r_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(count_16d_srl_r0),
        .I3(reset_r),
        .I4(count_24d_flop_r),
        .O(count_24d_flop_r_i_1_n_0));
  FDRE count_24d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_24d_flop_r_i_1_n_0),
        .Q(count_24d_flop_r),
        .R(SYSTEM_RESET_reg));
  LUT2 #(
    .INIT(4'h8)) 
    \count_24d_srl_r[0]_i_1 
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .O(count_24d_srl_r0));
  FDRE \count_24d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(count_24d_flop_r),
        .Q(\count_24d_srl_r_reg_n_0_[0] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[9] ),
        .Q(\count_24d_srl_r_reg_n_0_[10] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[0] ),
        .Q(\count_24d_srl_r_reg_n_0_[1] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[1] ),
        .Q(\count_24d_srl_r_reg_n_0_[2] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[2] ),
        .Q(\count_24d_srl_r_reg_n_0_[3] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[3] ),
        .Q(\count_24d_srl_r_reg_n_0_[4] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[4] ),
        .Q(\count_24d_srl_r_reg_n_0_[5] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[5] ),
        .Q(\count_24d_srl_r_reg_n_0_[6] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[6] ),
        .Q(\count_24d_srl_r_reg_n_0_[7] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[7] ),
        .Q(\count_24d_srl_r_reg_n_0_[8] ),
        .R(SYSTEM_RESET_reg));
  FDRE \count_24d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[8] ),
        .Q(\count_24d_srl_r_reg_n_0_[9] ),
        .R(SYSTEM_RESET_reg));
  (* srl_bus_name = "U0/\standard_cc_module_i/prepare_count_r_reg " *) 
  (* srl_name = "U0/\standard_cc_module_i/prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(cc_idle_count_done_c),
        .Q(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_i_1 
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(count_16d_srl_r0),
        .O(cc_idle_count_done_c));
  FDRE \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2 
       (.C(user_clk),
        .CE(1'b1),
        .D(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ),
        .Q(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .R(1'b0));
  FDRE \prepare_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prepare_count_r_reg_gate_n_0),
        .Q(p_3_out),
        .R(SYSTEM_RESET_reg));
  LUT2 #(
    .INIT(4'h8)) 
    prepare_count_r_reg_gate
       (.I0(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .I1(count_13d_srl_r_reg_r_2_n_0),
        .O(prepare_count_r_reg_gate_n_0));
  FDRE reset_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SYSTEM_RESET_reg),
        .Q(reset_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_SYM_GEN_4BYTE
   (TXCHARISK,
    TXDATA,
    GEN_SP,
    user_clk,
    gen_cc_i,
    GEN_ECP_Buffer,
    GEN_SCP_Buffer,
    gen_a_i,
    D,
    \GEN_PAD_Buffer_reg[0] ,
    gen_v_flop_1_i,
    gen_r_flop_0_i,
    gen_k_flop_0_i,
    Q);
  output [3:0]TXCHARISK;
  output [31:0]TXDATA;
  input GEN_SP;
  input user_clk;
  input gen_cc_i;
  input GEN_ECP_Buffer;
  input GEN_SCP_Buffer;
  input gen_a_i;
  input [1:0]D;
  input [1:0]\GEN_PAD_Buffer_reg[0] ;
  input [2:0]gen_v_flop_1_i;
  input [3:0]gen_r_flop_0_i;
  input [3:0]gen_k_flop_0_i;
  input [31:0]Q;

  wire [1:0]D;
  wire GEN_ECP_Buffer;
  wire [1:0]\GEN_PAD_Buffer_reg[0] ;
  wire GEN_SCP_Buffer;
  wire GEN_SP;
  wire [31:0]Q;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire \TX_CHAR_IS_K_Buffer[3]_i_1_n_0 ;
  wire TX_CHAR_IS_K_Buffer_reg0;
  wire TX_CHAR_IS_K_Buffer_reg03_out;
  wire TX_CHAR_IS_K_Buffer_reg08_out;
  wire \TX_DATA_Buffer[0]_i_1_n_0 ;
  wire \TX_DATA_Buffer[0]_i_2_n_0 ;
  wire \TX_DATA_Buffer[10]_i_1_n_0 ;
  wire \TX_DATA_Buffer[11]_i_1_n_0 ;
  wire \TX_DATA_Buffer[12]_i_1_n_0 ;
  wire \TX_DATA_Buffer[12]_i_2_n_0 ;
  wire \TX_DATA_Buffer[13]_i_1_n_0 ;
  wire \TX_DATA_Buffer[14]_i_1_n_0 ;
  wire \TX_DATA_Buffer[15]_i_1_n_0 ;
  wire \TX_DATA_Buffer[15]_i_2_n_0 ;
  wire \TX_DATA_Buffer[15]_i_3_n_0 ;
  wire \TX_DATA_Buffer[16]_i_1_n_0 ;
  wire \TX_DATA_Buffer[17]_i_1_n_0 ;
  wire \TX_DATA_Buffer[18]_i_1_n_0 ;
  wire \TX_DATA_Buffer[18]_i_2_n_0 ;
  wire \TX_DATA_Buffer[19]_i_1_n_0 ;
  wire \TX_DATA_Buffer[1]_i_1_n_0 ;
  wire \TX_DATA_Buffer[20]_i_1_n_0 ;
  wire \TX_DATA_Buffer[20]_i_2_n_0 ;
  wire \TX_DATA_Buffer[21]_i_1_n_0 ;
  wire \TX_DATA_Buffer[22]_i_1_n_0 ;
  wire \TX_DATA_Buffer[23]_i_1_n_0 ;
  wire \TX_DATA_Buffer[23]_i_2_n_0 ;
  wire \TX_DATA_Buffer[23]_i_3_n_0 ;
  wire \TX_DATA_Buffer[23]_i_4_n_0 ;
  wire \TX_DATA_Buffer[24]_i_1_n_0 ;
  wire \TX_DATA_Buffer[25]_i_1_n_0 ;
  wire \TX_DATA_Buffer[26]_i_1_n_0 ;
  wire \TX_DATA_Buffer[27]_i_1_n_0 ;
  wire \TX_DATA_Buffer[28]_i_1_n_0 ;
  wire \TX_DATA_Buffer[29]_i_1_n_0 ;
  wire \TX_DATA_Buffer[2]_i_1_n_0 ;
  wire \TX_DATA_Buffer[30]_i_1_n_0 ;
  wire \TX_DATA_Buffer[30]_i_2_n_0 ;
  wire \TX_DATA_Buffer[30]_i_3_n_0 ;
  wire \TX_DATA_Buffer[31]_i_1_n_0 ;
  wire \TX_DATA_Buffer[31]_i_2_n_0 ;
  wire \TX_DATA_Buffer[31]_i_3_n_0 ;
  wire \TX_DATA_Buffer[3]_i_1_n_0 ;
  wire \TX_DATA_Buffer[4]_i_1_n_0 ;
  wire \TX_DATA_Buffer[4]_i_2_n_0 ;
  wire \TX_DATA_Buffer[5]_i_1_n_0 ;
  wire \TX_DATA_Buffer[6]_i_1_n_0 ;
  wire \TX_DATA_Buffer[6]_i_2_n_0 ;
  wire \TX_DATA_Buffer[7]_i_2_n_0 ;
  wire \TX_DATA_Buffer[7]_i_3_n_0 ;
  wire \TX_DATA_Buffer[8]_i_1_n_0 ;
  wire \TX_DATA_Buffer[9]_i_1_n_0 ;
  wire TX_DATA_Buffer_reg0;
  wire [7:0]data0;
  wire gen_a_i;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire \gen_ecp_r_reg_n_0_[1] ;
  wire [3:0]gen_k_flop_0_i;
  wire \gen_k_r_reg_n_0_[3] ;
  wire \gen_pad_r_reg_n_0_[1] ;
  wire [3:0]gen_r_flop_0_i;
  wire \gen_r_r_reg_n_0_[3] ;
  wire gen_sp_r;
  wire [2:0]gen_v_flop_1_i;
  wire \gen_v_r_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in12_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in16_in;
  wire p_1_in5_in;
  wire \tx_pe_data_r_reg_n_0_[0] ;
  wire \tx_pe_data_r_reg_n_0_[10] ;
  wire \tx_pe_data_r_reg_n_0_[11] ;
  wire \tx_pe_data_r_reg_n_0_[12] ;
  wire \tx_pe_data_r_reg_n_0_[13] ;
  wire \tx_pe_data_r_reg_n_0_[14] ;
  wire \tx_pe_data_r_reg_n_0_[15] ;
  wire \tx_pe_data_r_reg_n_0_[1] ;
  wire \tx_pe_data_r_reg_n_0_[24] ;
  wire \tx_pe_data_r_reg_n_0_[25] ;
  wire \tx_pe_data_r_reg_n_0_[26] ;
  wire \tx_pe_data_r_reg_n_0_[27] ;
  wire \tx_pe_data_r_reg_n_0_[28] ;
  wire \tx_pe_data_r_reg_n_0_[29] ;
  wire \tx_pe_data_r_reg_n_0_[2] ;
  wire \tx_pe_data_r_reg_n_0_[30] ;
  wire \tx_pe_data_r_reg_n_0_[31] ;
  wire \tx_pe_data_r_reg_n_0_[3] ;
  wire \tx_pe_data_r_reg_n_0_[4] ;
  wire \tx_pe_data_r_reg_n_0_[5] ;
  wire \tx_pe_data_r_reg_n_0_[6] ;
  wire \tx_pe_data_r_reg_n_0_[7] ;
  wire \tx_pe_data_r_reg_n_0_[8] ;
  wire \tx_pe_data_r_reg_n_0_[9] ;
  wire \tx_pe_data_v_r_reg_n_0_[1] ;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF00FF0B)) 
    \TX_CHAR_IS_K_Buffer[0]_i_1 
       (.I0(\gen_pad_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(\gen_v_r_reg_n_0_[3] ),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .O(TX_CHAR_IS_K_Buffer_reg0));
  LUT4 #(
    .INIT(16'hF0F1)) 
    \TX_CHAR_IS_K_Buffer[1]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(gen_cc_r),
        .I3(gen_sp_r),
        .O(TX_CHAR_IS_K_Buffer_reg03_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFF000B)) 
    \TX_CHAR_IS_K_Buffer[2]_i_1 
       (.I0(p_0_in12_in),
        .I1(p_1_in11_in),
        .I2(gen_sp_r),
        .I3(p_1_in5_in),
        .I4(gen_cc_r),
        .O(TX_CHAR_IS_K_Buffer_reg08_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \TX_CHAR_IS_K_Buffer[3]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .O(\TX_CHAR_IS_K_Buffer[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg0),
        .Q(TXCHARISK[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg03_out),
        .Q(TXCHARISK[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg08_out),
        .Q(TXCHARISK[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_CHAR_IS_K_Buffer[3]_i_1_n_0 ),
        .Q(TXCHARISK[0]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA_Buffer[0]_i_1 
       (.I0(\TX_DATA_Buffer[0]_i_2_n_0 ),
        .I1(TX_DATA_Buffer_reg0),
        .I2(TXDATA[24]),
        .O(\TX_DATA_Buffer[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000044E4)) 
    \TX_DATA_Buffer[0]_i_2 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(gen_cc_r),
        .I2(\tx_pe_data_r_reg_n_0_[31] ),
        .I3(\gen_pad_r_reg_n_0_[1] ),
        .I4(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA_Buffer[10]_i_1 
       (.I0(data0[2]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA_Buffer[12]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(gen_cc_r),
        .O(\TX_DATA_Buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \TX_DATA_Buffer[11]_i_1 
       (.I0(data0[3]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(gen_cc_r),
        .O(\TX_DATA_Buffer[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA_Buffer[12]_i_1 
       (.I0(data0[4]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA_Buffer[12]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(gen_cc_r),
        .O(\TX_DATA_Buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \TX_DATA_Buffer[12]_i_2 
       (.I0(p_1_in),
        .I1(gen_cc_r),
        .I2(gen_sp_r),
        .O(\TX_DATA_Buffer[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA_Buffer[13]_i_1 
       (.I0(data0[5]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(\TX_DATA_Buffer[15]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBB88BBBBBB8B)) 
    \TX_DATA_Buffer[14]_i_1 
       (.I0(data0[6]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(p_1_in),
        .I4(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I5(p_0_in),
        .O(\TX_DATA_Buffer[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[15]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I3(p_1_in),
        .I4(p_0_in4_in),
        .I5(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA_Buffer[15]_i_2 
       (.I0(data0[7]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(\TX_DATA_Buffer[15]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF00FFEF)) 
    \TX_DATA_Buffer[15]_i_3 
       (.I0(p_0_in4_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .O(\TX_DATA_Buffer[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h44F0)) 
    \TX_DATA_Buffer[16]_i_1 
       (.I0(p_0_in12_in),
        .I1(\tx_pe_data_r_reg_n_0_[15] ),
        .I2(gen_cc_r),
        .I3(p_1_in11_in),
        .O(\TX_DATA_Buffer[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2F2F2F20)) 
    \TX_DATA_Buffer[17]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[14] ),
        .I1(p_0_in12_in),
        .I2(p_1_in11_in),
        .I3(gen_sp_r),
        .I4(gen_cc_r),
        .O(\TX_DATA_Buffer[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA_Buffer[18]_i_1 
       (.I0(\TX_DATA_Buffer[18]_i_2_n_0 ),
        .I1(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .I2(TXDATA[10]),
        .O(\TX_DATA_Buffer[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \TX_DATA_Buffer[18]_i_2 
       (.I0(\TX_DATA_Buffer[20]_i_2_n_0 ),
        .I1(p_1_in11_in),
        .I2(p_0_in12_in),
        .I3(\tx_pe_data_r_reg_n_0_[13] ),
        .I4(p_1_in16_in),
        .O(\TX_DATA_Buffer[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE0EF)) 
    \TX_DATA_Buffer[19]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[12] ),
        .I1(p_0_in12_in),
        .I2(p_1_in11_in),
        .I3(gen_cc_r),
        .O(\TX_DATA_Buffer[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2F2F2F20)) 
    \TX_DATA_Buffer[1]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[30] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(gen_sp_r),
        .I4(gen_cc_r),
        .O(\TX_DATA_Buffer[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \TX_DATA_Buffer[20]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[11] ),
        .I1(p_0_in12_in),
        .I2(p_1_in11_in),
        .I3(\TX_DATA_Buffer[20]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF0302)) 
    \TX_DATA_Buffer[20]_i_2 
       (.I0(p_0_in8_in),
        .I1(gen_sp_r),
        .I2(p_1_in5_in),
        .I3(p_0_in6_in),
        .I4(gen_cc_r),
        .O(\TX_DATA_Buffer[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \TX_DATA_Buffer[21]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[10] ),
        .I1(p_0_in12_in),
        .I2(p_1_in11_in),
        .I3(\TX_DATA_Buffer[23]_i_4_n_0 ),
        .O(\TX_DATA_Buffer[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F2F20202F2F202F)) 
    \TX_DATA_Buffer[22]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[9] ),
        .I1(p_0_in12_in),
        .I2(p_1_in11_in),
        .I3(p_0_in8_in),
        .I4(\TX_DATA_Buffer[23]_i_3_n_0 ),
        .I5(p_0_in6_in),
        .O(\TX_DATA_Buffer[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TX_DATA_Buffer[23]_i_1 
       (.I0(p_1_in11_in),
        .I1(p_0_in6_in),
        .I2(\TX_DATA_Buffer[23]_i_3_n_0 ),
        .I3(p_0_in8_in),
        .I4(p_1_in16_in),
        .O(\TX_DATA_Buffer[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \TX_DATA_Buffer[23]_i_2 
       (.I0(\tx_pe_data_r_reg_n_0_[8] ),
        .I1(p_0_in12_in),
        .I2(p_1_in11_in),
        .I3(\TX_DATA_Buffer[23]_i_4_n_0 ),
        .O(\TX_DATA_Buffer[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA_Buffer[23]_i_3 
       (.I0(p_1_in5_in),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .O(\TX_DATA_Buffer[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFF00FFEF)) 
    \TX_DATA_Buffer[23]_i_4 
       (.I0(p_0_in8_in),
        .I1(p_1_in5_in),
        .I2(p_0_in6_in),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .O(\TX_DATA_Buffer[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA_Buffer[24]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[7] ),
        .I1(p_1_in11_in),
        .I2(gen_cc_r),
        .O(\TX_DATA_Buffer[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA_Buffer[25]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[6] ),
        .I1(p_1_in11_in),
        .I2(gen_cc_r),
        .O(\TX_DATA_Buffer[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \TX_DATA_Buffer[26]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[5] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA_Buffer[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \TX_DATA_Buffer[27]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[4] ),
        .I1(p_1_in11_in),
        .I2(gen_cc_r),
        .O(\TX_DATA_Buffer[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \TX_DATA_Buffer[28]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[3] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA_Buffer[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBBBBBBB)) 
    \TX_DATA_Buffer[29]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[2] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA_Buffer[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \TX_DATA_Buffer[2]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[29] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA_Buffer[4]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA_Buffer[30]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[1] ),
        .I1(p_1_in11_in),
        .I2(p_0_in14_in),
        .I3(\TX_DATA_Buffer[30]_i_2_n_0 ),
        .I4(p_0_in16_in),
        .I5(\TX_DATA_Buffer[30]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \TX_DATA_Buffer[30]_i_2 
       (.I0(gen_sp_r),
        .I1(gen_a_r),
        .I2(gen_cc_r),
        .O(\TX_DATA_Buffer[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \TX_DATA_Buffer[30]_i_3 
       (.I0(gen_cc_r),
        .I1(gen_sp_r),
        .O(\TX_DATA_Buffer[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[31]_i_1 
       (.I0(gen_sp_r),
        .I1(gen_cc_r),
        .I2(p_1_in11_in),
        .I3(p_0_in16_in),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA_Buffer[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8888BBBBB8BB)) 
    \TX_DATA_Buffer[31]_i_2 
       (.I0(\tx_pe_data_r_reg_n_0_[0] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(p_0_in14_in),
        .I4(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I5(gen_a_r),
        .O(\TX_DATA_Buffer[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA_Buffer[31]_i_3 
       (.I0(gen_sp_r),
        .I1(gen_cc_r),
        .O(\TX_DATA_Buffer[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE0EF)) 
    \TX_DATA_Buffer[3]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[28] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .O(\TX_DATA_Buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \TX_DATA_Buffer[4]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[27] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA_Buffer[4]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFF0302)) 
    \TX_DATA_Buffer[4]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(gen_sp_r),
        .I3(\gen_r_r_reg_n_0_[3] ),
        .I4(gen_cc_r),
        .O(\TX_DATA_Buffer[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \TX_DATA_Buffer[5]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[26] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F2F20202F2F202F)) 
    \TX_DATA_Buffer[6]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[25] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\gen_k_r_reg_n_0_[3] ),
        .I4(\TX_DATA_Buffer[6]_i_2_n_0 ),
        .I5(\gen_r_r_reg_n_0_[3] ),
        .O(\TX_DATA_Buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA_Buffer[6]_i_2 
       (.I0(gen_cc_r),
        .I1(gen_sp_r),
        .I2(\gen_v_r_reg_n_0_[3] ),
        .O(\TX_DATA_Buffer[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[7]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(\gen_r_r_reg_n_0_[3] ),
        .I2(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I3(\gen_v_r_reg_n_0_[3] ),
        .I4(\gen_k_r_reg_n_0_[3] ),
        .I5(\gen_ecp_r_reg_n_0_[1] ),
        .O(TX_DATA_Buffer_reg0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \TX_DATA_Buffer[7]_i_2 
       (.I0(\tx_pe_data_r_reg_n_0_[24] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFF00FFEF)) 
    \TX_DATA_Buffer[7]_i_3 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_r_r_reg_n_0_[3] ),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .O(\TX_DATA_Buffer[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA_Buffer[8]_i_1 
       (.I0(data0[0]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(gen_cc_r),
        .O(\TX_DATA_Buffer[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \TX_DATA_Buffer[9]_i_1 
       (.I0(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(data0[1]),
        .I3(\gen_ecp_r_reg_n_0_[1] ),
        .I4(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .I5(TXDATA[17]),
        .O(\TX_DATA_Buffer[9]_i_1_n_0 ));
  FDRE \TX_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA_Buffer[0]_i_1_n_0 ),
        .Q(TXDATA[24]),
        .R(1'b0));
  FDSE \TX_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[10]_i_1_n_0 ),
        .Q(TXDATA[18]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[11]_i_1_n_0 ),
        .Q(TXDATA[19]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[12]_i_1_n_0 ),
        .Q(TXDATA[20]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[13]_i_1_n_0 ),
        .Q(TXDATA[21]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[14]_i_1_n_0 ),
        .Q(TXDATA[22]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[15]_i_2_n_0 ),
        .Q(TXDATA[23]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[16]_i_1_n_0 ),
        .Q(TXDATA[8]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[17]_i_1_n_0 ),
        .Q(TXDATA[9]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA_Buffer[18]_i_1_n_0 ),
        .Q(TXDATA[10]),
        .R(1'b0));
  FDSE \TX_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[19]_i_1_n_0 ),
        .Q(TXDATA[11]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[1]_i_1_n_0 ),
        .Q(TXDATA[25]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[20]_i_1_n_0 ),
        .Q(TXDATA[12]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[21]_i_1_n_0 ),
        .Q(TXDATA[13]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[22]_i_1_n_0 ),
        .Q(TXDATA[14]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[23]_i_2_n_0 ),
        .Q(TXDATA[15]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[24]_i_1_n_0 ),
        .Q(TXDATA[0]),
        .R(p_1_in16_in));
  FDRE \TX_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[25]_i_1_n_0 ),
        .Q(TXDATA[1]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[26]_i_1_n_0 ),
        .Q(TXDATA[2]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[27]_i_1_n_0 ),
        .Q(TXDATA[3]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[28]_i_1_n_0 ),
        .Q(TXDATA[4]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[29]_i_1_n_0 ),
        .Q(TXDATA[5]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[2]_i_1_n_0 ),
        .Q(TXDATA[26]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[30]_i_1_n_0 ),
        .Q(TXDATA[6]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[31]_i_2_n_0 ),
        .Q(TXDATA[7]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[3]_i_1_n_0 ),
        .Q(TXDATA[27]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[4]_i_1_n_0 ),
        .Q(TXDATA[28]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[5]_i_1_n_0 ),
        .Q(TXDATA[29]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[6]_i_1_n_0 ),
        .Q(TXDATA[30]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[7]_i_2_n_0 ),
        .Q(TXDATA[31]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDSE \TX_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[8]_i_1_n_0 ),
        .Q(TXDATA[16]),
        .S(\gen_ecp_r_reg_n_0_[1] ));
  FDRE \TX_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA_Buffer[9]_i_1_n_0 ),
        .Q(TXDATA[17]),
        .R(1'b0));
  FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_i),
        .Q(gen_a_r),
        .R(1'b0));
  FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
  FDRE \gen_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP_Buffer),
        .Q(\gen_ecp_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_0_i[3]),
        .Q(p_0_in16_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_0_i[2]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_0_i[1]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_0_i[0]),
        .Q(\gen_k_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GEN_PAD_Buffer_reg[0] [1]),
        .Q(p_0_in12_in),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GEN_PAD_Buffer_reg[0] [0]),
        .Q(\gen_pad_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_0_i[3]),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_0_i[2]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_0_i[1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_0_i[0]),
        .Q(\gen_r_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP_Buffer),
        .Q(p_1_in16_in),
        .R(1'b0));
  FDRE gen_sp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SP),
        .Q(gen_sp_r),
        .R(1'b0));
  FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_v_flop_1_i[2]),
        .Q(p_1_in5_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_v_flop_1_i[1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_v_flop_1_i[0]),
        .Q(\gen_v_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(\tx_pe_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(\tx_pe_data_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(\tx_pe_data_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(\tx_pe_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(\tx_pe_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(\tx_pe_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(\tx_pe_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(\tx_pe_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\tx_pe_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\tx_pe_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\tx_pe_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\tx_pe_data_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\tx_pe_data_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\tx_pe_data_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(\tx_pe_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\tx_pe_data_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\tx_pe_data_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(\tx_pe_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(\tx_pe_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(\tx_pe_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(\tx_pe_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(\tx_pe_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(\tx_pe_data_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(\tx_pe_data_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_1_in11_in),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\tx_pe_data_v_r_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE
   (TX_LANE_UP,
    TXCHARISK,
    ENABLE_ERR_DETECT,
    CHANNEL_HARD_ERR_Buffer_reg,
    TXDATA,
    tx_reset_lanes_i,
    user_clk,
    tx_aligned_simplex_r,
    gen_cc_i,
    GEN_ECP_Buffer,
    GEN_SCP_Buffer,
    gen_a_i,
    ENABLE_ERR_DETECT_Buffer_reg,
    D,
    \GEN_PAD_Buffer_reg[0] ,
    gen_v_flop_1_i,
    gen_r_flop_0_i,
    gen_k_flop_0_i,
    Q);
  output TX_LANE_UP;
  output [3:0]TXCHARISK;
  output ENABLE_ERR_DETECT;
  output CHANNEL_HARD_ERR_Buffer_reg;
  output [31:0]TXDATA;
  input tx_reset_lanes_i;
  input user_clk;
  input tx_aligned_simplex_r;
  input gen_cc_i;
  input GEN_ECP_Buffer;
  input GEN_SCP_Buffer;
  input gen_a_i;
  input ENABLE_ERR_DETECT_Buffer_reg;
  input [1:0]D;
  input [1:0]\GEN_PAD_Buffer_reg[0] ;
  input [2:0]gen_v_flop_1_i;
  input [3:0]gen_r_flop_0_i;
  input [3:0]gen_k_flop_0_i;
  input [31:0]Q;

  wire CHANNEL_HARD_ERR_Buffer_reg;
  wire [1:0]D;
  wire ENABLE_ERR_DETECT;
  wire ENABLE_ERR_DETECT_Buffer_reg;
  wire GEN_ECP_Buffer;
  wire [1:0]\GEN_PAD_Buffer_reg[0] ;
  wire GEN_SCP_Buffer;
  wire GEN_SP;
  wire [31:0]Q;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire TX_LANE_UP;
  wire begin_r0;
  wire gen_a_i;
  wire gen_cc_i;
  wire [3:0]gen_k_flop_0_i;
  wire [3:0]gen_r_flop_0_i;
  wire [2:0]gen_v_flop_1_i;
  wire tx_aligned_simplex_r;
  wire tx_reset_lanes_i;
  wire user_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_SYM_GEN_4BYTE system_aurora_8b10b_0_0_sym_gen_4byte_i
       (.D(D),
        .GEN_ECP_Buffer(GEN_ECP_Buffer),
        .\GEN_PAD_Buffer_reg[0] (\GEN_PAD_Buffer_reg[0] ),
        .GEN_SCP_Buffer(GEN_SCP_Buffer),
        .GEN_SP(GEN_SP),
        .Q(Q),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_k_flop_0_i(gen_k_flop_0_i),
        .gen_r_flop_0_i(gen_r_flop_0_i),
        .gen_v_flop_1_i(gen_v_flop_1_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX system_aurora_8b10b_0_0_tx_err_detect_simplex_i
       (.CHANNEL_HARD_ERR_Buffer_reg(CHANNEL_HARD_ERR_Buffer_reg),
        .ENABLE_ERR_DETECT(ENABLE_ERR_DETECT),
        .ENABLE_ERR_DETECT_Buffer_reg(ENABLE_ERR_DETECT_Buffer_reg),
        .SR(begin_r0),
        .tx_reset_lanes_i(tx_reset_lanes_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE system_aurora_8b10b_0_0_tx_lane_init_simplex_sm_i
       (.ENABLE_ERR_DETECT(ENABLE_ERR_DETECT),
        .GEN_SP(GEN_SP),
        .SR(begin_r0),
        .TX_LANE_UP(TX_LANE_UP),
        .tx_aligned_simplex_r(tx_aligned_simplex_r),
        .tx_reset_lanes_i(tx_reset_lanes_i),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX
   (reset_channel_i,
    TX_HARD_ERR,
    tx_reset_simplex_r_reg,
    wait_for_lane_up_r0,
    TX_LANE_UP,
    user_clk,
    hard_err_flop_r_reg,
    \simplex_timer_r_reg[11] ,
    tx_reset_simplex_r,
    \simplex_timer_r_reg[11]_0 ,
    \simplex_timer_r_reg[8] ,
    simplex_timer_r_reg,
    SYSTEM_RESET_reg,
    POWER_DOWN);
  output reset_channel_i;
  output TX_HARD_ERR;
  output tx_reset_simplex_r_reg;
  output wait_for_lane_up_r0;
  input TX_LANE_UP;
  input user_clk;
  input hard_err_flop_r_reg;
  input \simplex_timer_r_reg[11] ;
  input tx_reset_simplex_r;
  input \simplex_timer_r_reg[11]_0 ;
  input \simplex_timer_r_reg[8] ;
  input [0:0]simplex_timer_r_reg;
  input SYSTEM_RESET_reg;
  input POWER_DOWN;

  wire POWER_DOWN;
  wire RESET_CHANNEL_Buffer_i_1_n_0;
  wire SYSTEM_RESET_reg;
  wire TX_HARD_ERR;
  wire TX_LANE_UP;
  wire hard_err_flop_r_reg;
  wire hard_err_r_reg_srl2_n_0;
  wire lane_up_r;
  wire reset_channel_i;
  wire [0:0]simplex_timer_r_reg;
  wire \simplex_timer_r_reg[11] ;
  wire \simplex_timer_r_reg[11]_0 ;
  wire \simplex_timer_r_reg[8] ;
  wire tx_reset_simplex_r;
  wire tx_reset_simplex_r_i_3_n_0;
  wire tx_reset_simplex_r_reg;
  wire user_clk;
  wire wait_for_lane_up_r0;

  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_HARD_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_r_reg_srl2_n_0),
        .Q(TX_HARD_ERR),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    RESET_CHANNEL_Buffer_i_1
       (.I0(POWER_DOWN),
        .I1(lane_up_r),
        .O(RESET_CHANNEL_Buffer_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    RESET_CHANNEL_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RESET_CHANNEL_Buffer_i_1_n_0),
        .Q(reset_channel_i),
        .R(1'b0));
  (* srl_name = "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/tx_channel_err_detect_simplex_i/hard_err_r_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    hard_err_r_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(hard_err_flop_r_reg),
        .Q(hard_err_r_reg_srl2_n_0));
  FDRE lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_LANE_UP),
        .Q(lane_up_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h404040F040404000)) 
    tx_reset_simplex_r_i_1
       (.I0(\simplex_timer_r_reg[11] ),
        .I1(tx_reset_simplex_r),
        .I2(tx_reset_simplex_r_i_3_n_0),
        .I3(\simplex_timer_r_reg[11]_0 ),
        .I4(\simplex_timer_r_reg[8] ),
        .I5(simplex_timer_r_reg),
        .O(tx_reset_simplex_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    tx_reset_simplex_r_i_3
       (.I0(TX_HARD_ERR),
        .I1(SYSTEM_RESET_reg),
        .O(tx_reset_simplex_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    wait_for_lane_up_r_i_1
       (.I0(reset_channel_i),
        .I1(tx_reset_simplex_r),
        .I2(SYSTEM_RESET_reg),
        .O(wait_for_lane_up_r0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX
   (TX_CHANNEL_UP,
    tx_reset_lanes_i,
    gen_ver_i,
    D0_out,
    in_frame_r_reg,
    user_clk,
    tx_verify_simplex_r,
    wait_for_lane_up_r0,
    SYSTEM_RESET_reg,
    tx_reset_simplex_r,
    reset_channel_i,
    DID_VER_Buffer_reg);
  output TX_CHANNEL_UP;
  output tx_reset_lanes_i;
  output gen_ver_i;
  output D0_out;
  output in_frame_r_reg;
  input user_clk;
  input tx_verify_simplex_r;
  input wait_for_lane_up_r0;
  input SYSTEM_RESET_reg;
  input tx_reset_simplex_r;
  input reset_channel_i;
  input DID_VER_Buffer_reg;

  wire D;
  wire D0_out;
  wire DID_VER_Buffer_reg;
  wire SYSTEM_RESET_reg;
  wire TX_CHANNEL_UP;
  wire \free_count_r[10]_i_2_n_0 ;
  wire \free_count_r[10]_i_3_n_0 ;
  wire \free_count_r[10]_i_4_n_0 ;
  wire \free_count_r[10]_i_5_n_0 ;
  wire \free_count_r[14]_i_2_n_0 ;
  wire \free_count_r[14]_i_3_n_0 ;
  wire \free_count_r[14]_i_4_n_0 ;
  wire \free_count_r[14]_i_5_n_0 ;
  wire \free_count_r[2]_i_2_n_0 ;
  wire \free_count_r[2]_i_3_n_0 ;
  wire \free_count_r[2]_i_4_n_0 ;
  wire \free_count_r[6]_i_2_n_0 ;
  wire \free_count_r[6]_i_3_n_0 ;
  wire \free_count_r[6]_i_4_n_0 ;
  wire \free_count_r[6]_i_5_n_0 ;
  wire [0:14]free_count_r_reg;
  wire \free_count_r_reg[10]_i_1_n_0 ;
  wire \free_count_r_reg[10]_i_1_n_1 ;
  wire \free_count_r_reg[10]_i_1_n_2 ;
  wire \free_count_r_reg[10]_i_1_n_3 ;
  wire \free_count_r_reg[10]_i_1_n_4 ;
  wire \free_count_r_reg[10]_i_1_n_5 ;
  wire \free_count_r_reg[10]_i_1_n_6 ;
  wire \free_count_r_reg[10]_i_1_n_7 ;
  wire \free_count_r_reg[14]_i_1_n_0 ;
  wire \free_count_r_reg[14]_i_1_n_1 ;
  wire \free_count_r_reg[14]_i_1_n_2 ;
  wire \free_count_r_reg[14]_i_1_n_3 ;
  wire \free_count_r_reg[14]_i_1_n_4 ;
  wire \free_count_r_reg[14]_i_1_n_5 ;
  wire \free_count_r_reg[14]_i_1_n_6 ;
  wire \free_count_r_reg[14]_i_1_n_7 ;
  wire \free_count_r_reg[2]_i_1_n_2 ;
  wire \free_count_r_reg[2]_i_1_n_3 ;
  wire \free_count_r_reg[2]_i_1_n_5 ;
  wire \free_count_r_reg[2]_i_1_n_6 ;
  wire \free_count_r_reg[2]_i_1_n_7 ;
  wire \free_count_r_reg[6]_i_1_n_0 ;
  wire \free_count_r_reg[6]_i_1_n_1 ;
  wire \free_count_r_reg[6]_i_1_n_2 ;
  wire \free_count_r_reg[6]_i_1_n_3 ;
  wire \free_count_r_reg[6]_i_1_n_4 ;
  wire \free_count_r_reg[6]_i_1_n_5 ;
  wire \free_count_r_reg[6]_i_1_n_6 ;
  wire \free_count_r_reg[6]_i_1_n_7 ;
  wire gen_ver_i;
  wire in_frame_r_reg;
  wire next_ready_c;
  wire next_verify_c;
  wire ready_r;
  wire reset_channel_i;
  wire reset_lanes_flop_i_i_1_n_0;
  wire tx_reset_lanes_i;
  wire tx_reset_simplex_r;
  wire tx_verify_r;
  wire tx_verify_simplex_r;
  wire user_clk;
  wire verify_watchdog_r0;
  wire \verify_watchdog_r_reg[14]_srl15_i_2_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_3_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_4_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_n_0 ;
  wire \verify_watchdog_r_reg_n_0_[15] ;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:2]\NLW_free_count_r_reg[2]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_free_count_r_reg[2]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    GEN_ECP_Buffer_i_1
       (.I0(TX_CHANNEL_UP),
        .O(in_frame_r_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[10]_i_2 
       (.I0(free_count_r_reg[7]),
        .O(\free_count_r[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[10]_i_3 
       (.I0(free_count_r_reg[8]),
        .O(\free_count_r[10]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[10]_i_4 
       (.I0(free_count_r_reg[9]),
        .O(\free_count_r[10]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[10]_i_5 
       (.I0(free_count_r_reg[10]),
        .O(\free_count_r[10]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[14]_i_2 
       (.I0(free_count_r_reg[11]),
        .O(\free_count_r[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[14]_i_3 
       (.I0(free_count_r_reg[12]),
        .O(\free_count_r[14]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[14]_i_4 
       (.I0(free_count_r_reg[13]),
        .O(\free_count_r[14]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[14]_i_5 
       (.I0(free_count_r_reg[14]),
        .O(\free_count_r[14]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[2]_i_2 
       (.I0(free_count_r_reg[0]),
        .O(\free_count_r[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[2]_i_3 
       (.I0(free_count_r_reg[1]),
        .O(\free_count_r[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[2]_i_4 
       (.I0(free_count_r_reg[2]),
        .O(\free_count_r[2]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[6]_i_2 
       (.I0(free_count_r_reg[3]),
        .O(\free_count_r[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[6]_i_3 
       (.I0(free_count_r_reg[4]),
        .O(\free_count_r[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[6]_i_4 
       (.I0(free_count_r_reg[5]),
        .O(\free_count_r[6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[6]_i_5 
       (.I0(free_count_r_reg[6]),
        .O(\free_count_r[6]_i_5_n_0 ));
  FDSE \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[2]_i_1_n_5 ),
        .Q(free_count_r_reg[0]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[10]_i_1_n_7 ),
        .Q(free_count_r_reg[10]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[10]_i_1 
       (.CI(\free_count_r_reg[14]_i_1_n_0 ),
        .CO({\free_count_r_reg[10]_i_1_n_0 ,\free_count_r_reg[10]_i_1_n_1 ,\free_count_r_reg[10]_i_1_n_2 ,\free_count_r_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[10]_i_1_n_4 ,\free_count_r_reg[10]_i_1_n_5 ,\free_count_r_reg[10]_i_1_n_6 ,\free_count_r_reg[10]_i_1_n_7 }),
        .S({\free_count_r[10]_i_2_n_0 ,\free_count_r[10]_i_3_n_0 ,\free_count_r[10]_i_4_n_0 ,\free_count_r[10]_i_5_n_0 }));
  FDSE \free_count_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[14]_i_1_n_4 ),
        .Q(free_count_r_reg[11]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[14]_i_1_n_5 ),
        .Q(free_count_r_reg[12]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[14]_i_1_n_6 ),
        .Q(free_count_r_reg[13]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[14]_i_1_n_7 ),
        .Q(free_count_r_reg[14]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[14]_i_1 
       (.CI(1'b0),
        .CO({\free_count_r_reg[14]_i_1_n_0 ,\free_count_r_reg[14]_i_1_n_1 ,\free_count_r_reg[14]_i_1_n_2 ,\free_count_r_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[14]_i_1_n_4 ,\free_count_r_reg[14]_i_1_n_5 ,\free_count_r_reg[14]_i_1_n_6 ,\free_count_r_reg[14]_i_1_n_7 }),
        .S({\free_count_r[14]_i_2_n_0 ,\free_count_r[14]_i_3_n_0 ,\free_count_r[14]_i_4_n_0 ,\free_count_r[14]_i_5_n_0 }));
  FDSE \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[2]_i_1_n_6 ),
        .Q(free_count_r_reg[1]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[2]_i_1_n_7 ),
        .Q(free_count_r_reg[2]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[2]_i_1 
       (.CI(\free_count_r_reg[6]_i_1_n_0 ),
        .CO({\NLW_free_count_r_reg[2]_i_1_CO_UNCONNECTED [3:2],\free_count_r_reg[2]_i_1_n_2 ,\free_count_r_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_free_count_r_reg[2]_i_1_O_UNCONNECTED [3],\free_count_r_reg[2]_i_1_n_5 ,\free_count_r_reg[2]_i_1_n_6 ,\free_count_r_reg[2]_i_1_n_7 }),
        .S({1'b0,\free_count_r[2]_i_2_n_0 ,\free_count_r[2]_i_3_n_0 ,\free_count_r[2]_i_4_n_0 }));
  FDSE \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[6]_i_1_n_4 ),
        .Q(free_count_r_reg[3]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[6]_i_1_n_5 ),
        .Q(free_count_r_reg[4]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[6]_i_1_n_6 ),
        .Q(free_count_r_reg[5]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[6]_i_1_n_7 ),
        .Q(free_count_r_reg[6]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[6]_i_1 
       (.CI(\free_count_r_reg[10]_i_1_n_0 ),
        .CO({\free_count_r_reg[6]_i_1_n_0 ,\free_count_r_reg[6]_i_1_n_1 ,\free_count_r_reg[6]_i_1_n_2 ,\free_count_r_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[6]_i_1_n_4 ,\free_count_r_reg[6]_i_1_n_5 ,\free_count_r_reg[6]_i_1_n_6 ,\free_count_r_reg[6]_i_1_n_7 }),
        .S({\free_count_r[6]_i_2_n_0 ,\free_count_r[6]_i_3_n_0 ,\free_count_r[6]_i_4_n_0 ,\free_count_r[6]_i_5_n_0 }));
  FDSE \free_count_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[10]_i_1_n_4 ),
        .Q(free_count_r_reg[7]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[10]_i_1_n_5 ),
        .Q(free_count_r_reg[8]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[10]_i_1_n_6 ),
        .Q(free_count_r_reg[9]),
        .S(wait_for_lane_up_r0));
  LUT2 #(
    .INIT(4'h8)) 
    gen_v_flop_1_i_i_1
       (.I0(gen_ver_i),
        .I1(DID_VER_Buffer_reg),
        .O(D0_out));
  FDRE ready_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(D),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    ready_r_i_1__0
       (.I0(tx_verify_r),
        .I1(gen_ver_i),
        .I2(ready_r),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(wait_for_lane_up_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    reset_lanes_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_lanes_flop_i_i_1_n_0),
        .Q(tx_reset_lanes_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEFEEE)) 
    reset_lanes_flop_i_i_1
       (.I0(SYSTEM_RESET_reg),
        .I1(tx_reset_simplex_r),
        .I2(gen_ver_i),
        .I3(\verify_watchdog_r_reg_n_0_[15] ),
        .I4(wait_for_lane_up_r),
        .I5(reset_channel_i),
        .O(reset_lanes_flop_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    tx_channel_up_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(TX_CHANNEL_UP),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    tx_verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_verify_simplex_r),
        .Q(tx_verify_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    verify_r_i_1
       (.I0(tx_verify_r),
        .I1(gen_ver_i),
        .I2(wait_for_lane_up_r),
        .O(next_verify_c));
  FDRE verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
  (* srl_bus_name = "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/tx_channel_init_sm_simplex_i/verify_watchdog_r_reg " *) 
  (* srl_name = "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/tx_channel_init_sm_simplex_i/verify_watchdog_r_reg[14]_srl15 " *) 
  SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(verify_watchdog_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\verify_watchdog_r_reg[14]_srl15_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ),
        .I1(free_count_r_reg[14]),
        .I2(free_count_r_reg[13]),
        .I3(free_count_r_reg[12]),
        .I4(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ),
        .I5(gen_ver_i),
        .O(verify_watchdog_r0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[2]),
        .I2(free_count_r_reg[1]),
        .I3(free_count_r_reg[0]),
        .I4(\verify_watchdog_r_reg[14]_srl15_i_4_n_0 ),
        .O(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[8]),
        .I1(free_count_r_reg[9]),
        .I2(free_count_r_reg[10]),
        .I3(free_count_r_reg[11]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \verify_watchdog_r_reg[14]_srl15_i_4 
       (.I0(free_count_r_reg[4]),
        .I1(free_count_r_reg[5]),
        .I2(free_count_r_reg[6]),
        .I3(free_count_r_reg[7]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_4_n_0 ));
  FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(verify_watchdog_r0),
        .D(\verify_watchdog_r_reg[14]_srl15_n_0 ),
        .Q(\verify_watchdog_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_lane_up_r0),
        .Q(wait_for_lane_up_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX
   (SR,
    CHANNEL_HARD_ERR_Buffer_reg,
    ENABLE_ERR_DETECT_Buffer_reg,
    user_clk,
    tx_reset_lanes_i,
    ENABLE_ERR_DETECT);
  output [0:0]SR;
  output CHANNEL_HARD_ERR_Buffer_reg;
  input ENABLE_ERR_DETECT_Buffer_reg;
  input user_clk;
  input tx_reset_lanes_i;
  input ENABLE_ERR_DETECT;

  wire CHANNEL_HARD_ERR_Buffer_reg;
  wire ENABLE_ERR_DETECT;
  wire ENABLE_ERR_DETECT_Buffer_reg;
  wire [0:0]SR;
  wire hard_err_reset_i;
  wire tx_reset_lanes_i;
  wire user_clk;

  LUT2 #(
    .INIT(4'hE)) 
    begin_r_i_1
       (.I0(hard_err_reset_i),
        .I1(tx_reset_lanes_i),
        .O(SR));
  FDRE hard_err_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ENABLE_ERR_DETECT_Buffer_reg),
        .Q(hard_err_reset_i),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    hard_err_r_reg_srl2_i_1
       (.I0(hard_err_reset_i),
        .I1(ENABLE_ERR_DETECT),
        .O(CHANNEL_HARD_ERR_Buffer_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX
   (TX_CHANNEL_UP,
    tx_reset_lanes_i,
    \gen_v_r_reg[1] ,
    gen_a_i,
    \gen_k_r_reg[0] ,
    \gen_r_r_reg[0] ,
    TX_HARD_ERR,
    tx_reset_simplex_r_reg,
    in_frame_r_reg,
    user_clk,
    tx_verify_simplex_r,
    TX_LANE_UP,
    hard_err_flop_r_reg,
    \simplex_timer_r_reg[11] ,
    tx_reset_simplex_r,
    \simplex_timer_r_reg[11]_0 ,
    \simplex_timer_r_reg[8] ,
    simplex_timer_r_reg,
    SYSTEM_RESET_reg,
    POWER_DOWN);
  output TX_CHANNEL_UP;
  output tx_reset_lanes_i;
  output [2:0]\gen_v_r_reg[1] ;
  output gen_a_i;
  output [3:0]\gen_k_r_reg[0] ;
  output [3:0]\gen_r_r_reg[0] ;
  output TX_HARD_ERR;
  output tx_reset_simplex_r_reg;
  output in_frame_r_reg;
  input user_clk;
  input tx_verify_simplex_r;
  input TX_LANE_UP;
  input hard_err_flop_r_reg;
  input \simplex_timer_r_reg[11] ;
  input tx_reset_simplex_r;
  input \simplex_timer_r_reg[11]_0 ;
  input \simplex_timer_r_reg[8] ;
  input [0:0]simplex_timer_r_reg;
  input SYSTEM_RESET_reg;
  input POWER_DOWN;

  wire D0_out;
  wire POWER_DOWN;
  wire SYSTEM_RESET_reg;
  wire TX_CHANNEL_UP;
  wire TX_HARD_ERR;
  wire TX_LANE_UP;
  wire gen_a_i;
  wire [3:0]\gen_k_r_reg[0] ;
  wire [3:0]\gen_r_r_reg[0] ;
  wire [2:0]\gen_v_r_reg[1] ;
  wire gen_ver_i;
  wire hard_err_flop_r_reg;
  wire idle_and_ver_gen_i_n_12;
  wire in_frame_r_reg;
  wire reset_channel_i;
  wire [0:0]simplex_timer_r_reg;
  wire \simplex_timer_r_reg[11] ;
  wire \simplex_timer_r_reg[11]_0 ;
  wire \simplex_timer_r_reg[8] ;
  wire tx_reset_lanes_i;
  wire tx_reset_simplex_r;
  wire tx_reset_simplex_r_reg;
  wire tx_verify_simplex_r;
  wire user_clk;
  wire wait_for_lane_up_r0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.D0_out(D0_out),
        .SYSTEM_RESET_reg(SYSTEM_RESET_reg),
        .gen_a_i(gen_a_i),
        .gen_k_flop_0_i_0(idle_and_ver_gen_i_n_12),
        .\gen_k_r_reg[0] (\gen_k_r_reg[0] ),
        .\gen_r_r_reg[0] (\gen_r_r_reg[0] ),
        .\gen_v_r_reg[1] (\gen_v_r_reg[1] ),
        .gen_ver_i(gen_ver_i),
        .tx_reset_simplex_r(tx_reset_simplex_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX tx_channel_err_detect_simplex_i
       (.POWER_DOWN(POWER_DOWN),
        .SYSTEM_RESET_reg(SYSTEM_RESET_reg),
        .TX_HARD_ERR(TX_HARD_ERR),
        .TX_LANE_UP(TX_LANE_UP),
        .hard_err_flop_r_reg(hard_err_flop_r_reg),
        .reset_channel_i(reset_channel_i),
        .simplex_timer_r_reg(simplex_timer_r_reg),
        .\simplex_timer_r_reg[11] (\simplex_timer_r_reg[11] ),
        .\simplex_timer_r_reg[11]_0 (\simplex_timer_r_reg[11]_0 ),
        .\simplex_timer_r_reg[8] (\simplex_timer_r_reg[8] ),
        .tx_reset_simplex_r(tx_reset_simplex_r),
        .tx_reset_simplex_r_reg(tx_reset_simplex_r_reg),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX tx_channel_init_sm_simplex_i
       (.D0_out(D0_out),
        .DID_VER_Buffer_reg(idle_and_ver_gen_i_n_12),
        .SYSTEM_RESET_reg(SYSTEM_RESET_reg),
        .TX_CHANNEL_UP(TX_CHANNEL_UP),
        .gen_ver_i(gen_ver_i),
        .in_frame_r_reg(in_frame_r_reg),
        .reset_channel_i(reset_channel_i),
        .tx_reset_lanes_i(tx_reset_lanes_i),
        .tx_reset_simplex_r(tx_reset_simplex_r),
        .tx_verify_simplex_r(tx_verify_simplex_r),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE
   (TX_LANE_UP,
    ENABLE_ERR_DETECT,
    GEN_SP,
    tx_reset_lanes_i,
    user_clk,
    SR,
    tx_aligned_simplex_r);
  output TX_LANE_UP;
  output ENABLE_ERR_DETECT;
  output GEN_SP;
  input tx_reset_lanes_i;
  input user_clk;
  input [0:0]SR;
  input tx_aligned_simplex_r;

  wire D;
  wire ENABLE_ERR_DETECT;
  wire GEN_SP;
  wire [0:0]SR;
  wire TX_LANE_UP;
  wire align_r;
  wire begin_r;
  wire \counter1_r_reg_n_0_[1] ;
  wire \counter1_r_reg_n_0_[2] ;
  wire \counter1_r_reg_n_0_[3] ;
  wire gtx_tx_reset_i;
  wire next_align_c;
  wire next_ready_c;
  wire next_rst_c;
  wire [3:0]p_0_in;
  wire std_bool;
  wire tx_aligned_r;
  wire tx_aligned_simplex_r;
  wire tx_reset_lanes_i;
  wire user_clk;

  FDRE ENABLE_ERR_DETECT_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(ENABLE_ERR_DETECT),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    align_r_i_1
       (.I0(gtx_tx_reset_i),
        .I1(std_bool),
        .I2(tx_aligned_r),
        .I3(align_r),
        .O(next_align_c));
  FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(align_r),
        .R(SR));
  FDRE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SR),
        .Q(begin_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter1_r[0]_i_1 
       (.I0(std_bool),
        .I1(\counter1_r_reg_n_0_[3] ),
        .I2(\counter1_r_reg_n_0_[2] ),
        .I3(\counter1_r_reg_n_0_[1] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter1_r[1]_i_1 
       (.I0(\counter1_r_reg_n_0_[1] ),
        .I1(\counter1_r_reg_n_0_[2] ),
        .I2(\counter1_r_reg_n_0_[3] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter1_r[2]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[2] ),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1_r[3]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(std_bool),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\counter1_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\counter1_r_reg_n_0_[2] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\counter1_r_reg_n_0_[3] ),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gen_sp_r_i_1
       (.I0(D),
        .O(GEN_SP));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(TX_LANE_UP),
        .R(tx_reset_lanes_i));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    ready_r_i_1
       (.I0(tx_aligned_r),
        .I1(align_r),
        .I2(D),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(D),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    rst_r_i_1
       (.I0(std_bool),
        .I1(gtx_tx_reset_i),
        .I2(begin_r),
        .O(next_rst_c));
  FDRE rst_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(gtx_tx_reset_i),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    tx_aligned_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_aligned_simplex_r),
        .Q(tx_aligned_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LL
   (gen_cc_i,
    GEN_ECP_Buffer,
    GEN_SCP_Buffer,
    tx_dst_rdy,
    new_pkt_r,
    S_AXI_TX_TREADY,
    D,
    \gen_pad_r_reg[0] ,
    Q,
    user_clk,
    tx_channel_up_i,
    DO_CC_I,
    S_AXI_TX_TLAST,
    S_AXI_TX_TVALID,
    new_pkt_r_reg,
    RESET_SYMGEN,
    TX_CHANNEL_UP,
    S_AXI_TX_TKEEP,
    new_pkt_r_reg_0,
    S_AXI_TX_TDATA);
  output gen_cc_i;
  output GEN_ECP_Buffer;
  output GEN_SCP_Buffer;
  output tx_dst_rdy;
  output new_pkt_r;
  output S_AXI_TX_TREADY;
  output [1:0]D;
  output [1:0]\gen_pad_r_reg[0] ;
  output [31:0]Q;
  input user_clk;
  input tx_channel_up_i;
  input DO_CC_I;
  input S_AXI_TX_TLAST;
  input S_AXI_TX_TVALID;
  input new_pkt_r_reg;
  input RESET_SYMGEN;
  input TX_CHANNEL_UP;
  input [0:3]S_AXI_TX_TKEEP;
  input new_pkt_r_reg_0;
  input [0:31]S_AXI_TX_TDATA;

  wire [1:0]D;
  wire DO_CC_I;
  wire D_0;
  wire GEN_ECP_Buffer;
  wire GEN_SCP_Buffer;
  wire [31:0]Q;
  wire RESET_SYMGEN;
  wire [0:31]S_AXI_TX_TDATA;
  wire [0:3]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire TX_CHANNEL_UP;
  wire gen_cc_i;
  wire [1:0]\gen_pad_r_reg[0] ;
  wire new_pkt_r;
  wire new_pkt_r_reg;
  wire new_pkt_r_reg_0;
  wire p_12_in;
  wire pdu_ok_c;
  wire tx_channel_up_i;
  wire tx_dst_rdy;
  wire tx_ll_control_i_n_9;
  wire tx_ll_datapath_i_n_0;
  wire user_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LL_CONTROL tx_ll_control_i
       (.D(p_12_in),
        .DO_CC_I(DO_CC_I),
        .D_0(D_0),
        .GEN_ECP_Buffer(GEN_ECP_Buffer),
        .GEN_SCP_Buffer(GEN_SCP_Buffer),
        .RESET_SYMGEN(RESET_SYMGEN),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TREADY(S_AXI_TX_TREADY),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .TX_CHANNEL_UP(TX_CHANNEL_UP),
        .gen_cc_i(gen_cc_i),
        .idle_r_reg_0(tx_dst_rdy),
        .in_frame_r_reg(tx_ll_control_i_n_9),
        .in_frame_r_reg_0(tx_ll_datapath_i_n_0),
        .new_pkt_r(new_pkt_r),
        .new_pkt_r_reg(new_pkt_r_reg),
        .new_pkt_r_reg_0(new_pkt_r_reg_0),
        .pdu_ok_c(pdu_ok_c),
        .tx_channel_up_i(tx_channel_up_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(D),
        .D_0(D_0),
        .E(pdu_ok_c),
        .Q(Q),
        .S_AXI_TX_TDATA(S_AXI_TX_TDATA),
        .S_AXI_TX_TKEEP(S_AXI_TX_TKEEP),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .TX_DST_RDY_N_Buffer_reg(tx_ll_control_i_n_9),
        .TX_DST_RDY_N_Buffer_reg_0(p_12_in),
        .\gen_pad_r_reg[0]_0 (\gen_pad_r_reg[0] ),
        .in_frame_r_reg_0(tx_ll_datapath_i_n_0),
        .new_pkt_r_reg(new_pkt_r_reg),
        .tx_channel_up_i(tx_channel_up_i),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LL_CONTROL
   (gen_cc_i,
    D_0,
    GEN_ECP_Buffer,
    GEN_SCP_Buffer,
    idle_r_reg_0,
    pdu_ok_c,
    new_pkt_r,
    S_AXI_TX_TREADY,
    D,
    in_frame_r_reg,
    user_clk,
    tx_channel_up_i,
    DO_CC_I,
    S_AXI_TX_TLAST,
    S_AXI_TX_TVALID,
    new_pkt_r_reg,
    RESET_SYMGEN,
    TX_CHANNEL_UP,
    in_frame_r_reg_0,
    new_pkt_r_reg_0);
  output gen_cc_i;
  output D_0;
  output GEN_ECP_Buffer;
  output GEN_SCP_Buffer;
  output idle_r_reg_0;
  output pdu_ok_c;
  output new_pkt_r;
  output S_AXI_TX_TREADY;
  output [0:0]D;
  output in_frame_r_reg;
  input user_clk;
  input tx_channel_up_i;
  input DO_CC_I;
  input S_AXI_TX_TLAST;
  input S_AXI_TX_TVALID;
  input new_pkt_r_reg;
  input RESET_SYMGEN;
  input TX_CHANNEL_UP;
  input in_frame_r_reg_0;
  input new_pkt_r_reg_0;

  wire [0:0]D;
  wire DO_CC_I;
  wire D_0;
  wire GEN_ECP_Buffer;
  wire GEN_ECP_Buffer0;
  wire GEN_SCP_Buffer;
  wire GEN_SCP_Buffer0;
  wire RESET_SYMGEN;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire TX_CHANNEL_UP;
  wire TX_DST_RDY_N_Buffer_i_2_n_0;
  wire data_r;
  wire data_to_eof_1_r;
  wire data_to_eof_2_r;
  wire gen_cc_i;
  wire idle_r;
  wire idle_r_reg_0;
  wire in_frame_r_reg;
  wire in_frame_r_reg_0;
  wire new_pkt_r;
  wire new_pkt_r_reg;
  wire new_pkt_r_reg_0;
  wire next_data_c;
  wire next_data_to_eof_1_c;
  wire next_idle_c;
  wire next_sof_to_data_c;
  wire next_sof_to_eof_1_c;
  wire pdu_ok_c;
  wire sof_to_data_r;
  wire sof_to_eof_1_r;
  wire sof_to_eof_2_r;
  wire tx_channel_up_i;
  wire tx_dst_rdy_n_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    GEN_ECP_Buffer_i_2
       (.I0(data_to_eof_2_r),
        .I1(sof_to_eof_2_r),
        .I2(D_0),
        .O(GEN_ECP_Buffer0));
  FDRE GEN_ECP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP_Buffer0),
        .Q(GEN_ECP_Buffer),
        .R(tx_channel_up_i));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h32)) 
    GEN_SCP_Buffer_i_1
       (.I0(sof_to_data_r),
        .I1(D_0),
        .I2(sof_to_eof_1_r),
        .O(GEN_SCP_Buffer0));
  FDRE GEN_SCP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP_Buffer0),
        .Q(GEN_SCP_Buffer),
        .R(tx_channel_up_i));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_TX_TREADY_INST_0
       (.I0(idle_r_reg_0),
        .O(S_AXI_TX_TREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFF0)) 
    TX_DST_RDY_N_Buffer_i_1
       (.I0(sof_to_eof_1_r),
        .I1(data_to_eof_1_r),
        .I2(DO_CC_I),
        .I3(next_sof_to_eof_1_c),
        .I4(D_0),
        .I5(TX_DST_RDY_N_Buffer_i_2_n_0),
        .O(tx_dst_rdy_n_c));
  LUT6 #(
    .INIT(64'h0000540000000000)) 
    TX_DST_RDY_N_Buffer_i_2
       (.I0(D_0),
        .I1(data_r),
        .I2(sof_to_data_r),
        .I3(S_AXI_TX_TLAST),
        .I4(idle_r_reg_0),
        .I5(S_AXI_TX_TVALID),
        .O(TX_DST_RDY_N_Buffer_i_2_n_0));
  FDSE TX_DST_RDY_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(idle_r_reg_0),
        .S(tx_channel_up_i));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hDFDFDF00)) 
    data_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(idle_r_reg_0),
        .I2(S_AXI_TX_TVALID),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_c));
  FDRE data_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_data_c),
        .Q(data_r),
        .R(tx_channel_up_i));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h20202000)) 
    data_to_eof_1_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(idle_r_reg_0),
        .I2(S_AXI_TX_TVALID),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_to_eof_1_c));
  FDRE data_to_eof_1_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_data_to_eof_1_c),
        .Q(data_to_eof_1_r),
        .R(tx_channel_up_i));
  FDRE data_to_eof_2_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(data_to_eof_1_r),
        .Q(data_to_eof_2_r),
        .R(tx_channel_up_i));
  FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_I),
        .Q(D_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(gen_cc_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFB00)) 
    idle_r_i_1
       (.I0(idle_r_reg_0),
        .I1(S_AXI_TX_TVALID),
        .I2(new_pkt_r_reg),
        .I3(sof_to_eof_2_r),
        .I4(data_to_eof_2_r),
        .I5(idle_r),
        .O(next_idle_c));
  FDSE idle_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_idle_c),
        .Q(idle_r),
        .S(tx_channel_up_i));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hDFDF0010)) 
    in_frame_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(idle_r_reg_0),
        .I2(S_AXI_TX_TVALID),
        .I3(new_pkt_r_reg),
        .I4(in_frame_r_reg_0),
        .O(in_frame_r_reg));
  LUT6 #(
    .INIT(64'h0000F70400000000)) 
    new_pkt_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(S_AXI_TX_TVALID),
        .I2(idle_r_reg_0),
        .I3(new_pkt_r_reg),
        .I4(RESET_SYMGEN),
        .I5(TX_CHANNEL_UP),
        .O(new_pkt_r));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    sof_to_data_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(new_pkt_r_reg_0),
        .I2(sof_to_eof_2_r),
        .I3(data_to_eof_2_r),
        .I4(idle_r),
        .O(next_sof_to_data_c));
  FDRE sof_to_data_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_sof_to_data_c),
        .Q(sof_to_data_r),
        .R(tx_channel_up_i));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    sof_to_eof_1_r_i_1
       (.I0(new_pkt_r_reg_0),
        .I1(S_AXI_TX_TLAST),
        .I2(sof_to_eof_2_r),
        .I3(data_to_eof_2_r),
        .I4(idle_r),
        .O(next_sof_to_eof_1_c));
  FDRE sof_to_eof_1_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_sof_to_eof_1_c),
        .Q(sof_to_eof_1_r),
        .R(tx_channel_up_i));
  FDRE sof_to_eof_2_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(sof_to_eof_1_r),
        .Q(sof_to_eof_2_r),
        .R(tx_channel_up_i));
  LUT1 #(
    .INIT(2'h1)) 
    \storage_r[0]_i_1 
       (.I0(D_0),
        .O(pdu_ok_c));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \tx_pe_data_v_r[1]_i_1 
       (.I0(idle_r_reg_0),
        .I1(S_AXI_TX_TVALID),
        .I2(new_pkt_r_reg),
        .I3(in_frame_r_reg_0),
        .O(D));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LL_DATAPATH
   (in_frame_r_reg_0,
    D,
    \gen_pad_r_reg[0]_0 ,
    Q,
    E,
    user_clk,
    tx_channel_up_i,
    TX_DST_RDY_N_Buffer_reg,
    S_AXI_TX_TKEEP,
    S_AXI_TX_TLAST,
    new_pkt_r_reg,
    S_AXI_TX_TVALID,
    tx_dst_rdy,
    D_0,
    S_AXI_TX_TDATA,
    TX_DST_RDY_N_Buffer_reg_0);
  output in_frame_r_reg_0;
  output [1:0]D;
  output [1:0]\gen_pad_r_reg[0]_0 ;
  output [31:0]Q;
  input [0:0]E;
  input user_clk;
  input tx_channel_up_i;
  input TX_DST_RDY_N_Buffer_reg;
  input [0:3]S_AXI_TX_TKEEP;
  input S_AXI_TX_TLAST;
  input new_pkt_r_reg;
  input S_AXI_TX_TVALID;
  input tx_dst_rdy;
  input D_0;
  input [0:31]S_AXI_TX_TDATA;
  input [0:0]TX_DST_RDY_N_Buffer_reg_0;

  wire [1:0]D;
  wire D_0;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:31]S_AXI_TX_TDATA;
  wire [0:3]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TVALID;
  wire TX_DST_RDY_N_Buffer_reg;
  wire [0:0]TX_DST_RDY_N_Buffer_reg_0;
  wire \gen_pad_r[1]_i_1_n_0 ;
  wire [1:0]\gen_pad_r_reg[0]_0 ;
  wire \gen_pad_r_reg_n_0_[0] ;
  wire \gen_pad_r_reg_n_0_[1] ;
  wire in_frame_r_reg_0;
  wire new_pkt_r_reg;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire [0:15]storage_r;
  wire storage_v_r;
  wire storage_v_r0;
  wire storage_v_r_i_2_n_0;
  wire tx_channel_up_i;
  wire tx_dst_rdy;
  wire \tx_pe_data_r_reg_n_0_[0] ;
  wire \tx_pe_data_r_reg_n_0_[10] ;
  wire \tx_pe_data_r_reg_n_0_[11] ;
  wire \tx_pe_data_r_reg_n_0_[12] ;
  wire \tx_pe_data_r_reg_n_0_[13] ;
  wire \tx_pe_data_r_reg_n_0_[14] ;
  wire \tx_pe_data_r_reg_n_0_[15] ;
  wire \tx_pe_data_r_reg_n_0_[16] ;
  wire \tx_pe_data_r_reg_n_0_[17] ;
  wire \tx_pe_data_r_reg_n_0_[18] ;
  wire \tx_pe_data_r_reg_n_0_[19] ;
  wire \tx_pe_data_r_reg_n_0_[1] ;
  wire \tx_pe_data_r_reg_n_0_[20] ;
  wire \tx_pe_data_r_reg_n_0_[21] ;
  wire \tx_pe_data_r_reg_n_0_[22] ;
  wire \tx_pe_data_r_reg_n_0_[23] ;
  wire \tx_pe_data_r_reg_n_0_[24] ;
  wire \tx_pe_data_r_reg_n_0_[25] ;
  wire \tx_pe_data_r_reg_n_0_[26] ;
  wire \tx_pe_data_r_reg_n_0_[27] ;
  wire \tx_pe_data_r_reg_n_0_[28] ;
  wire \tx_pe_data_r_reg_n_0_[29] ;
  wire \tx_pe_data_r_reg_n_0_[2] ;
  wire \tx_pe_data_r_reg_n_0_[30] ;
  wire \tx_pe_data_r_reg_n_0_[31] ;
  wire \tx_pe_data_r_reg_n_0_[3] ;
  wire \tx_pe_data_r_reg_n_0_[4] ;
  wire \tx_pe_data_r_reg_n_0_[5] ;
  wire \tx_pe_data_r_reg_n_0_[6] ;
  wire \tx_pe_data_r_reg_n_0_[7] ;
  wire \tx_pe_data_r_reg_n_0_[8] ;
  wire \tx_pe_data_r_reg_n_0_[9] ;
  wire \tx_pe_data_v_r_reg_n_0_[0] ;
  wire \tx_pe_data_v_r_reg_n_0_[1] ;
  wire user_clk;

  FDRE \GEN_PAD_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg_n_0_[0] ),
        .Q(\gen_pad_r_reg[0]_0 [1]),
        .R(D_0));
  FDRE \GEN_PAD_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg_n_0_[1] ),
        .Q(\gen_pad_r_reg[0]_0 [0]),
        .R(D_0));
  FDRE \TX_PE_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[0] ),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[10] ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[11] ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[12] ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[13] ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[14] ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[15] ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[16] ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[17] ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[18] ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[19] ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[1] ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[20] ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[21] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[22] ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[23] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[24] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[25] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[26] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[27] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[28] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[29] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[2] ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[30] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[31] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[3] ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[4] ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[5] ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[6] ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[7] ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[8] ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg_n_0_[9] ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \TX_PE_DATA_V_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg_n_0_[0] ),
        .Q(D[1]),
        .R(D_0));
  FDRE \TX_PE_DATA_V_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg_n_0_[1] ),
        .Q(D[0]),
        .R(D_0));
  LUT6 #(
    .INIT(64'h0000011600000000)) 
    \gen_pad_r[1]_i_1 
       (.I0(S_AXI_TX_TKEEP[2]),
        .I1(S_AXI_TX_TKEEP[1]),
        .I2(S_AXI_TX_TKEEP[0]),
        .I3(S_AXI_TX_TKEEP[3]),
        .I4(storage_v_r_i_2_n_0),
        .I5(S_AXI_TX_TLAST),
        .O(\gen_pad_r[1]_i_1_n_0 ));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r),
        .Q(\gen_pad_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(\gen_pad_r[1]_i_1_n_0 ),
        .Q(\gen_pad_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_DST_RDY_N_Buffer_reg),
        .Q(in_frame_r_reg_0),
        .R(tx_channel_up_i));
  LUT6 #(
    .INIT(64'h0000688000000000)) 
    storage_pad_r_i_1
       (.I0(S_AXI_TX_TKEEP[2]),
        .I1(S_AXI_TX_TKEEP[1]),
        .I2(S_AXI_TX_TKEEP[0]),
        .I3(S_AXI_TX_TKEEP[3]),
        .I4(storage_v_r_i_2_n_0),
        .I5(S_AXI_TX_TLAST),
        .O(storage_pad_r0));
  FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
  FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[16]),
        .Q(storage_r[0]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[26]),
        .Q(storage_r[10]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[27]),
        .Q(storage_r[11]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[28]),
        .Q(storage_r[12]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[29]),
        .Q(storage_r[13]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[30]),
        .Q(storage_r[14]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[31]),
        .Q(storage_r[15]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[17]),
        .Q(storage_r[1]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[18]),
        .Q(storage_r[2]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[19]),
        .Q(storage_r[3]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[20]),
        .Q(storage_r[4]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[21]),
        .Q(storage_r[5]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[22]),
        .Q(storage_r[6]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[23]),
        .Q(storage_r[7]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[24]),
        .Q(storage_r[8]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[25]),
        .Q(storage_r[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000E881FFFF)) 
    storage_v_r_i_1
       (.I0(S_AXI_TX_TKEEP[3]),
        .I1(S_AXI_TX_TKEEP[0]),
        .I2(S_AXI_TX_TKEEP[1]),
        .I3(S_AXI_TX_TKEEP[2]),
        .I4(S_AXI_TX_TLAST),
        .I5(storage_v_r_i_2_n_0),
        .O(storage_v_r0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    storage_v_r_i_2
       (.I0(in_frame_r_reg_0),
        .I1(new_pkt_r_reg),
        .I2(S_AXI_TX_TVALID),
        .I3(tx_dst_rdy),
        .O(storage_v_r_i_2_n_0));
  FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r0),
        .Q(storage_v_r),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[0]),
        .Q(\tx_pe_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[10]),
        .Q(\tx_pe_data_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[11]),
        .Q(\tx_pe_data_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[12]),
        .Q(\tx_pe_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[13]),
        .Q(\tx_pe_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[14]),
        .Q(\tx_pe_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[15]),
        .Q(\tx_pe_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[0]),
        .Q(\tx_pe_data_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[1]),
        .Q(\tx_pe_data_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[2]),
        .Q(\tx_pe_data_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[3]),
        .Q(\tx_pe_data_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[1]),
        .Q(\tx_pe_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[4]),
        .Q(\tx_pe_data_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[5]),
        .Q(\tx_pe_data_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[6]),
        .Q(\tx_pe_data_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[7]),
        .Q(\tx_pe_data_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[8]),
        .Q(\tx_pe_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[9]),
        .Q(\tx_pe_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[10]),
        .Q(\tx_pe_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[11]),
        .Q(\tx_pe_data_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[12]),
        .Q(\tx_pe_data_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[13]),
        .Q(\tx_pe_data_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[2]),
        .Q(\tx_pe_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[14]),
        .Q(\tx_pe_data_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[15]),
        .Q(\tx_pe_data_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[3]),
        .Q(\tx_pe_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[4]),
        .Q(\tx_pe_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[5]),
        .Q(\tx_pe_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[6]),
        .Q(\tx_pe_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[7]),
        .Q(\tx_pe_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[8]),
        .Q(\tx_pe_data_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[9]),
        .Q(\tx_pe_data_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r),
        .Q(\tx_pe_data_v_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(TX_DST_RDY_N_Buffer_reg_0),
        .Q(\tx_pe_data_v_r_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync
   (out,
    TX_SYSTEM_RESET,
    user_clk);
  output out;
  input TX_SYSTEM_RESET;
  input user_clk;

  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d3;
  wire user_clk;

  assign out = s_level_out_d3;
  assign p_level_in_int = TX_SYSTEM_RESET;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync_10
   (out,
    PLL_NOT_LOCKED,
    user_clk);
  output out;
  input PLL_NOT_LOCKED;
  input user_clk;

  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d3;
  wire user_clk;

  assign out = s_level_out_d3;
  assign p_level_in_int = PLL_NOT_LOCKED;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1
   (AR,
    GT_RESET,
    init_clk_in);
  output [0:0]AR;
  input GT_RESET;
  input init_clk_in;

  wire init_clk_in;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;

  assign AR[0] = s_level_out_d2;
  assign p_level_in_int = GT_RESET;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_2
   (out,
    \FSM_sequential_state_reg[0] ,
    in0,
    drpclk_in,
    rxpmaresetdone_sss);
  output out;
  output \FSM_sequential_state_reg[0] ;
  input in0;
  input drpclk_in;
  input rxpmaresetdone_sss;

  wire \FSM_sequential_state_reg[0] ;
  wire drpclk_in;
  wire p_level_in_int;
  wire rxpmaresetdone_sss;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;

  assign out = s_level_out_d2;
  assign p_level_in_int = in0;
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(rxpmaresetdone_sss),
        .I1(s_level_out_d2),
        .O(\FSM_sequential_state_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_3
   (reset_time_out_reg,
    E,
    quad1_common_lock_in,
    init_clk_in,
    reset_time_out,
    out,
    \FSM_sequential_tx_state_reg[1] ,
    \FSM_sequential_tx_state_reg[0] ,
    pll_reset_asserted_reg,
    init_wait_done_reg,
    time_out_2ms_reg,
    \wait_time_cnt_reg[3] ,
    Q,
    txresetdone_s3,
    mmcm_lock_reclocked);
  output reset_time_out_reg;
  output [0:0]E;
  input quad1_common_lock_in;
  input init_clk_in;
  input reset_time_out;
  input [3:0]out;
  input \FSM_sequential_tx_state_reg[1] ;
  input \FSM_sequential_tx_state_reg[0] ;
  input pll_reset_asserted_reg;
  input init_wait_done_reg;
  input time_out_2ms_reg;
  input \wait_time_cnt_reg[3] ;
  input [0:0]Q;
  input txresetdone_s3;
  input mmcm_lock_reclocked;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[1] ;
  wire [0:0]Q;
  wire init_clk_in;
  wire init_wait_done_reg;
  wire mmcm_lock_reclocked;
  wire [3:0]out;
  wire p_level_in_int;
  wire pll_reset_asserted_reg;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  wire time_out_2ms_reg;
  wire txresetdone_s3;
  wire \wait_time_cnt_reg[3] ;

  assign p_level_in_int = quad1_common_lock_in;
  LUT6 #(
    .INIT(64'h4F4A4F4F4F4A4A4A)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(out[3]),
        .I1(\FSM_sequential_tx_state_reg[1] ),
        .I2(\FSM_sequential_tx_state_reg[0] ),
        .I3(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I4(out[1]),
        .I5(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hE0E0EFE0)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(time_out_2ms_reg),
        .I1(s_level_out_d2),
        .I2(out[0]),
        .I3(\wait_time_cnt_reg[3] ),
        .I4(Q),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(pll_reset_asserted_reg),
        .I1(s_level_out_d2),
        .I2(out[0]),
        .I3(init_wait_done_reg),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(reset_time_out_i_3_n_0),
        .I2(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h1F0F1F0F100F1000)) 
    reset_time_out_i_2
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(init_wait_done_reg),
        .I5(reset_time_out_i_4_n_0),
        .O(reset_time_out_0));
  LUT6 #(
    .INIT(64'h303030302020FFFC)) 
    reset_time_out_i_3
       (.I0(s_level_out_d2),
        .I1(out[3]),
        .I2(out[0]),
        .I3(init_wait_done_reg),
        .I4(out[1]),
        .I5(out[2]),
        .O(reset_time_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    reset_time_out_i_4
       (.I0(txresetdone_s3),
        .I1(s_level_out_d2),
        .I2(out[1]),
        .I3(out[2]),
        .I4(mmcm_lock_reclocked),
        .O(reset_time_out_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_4
   (init_clk_in);
  input init_clk_in;

  wire init_clk_in;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_6
   (mmcm_lock_reclocked_reg,
    SR,
    init_clk_in,
    PLL_NOT_LOCKED,
    mmcm_lock_reclocked,
    Q,
    \mmcm_lock_count_reg[7] );
  output mmcm_lock_reclocked_reg;
  output [0:0]SR;
  input init_clk_in;
  input PLL_NOT_LOCKED;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input \mmcm_lock_count_reg[7] ;

  wire PLL_NOT_LOCKED;
  wire [1:0]Q;
  wire [0:0]SR;
  wire init_clk_in;
  wire \mmcm_lock_count_reg[7] ;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1 
       (.I0(s_level_out_d2),
        .O(SR));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(\mmcm_lock_count_reg[7] ),
        .I3(Q[0]),
        .I4(s_level_out_d2),
        .O(mmcm_lock_reclocked_reg));
  LUT1 #(
    .INIT(2'h1)) 
    p_level_in_int_inferred_i_1
       (.I0(PLL_NOT_LOCKED),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3
   (out,
    run_phase_alignment_int,
    init_clk_in,
    user_clk);
  output out;
  input run_phase_alignment_int;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire run_phase_alignment_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d3;
  wire user_clk;

  assign out = s_level_out_d3;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3_11
   (out,
    tx_lock_comb_r,
    init_clk_in,
    user_clk);
  output out;
  input tx_lock_comb_r;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d3;
  wire tx_lock_comb_r;
  wire user_clk;

  assign out = s_level_out_d3;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock_comb_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3_8
   (TX_RESETDONE_OUT,
    gt_txresetdone_r2_reg,
    tx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output TX_RESETDONE_OUT;
  output gt_txresetdone_r2_reg;
  input tx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  wire gt_txresetdone_r2_reg;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d3;
  wire tx_fsm_reset_done_int;
  wire user_clk;

  assign TX_RESETDONE_OUT = s_level_out_d3;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_txresetdone_r_i_1
       (.I0(s_level_out_d3),
        .O(gt_txresetdone_r2_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3_9
   (out,
    init_clk_in,
    user_clk);
  output out;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d3;
  wire user_clk;

  assign out = s_level_out_d3;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(1'b0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6
   (user_clk,
    init_clk_in);
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  wire user_clk;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_0
   (out,
    init_clk_in,
    drpclk_in);
  output out;
  input init_clk_in;
  input drpclk_in;

  wire drpclk_in;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;

  assign out = s_level_out_d2;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(1'b0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_1
   (AR,
    gt_common_reset_out,
    init_clk_in,
    drpclk_in);
  output [0:0]AR;
  input gt_common_reset_out;
  input init_clk_in;
  input drpclk_in;

  wire drpclk_in;
  wire gt_common_reset_out;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;

  assign AR[0] = s_level_out_d2;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gt_common_reset_out),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_5
   (out,
    txfsm_txresetdone_r,
    user_clk,
    init_clk_in);
  output out;
  input txfsm_txresetdone_r;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  wire txfsm_txresetdone_r;
  wire user_clk;

  assign out = s_level_out_d2;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(txfsm_txresetdone_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* ORIG_REF_NAME = "system_aurora_8b10b_0_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_7
   (out,
    time_out_wait_bypass,
    user_clk,
    init_clk_in);
  output out;
  input time_out_wait_bypass;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d1_system_aurora_8b10b_0_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire s_level_out_d2;
  wire time_out_wait_bypass;
  wire user_clk;

  assign out = s_level_out_d2;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_system_aurora_8b10b_0_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
endmodule

(* CC_FREQ_FACTOR = "12" *) (* EXAMPLE_SIMULATION = "0" *) (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_core
   (S_AXI_TX_TDATA,
    S_AXI_TX_TKEEP,
    S_AXI_TX_TVALID,
    S_AXI_TX_TREADY,
    S_AXI_TX_TLAST,
    TXP,
    TXN,
    gt_refclk1,
    TX_HARD_ERR,
    TX_CHANNEL_UP,
    TX_LANE_UP,
    user_clk,
    sync_clk,
    TX_SYSTEM_RESET,
    TX_RESETDONE_OUT,
    POWER_DOWN,
    GT_RESET,
    init_clk_in,
    PLL_NOT_LOCKED,
    drpclk_in,
    DRPADDR_IN,
    DRPDI_IN,
    DRPDO_OUT,
    DRPEN_IN,
    DRPRDY_OUT,
    DRPWE_IN,
    TX_OUT_CLK,
    gt_common_reset_out,
    gt0_pll0refclklost_in,
    quad1_common_lock_in,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    sys_reset_out,
    TX_LOCK,
    LOOPBACK);
  input [0:31]S_AXI_TX_TDATA;
  input [0:3]S_AXI_TX_TKEEP;
  input S_AXI_TX_TVALID;
  output S_AXI_TX_TREADY;
  input S_AXI_TX_TLAST;
  output TXP;
  output TXN;
  input gt_refclk1;
  output TX_HARD_ERR;
  output TX_CHANNEL_UP;
  output TX_LANE_UP;
  input user_clk;
  input sync_clk;
  input TX_SYSTEM_RESET;
  output TX_RESETDONE_OUT;
  input POWER_DOWN;
  input GT_RESET;
  input init_clk_in;
  input PLL_NOT_LOCKED;
  input drpclk_in;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  output [15:0]DRPDO_OUT;
  input DRPEN_IN;
  output DRPRDY_OUT;
  input DRPWE_IN;
  output TX_OUT_CLK;
  output gt_common_reset_out;
  input gt0_pll0refclklost_in;
  input quad1_common_lock_in;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  output sys_reset_out;
  output TX_LOCK;
  input [2:0]LOOPBACK;

  wire DO_CC_I;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPRDY_OUT;
  wire DRPWE_IN;
  wire ENABLE_ERR_DETECT;
  wire GEN_ECP_Buffer;
  wire [0:1]GEN_PAD_Buffer;
  wire GEN_SCP_Buffer;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire GT_RESET;
  wire [2:0]LOOPBACK;
  wire PLL_NOT_LOCKED;
  wire POWER_DOWN;
  wire RESET_SYMGEN;
  wire [0:31]S_AXI_TX_TDATA;
  wire [0:3]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire [3:0]TXCHARISK_IN;
  wire [31:0]TXDATA_IN;
  wire TXN;
  wire TXP;
  wire TX_CHANNEL_UP;
  wire TX_HARD_ERR;
  wire TX_LANE_UP;
  wire TX_LOCK;
  wire TX_OUT_CLK;
  wire [0:31]TX_PE_DATA_Buffer;
  wire [0:1]TX_PE_DATA_V_Buffer;
  wire TX_RESETDONE_OUT;
  wire TX_SYSTEM_RESET;
  wire axi_to_ll_pdu_i_n_0;
  wire axi_to_ll_pdu_i_n_1;
  wire core_reset_logic_i_n_2;
  wire core_reset_logic_i_n_3;
  wire core_reset_logic_i_n_4;
  wire drpclk_in;
  wire gen_a_i;
  wire gen_cc_i;
  wire [0:3]gen_k_i;
  wire [0:3]gen_r_i;
  wire [1:3]gen_v_i;
  wire gt_common_reset_out;
  wire gt_reset_sync_init_clk;
  wire gt_wrapper_i_n_22;
  wire gt_wrapper_i_n_23;
  wire init_clk_in;
  wire new_pkt_r;
  wire quad1_common_lock_in;
  wire reset_sync_user_clk;
  wire \simplex_timer_r[0]_i_2_n_0 ;
  wire \simplex_timer_r[0]_i_4_n_0 ;
  wire [17:0]simplex_timer_r_reg;
  wire \simplex_timer_r_reg[0]_i_3_n_0 ;
  wire \simplex_timer_r_reg[0]_i_3_n_1 ;
  wire \simplex_timer_r_reg[0]_i_3_n_2 ;
  wire \simplex_timer_r_reg[0]_i_3_n_3 ;
  wire \simplex_timer_r_reg[0]_i_3_n_4 ;
  wire \simplex_timer_r_reg[0]_i_3_n_5 ;
  wire \simplex_timer_r_reg[0]_i_3_n_6 ;
  wire \simplex_timer_r_reg[0]_i_3_n_7 ;
  wire \simplex_timer_r_reg[12]_i_1_n_0 ;
  wire \simplex_timer_r_reg[12]_i_1_n_1 ;
  wire \simplex_timer_r_reg[12]_i_1_n_2 ;
  wire \simplex_timer_r_reg[12]_i_1_n_3 ;
  wire \simplex_timer_r_reg[12]_i_1_n_4 ;
  wire \simplex_timer_r_reg[12]_i_1_n_5 ;
  wire \simplex_timer_r_reg[12]_i_1_n_6 ;
  wire \simplex_timer_r_reg[12]_i_1_n_7 ;
  wire \simplex_timer_r_reg[16]_i_1_n_3 ;
  wire \simplex_timer_r_reg[16]_i_1_n_6 ;
  wire \simplex_timer_r_reg[16]_i_1_n_7 ;
  wire \simplex_timer_r_reg[4]_i_1_n_0 ;
  wire \simplex_timer_r_reg[4]_i_1_n_1 ;
  wire \simplex_timer_r_reg[4]_i_1_n_2 ;
  wire \simplex_timer_r_reg[4]_i_1_n_3 ;
  wire \simplex_timer_r_reg[4]_i_1_n_4 ;
  wire \simplex_timer_r_reg[4]_i_1_n_5 ;
  wire \simplex_timer_r_reg[4]_i_1_n_6 ;
  wire \simplex_timer_r_reg[4]_i_1_n_7 ;
  wire \simplex_timer_r_reg[8]_i_1_n_0 ;
  wire \simplex_timer_r_reg[8]_i_1_n_1 ;
  wire \simplex_timer_r_reg[8]_i_1_n_2 ;
  wire \simplex_timer_r_reg[8]_i_1_n_3 ;
  wire \simplex_timer_r_reg[8]_i_1_n_4 ;
  wire \simplex_timer_r_reg[8]_i_1_n_5 ;
  wire \simplex_timer_r_reg[8]_i_1_n_6 ;
  wire \simplex_timer_r_reg[8]_i_1_n_7 ;
  wire sync_clk;
  wire sys_reset_out;
  wire system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i_n_6;
  wire system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_15;
  wire system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_16;
  wire tx_aligned_simplex_r;
  wire tx_dst_rdy;
  wire tx_reset_lanes_i;
  wire tx_reset_simplex_r;
  wire tx_reset_simplex_r_i_2_n_0;
  wire tx_reset_simplex_r_i_4_n_0;
  wire tx_reset_simplex_r_i_5_n_0;
  wire tx_reset_simplex_r_i_6_n_0;
  wire tx_reset_simplex_r_i_7_n_0;
  wire tx_reset_simplex_r_i_8_n_0;
  wire tx_verify_simplex_r;
  wire tx_verify_simplex_r_i_2_n_0;
  wire tx_verify_simplex_r_i_3_n_0;
  wire tx_verify_simplex_r_i_4_n_0;
  wire tx_verify_simplex_r_i_5_n_0;
  wire user_clk;
  wire [3:1]\NLW_simplex_timer_r_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_simplex_timer_r_reg[16]_i_1_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_AXI_TO_LL axi_to_ll_pdu_i
       (.S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .idle_r_reg(axi_to_ll_pdu_i_n_0),
        .new_pkt_r(new_pkt_r),
        .sof_to_data_r_reg(axi_to_ll_pdu_i_n_1),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_RESET_LOGIC core_reset_logic_i
       (.CHANNEL_HARD_ERR_Buffer_reg(TX_HARD_ERR),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg (gt_wrapper_i_n_23),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .RESET_SYMGEN(RESET_SYMGEN),
        .TX_LOCK(TX_LOCK),
        .init_clk_in(init_clk_in),
        .out(reset_sync_user_clk),
        .simplex_timer_r_reg(simplex_timer_r_reg[9]),
        .\simplex_timer_r_reg[17] (core_reset_logic_i_n_2),
        .\simplex_timer_r_reg[2] (tx_verify_simplex_r_i_2_n_0),
        .simplex_timer_r_reg_0_sp_1(tx_verify_simplex_r_i_3_n_0),
        .sys_reset_out(sys_reset_out),
        .tx_aligned_simplex_r(tx_aligned_simplex_r),
        .tx_aligned_simplex_r_reg(core_reset_logic_i_n_3),
        .tx_reset_simplex_r(tx_reset_simplex_r),
        .tx_verify_simplex_r(tx_verify_simplex_r),
        .tx_verify_simplex_r_reg(core_reset_logic_i_n_4),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1 gt_reset_cdc_sync
       (.AR(gt_reset_sync_init_clk),
        .GT_RESET(GT_RESET),
        .init_clk_in(init_clk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_GT_WRAPPER gt_wrapper_i
       (.AR(gt_reset_sync_init_clk),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .ENABLE_ERR_DETECT(ENABLE_ERR_DETECT),
        .\FSM_sequential_state_reg[2] (DRPRDY_OUT),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .POWER_DOWN(POWER_DOWN),
        .TXCHARISK(TXCHARISK_IN),
        .TXDATA(TXDATA_IN),
        .TXN(TXN),
        .TXP(TXP),
        .TX_LOCK(TX_LOCK),
        .TX_OUT_CLK(TX_OUT_CLK),
        .TX_RESETDONE_OUT(TX_RESETDONE_OUT),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_txresetdone_r2_reg(gt_wrapper_i_n_23),
        .hard_err_flop_r_reg(gt_wrapper_i_n_22),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .sync_clk(sync_clk),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync reset_sync_user_clk_cdc_sync
       (.TX_SYSTEM_RESET(TX_SYSTEM_RESET),
        .out(reset_sync_user_clk),
        .user_clk(user_clk));
  LUT1 #(
    .INIT(2'h1)) 
    \simplex_timer_r[0]_i_2 
       (.I0(tx_verify_simplex_r),
        .O(\simplex_timer_r[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \simplex_timer_r[0]_i_4 
       (.I0(simplex_timer_r_reg[0]),
        .O(\simplex_timer_r[0]_i_4_n_0 ));
  FDRE \simplex_timer_r_reg[0] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[0]_i_3_n_7 ),
        .Q(simplex_timer_r_reg[0]),
        .R(core_reset_logic_i_n_2));
  CARRY4 \simplex_timer_r_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\simplex_timer_r_reg[0]_i_3_n_0 ,\simplex_timer_r_reg[0]_i_3_n_1 ,\simplex_timer_r_reg[0]_i_3_n_2 ,\simplex_timer_r_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\simplex_timer_r_reg[0]_i_3_n_4 ,\simplex_timer_r_reg[0]_i_3_n_5 ,\simplex_timer_r_reg[0]_i_3_n_6 ,\simplex_timer_r_reg[0]_i_3_n_7 }),
        .S({simplex_timer_r_reg[3:1],\simplex_timer_r[0]_i_4_n_0 }));
  FDRE \simplex_timer_r_reg[10] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[8]_i_1_n_5 ),
        .Q(simplex_timer_r_reg[10]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[11] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[8]_i_1_n_4 ),
        .Q(simplex_timer_r_reg[11]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[12] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[12]_i_1_n_7 ),
        .Q(simplex_timer_r_reg[12]),
        .R(core_reset_logic_i_n_2));
  CARRY4 \simplex_timer_r_reg[12]_i_1 
       (.CI(\simplex_timer_r_reg[8]_i_1_n_0 ),
        .CO({\simplex_timer_r_reg[12]_i_1_n_0 ,\simplex_timer_r_reg[12]_i_1_n_1 ,\simplex_timer_r_reg[12]_i_1_n_2 ,\simplex_timer_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\simplex_timer_r_reg[12]_i_1_n_4 ,\simplex_timer_r_reg[12]_i_1_n_5 ,\simplex_timer_r_reg[12]_i_1_n_6 ,\simplex_timer_r_reg[12]_i_1_n_7 }),
        .S(simplex_timer_r_reg[15:12]));
  FDRE \simplex_timer_r_reg[13] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[12]_i_1_n_6 ),
        .Q(simplex_timer_r_reg[13]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[14] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[12]_i_1_n_5 ),
        .Q(simplex_timer_r_reg[14]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[15] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[12]_i_1_n_4 ),
        .Q(simplex_timer_r_reg[15]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[16] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[16]_i_1_n_7 ),
        .Q(simplex_timer_r_reg[16]),
        .R(core_reset_logic_i_n_2));
  CARRY4 \simplex_timer_r_reg[16]_i_1 
       (.CI(\simplex_timer_r_reg[12]_i_1_n_0 ),
        .CO({\NLW_simplex_timer_r_reg[16]_i_1_CO_UNCONNECTED [3:1],\simplex_timer_r_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_simplex_timer_r_reg[16]_i_1_O_UNCONNECTED [3:2],\simplex_timer_r_reg[16]_i_1_n_6 ,\simplex_timer_r_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,simplex_timer_r_reg[17:16]}));
  FDRE \simplex_timer_r_reg[17] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[16]_i_1_n_6 ),
        .Q(simplex_timer_r_reg[17]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[1] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[0]_i_3_n_6 ),
        .Q(simplex_timer_r_reg[1]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[2] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[0]_i_3_n_5 ),
        .Q(simplex_timer_r_reg[2]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[3] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[0]_i_3_n_4 ),
        .Q(simplex_timer_r_reg[3]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[4] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[4]_i_1_n_7 ),
        .Q(simplex_timer_r_reg[4]),
        .R(core_reset_logic_i_n_2));
  CARRY4 \simplex_timer_r_reg[4]_i_1 
       (.CI(\simplex_timer_r_reg[0]_i_3_n_0 ),
        .CO({\simplex_timer_r_reg[4]_i_1_n_0 ,\simplex_timer_r_reg[4]_i_1_n_1 ,\simplex_timer_r_reg[4]_i_1_n_2 ,\simplex_timer_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\simplex_timer_r_reg[4]_i_1_n_4 ,\simplex_timer_r_reg[4]_i_1_n_5 ,\simplex_timer_r_reg[4]_i_1_n_6 ,\simplex_timer_r_reg[4]_i_1_n_7 }),
        .S(simplex_timer_r_reg[7:4]));
  FDRE \simplex_timer_r_reg[5] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[4]_i_1_n_6 ),
        .Q(simplex_timer_r_reg[5]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[6] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[4]_i_1_n_5 ),
        .Q(simplex_timer_r_reg[6]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[7] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[4]_i_1_n_4 ),
        .Q(simplex_timer_r_reg[7]),
        .R(core_reset_logic_i_n_2));
  FDRE \simplex_timer_r_reg[8] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[8]_i_1_n_7 ),
        .Q(simplex_timer_r_reg[8]),
        .R(core_reset_logic_i_n_2));
  CARRY4 \simplex_timer_r_reg[8]_i_1 
       (.CI(\simplex_timer_r_reg[4]_i_1_n_0 ),
        .CO({\simplex_timer_r_reg[8]_i_1_n_0 ,\simplex_timer_r_reg[8]_i_1_n_1 ,\simplex_timer_r_reg[8]_i_1_n_2 ,\simplex_timer_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\simplex_timer_r_reg[8]_i_1_n_4 ,\simplex_timer_r_reg[8]_i_1_n_5 ,\simplex_timer_r_reg[8]_i_1_n_6 ,\simplex_timer_r_reg[8]_i_1_n_7 }),
        .S(simplex_timer_r_reg[11:8]));
  FDRE \simplex_timer_r_reg[9] 
       (.C(user_clk),
        .CE(\simplex_timer_r[0]_i_2_n_0 ),
        .D(\simplex_timer_r_reg[8]_i_1_n_6 ),
        .Q(simplex_timer_r_reg[9]),
        .R(core_reset_logic_i_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_STANDARD_CC_MODULE standard_cc_module_i
       (.DO_CC_I(DO_CC_I),
        .SYSTEM_RESET_reg(sys_reset_out),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i
       (.CHANNEL_HARD_ERR_Buffer_reg(system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i_n_6),
        .D({TX_PE_DATA_V_Buffer[0],TX_PE_DATA_V_Buffer[1]}),
        .ENABLE_ERR_DETECT(ENABLE_ERR_DETECT),
        .ENABLE_ERR_DETECT_Buffer_reg(gt_wrapper_i_n_22),
        .GEN_ECP_Buffer(GEN_ECP_Buffer),
        .\GEN_PAD_Buffer_reg[0] ({GEN_PAD_Buffer[0],GEN_PAD_Buffer[1]}),
        .GEN_SCP_Buffer(GEN_SCP_Buffer),
        .Q({TX_PE_DATA_Buffer[0],TX_PE_DATA_Buffer[1],TX_PE_DATA_Buffer[2],TX_PE_DATA_Buffer[3],TX_PE_DATA_Buffer[4],TX_PE_DATA_Buffer[5],TX_PE_DATA_Buffer[6],TX_PE_DATA_Buffer[7],TX_PE_DATA_Buffer[8],TX_PE_DATA_Buffer[9],TX_PE_DATA_Buffer[10],TX_PE_DATA_Buffer[11],TX_PE_DATA_Buffer[12],TX_PE_DATA_Buffer[13],TX_PE_DATA_Buffer[14],TX_PE_DATA_Buffer[15],TX_PE_DATA_Buffer[16],TX_PE_DATA_Buffer[17],TX_PE_DATA_Buffer[18],TX_PE_DATA_Buffer[19],TX_PE_DATA_Buffer[20],TX_PE_DATA_Buffer[21],TX_PE_DATA_Buffer[22],TX_PE_DATA_Buffer[23],TX_PE_DATA_Buffer[24],TX_PE_DATA_Buffer[25],TX_PE_DATA_Buffer[26],TX_PE_DATA_Buffer[27],TX_PE_DATA_Buffer[28],TX_PE_DATA_Buffer[29],TX_PE_DATA_Buffer[30],TX_PE_DATA_Buffer[31]}),
        .TXCHARISK(TXCHARISK_IN),
        .TXDATA(TXDATA_IN),
        .TX_LANE_UP(TX_LANE_UP),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_k_flop_0_i({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .gen_r_flop_0_i({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .gen_v_flop_1_i({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .tx_aligned_simplex_r(tx_aligned_simplex_r),
        .tx_reset_lanes_i(tx_reset_lanes_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX system_aurora_8b10b_0_0_tx_global_logic_simplex_i
       (.POWER_DOWN(POWER_DOWN),
        .SYSTEM_RESET_reg(sys_reset_out),
        .TX_CHANNEL_UP(TX_CHANNEL_UP),
        .TX_HARD_ERR(TX_HARD_ERR),
        .TX_LANE_UP(TX_LANE_UP),
        .gen_a_i(gen_a_i),
        .\gen_k_r_reg[0] ({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .\gen_r_r_reg[0] ({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .\gen_v_r_reg[1] ({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .hard_err_flop_r_reg(system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i_n_6),
        .in_frame_r_reg(system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_16),
        .simplex_timer_r_reg(simplex_timer_r_reg[0]),
        .\simplex_timer_r_reg[11] (tx_reset_simplex_r_i_2_n_0),
        .\simplex_timer_r_reg[11]_0 (tx_reset_simplex_r_i_4_n_0),
        .\simplex_timer_r_reg[8] (tx_reset_simplex_r_i_5_n_0),
        .tx_reset_lanes_i(tx_reset_lanes_i),
        .tx_reset_simplex_r(tx_reset_simplex_r),
        .tx_reset_simplex_r_reg(system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_15),
        .tx_verify_simplex_r(tx_verify_simplex_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_TX_LL system_aurora_8b10b_0_0_tx_ll_i
       (.D({TX_PE_DATA_V_Buffer[0],TX_PE_DATA_V_Buffer[1]}),
        .DO_CC_I(DO_CC_I),
        .GEN_ECP_Buffer(GEN_ECP_Buffer),
        .GEN_SCP_Buffer(GEN_SCP_Buffer),
        .Q({TX_PE_DATA_Buffer[0],TX_PE_DATA_Buffer[1],TX_PE_DATA_Buffer[2],TX_PE_DATA_Buffer[3],TX_PE_DATA_Buffer[4],TX_PE_DATA_Buffer[5],TX_PE_DATA_Buffer[6],TX_PE_DATA_Buffer[7],TX_PE_DATA_Buffer[8],TX_PE_DATA_Buffer[9],TX_PE_DATA_Buffer[10],TX_PE_DATA_Buffer[11],TX_PE_DATA_Buffer[12],TX_PE_DATA_Buffer[13],TX_PE_DATA_Buffer[14],TX_PE_DATA_Buffer[15],TX_PE_DATA_Buffer[16],TX_PE_DATA_Buffer[17],TX_PE_DATA_Buffer[18],TX_PE_DATA_Buffer[19],TX_PE_DATA_Buffer[20],TX_PE_DATA_Buffer[21],TX_PE_DATA_Buffer[22],TX_PE_DATA_Buffer[23],TX_PE_DATA_Buffer[24],TX_PE_DATA_Buffer[25],TX_PE_DATA_Buffer[26],TX_PE_DATA_Buffer[27],TX_PE_DATA_Buffer[28],TX_PE_DATA_Buffer[29],TX_PE_DATA_Buffer[30],TX_PE_DATA_Buffer[31]}),
        .RESET_SYMGEN(RESET_SYMGEN),
        .S_AXI_TX_TDATA(S_AXI_TX_TDATA),
        .S_AXI_TX_TKEEP(S_AXI_TX_TKEEP),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TREADY(S_AXI_TX_TREADY),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .TX_CHANNEL_UP(TX_CHANNEL_UP),
        .gen_cc_i(gen_cc_i),
        .\gen_pad_r_reg[0] ({GEN_PAD_Buffer[0],GEN_PAD_Buffer[1]}),
        .new_pkt_r(new_pkt_r),
        .new_pkt_r_reg(axi_to_ll_pdu_i_n_0),
        .new_pkt_r_reg_0(axi_to_ll_pdu_i_n_1),
        .tx_channel_up_i(system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_16),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
  FDRE tx_aligned_simplex_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(core_reset_logic_i_n_3),
        .Q(tx_aligned_simplex_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    tx_reset_simplex_r_i_2
       (.I0(tx_verify_simplex_r_i_4_n_0),
        .I1(tx_reset_simplex_r_i_6_n_0),
        .I2(simplex_timer_r_reg[11]),
        .I3(simplex_timer_r_reg[10]),
        .I4(simplex_timer_r_reg[9]),
        .I5(tx_reset_simplex_r_i_7_n_0),
        .O(tx_reset_simplex_r_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    tx_reset_simplex_r_i_4
       (.I0(tx_reset_simplex_r_i_8_n_0),
        .I1(simplex_timer_r_reg[11]),
        .I2(simplex_timer_r_reg[10]),
        .I3(simplex_timer_r_reg[9]),
        .I4(tx_reset_simplex_r_i_7_n_0),
        .O(tx_reset_simplex_r_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tx_reset_simplex_r_i_5
       (.I0(simplex_timer_r_reg[8]),
        .I1(simplex_timer_r_reg[2]),
        .O(tx_reset_simplex_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    tx_reset_simplex_r_i_6
       (.I0(simplex_timer_r_reg[0]),
        .I1(simplex_timer_r_reg[1]),
        .I2(simplex_timer_r_reg[2]),
        .I3(simplex_timer_r_reg[8]),
        .I4(simplex_timer_r_reg[3]),
        .O(tx_reset_simplex_r_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    tx_reset_simplex_r_i_7
       (.I0(simplex_timer_r_reg[12]),
        .I1(simplex_timer_r_reg[13]),
        .I2(simplex_timer_r_reg[14]),
        .I3(simplex_timer_r_reg[15]),
        .I4(simplex_timer_r_reg[17]),
        .I5(simplex_timer_r_reg[16]),
        .O(tx_reset_simplex_r_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tx_reset_simplex_r_i_8
       (.I0(simplex_timer_r_reg[4]),
        .I1(simplex_timer_r_reg[7]),
        .I2(simplex_timer_r_reg[5]),
        .I3(simplex_timer_r_reg[6]),
        .I4(simplex_timer_r_reg[3]),
        .I5(simplex_timer_r_reg[1]),
        .O(tx_reset_simplex_r_i_8_n_0));
  FDRE tx_reset_simplex_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_15),
        .Q(tx_reset_simplex_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    tx_verify_simplex_r_i_2
       (.I0(simplex_timer_r_reg[2]),
        .I1(simplex_timer_r_reg[1]),
        .I2(simplex_timer_r_reg[3]),
        .O(tx_verify_simplex_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    tx_verify_simplex_r_i_3
       (.I0(tx_verify_simplex_r_i_4_n_0),
        .I1(simplex_timer_r_reg[0]),
        .I2(simplex_timer_r_reg[8]),
        .I3(simplex_timer_r_reg[11]),
        .I4(simplex_timer_r_reg[10]),
        .I5(tx_verify_simplex_r_i_5_n_0),
        .O(tx_verify_simplex_r_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tx_verify_simplex_r_i_4
       (.I0(simplex_timer_r_reg[4]),
        .I1(simplex_timer_r_reg[7]),
        .I2(simplex_timer_r_reg[5]),
        .I3(simplex_timer_r_reg[6]),
        .O(tx_verify_simplex_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    tx_verify_simplex_r_i_5
       (.I0(simplex_timer_r_reg[13]),
        .I1(simplex_timer_r_reg[12]),
        .I2(simplex_timer_r_reg[14]),
        .I3(simplex_timer_r_reg[15]),
        .I4(simplex_timer_r_reg[16]),
        .I5(simplex_timer_r_reg[17]),
        .O(tx_verify_simplex_r_i_5_n_0));
  FDRE tx_verify_simplex_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(core_reset_logic_i_n_4),
        .Q(tx_verify_simplex_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_gt
   (\FSM_sequential_state_reg[2] ,
    TXN,
    TXP,
    TX_OUT_CLK,
    txfsm_txresetdone_r_reg,
    DRPDO_OUT,
    hard_err_flop_r_reg,
    drpclk_in,
    DRPEN_IN,
    DRPWE_IN,
    gt_tx_reset_i,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    sync_clk,
    user_clk,
    POWER_DOWN,
    gt_txuserrdy_i,
    DRPDI_IN,
    LOOPBACK,
    TXDATA,
    TXCHARISK,
    DRPADDR_IN,
    gt_common_reset_out,
    init_clk_in,
    ENABLE_ERR_DETECT);
  output \FSM_sequential_state_reg[2] ;
  output TXN;
  output TXP;
  output TX_OUT_CLK;
  output txfsm_txresetdone_r_reg;
  output [15:0]DRPDO_OUT;
  output hard_err_flop_r_reg;
  input drpclk_in;
  input DRPEN_IN;
  input DRPWE_IN;
  input gt_tx_reset_i;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  input sync_clk;
  input user_clk;
  input POWER_DOWN;
  input gt_txuserrdy_i;
  input [15:0]DRPDI_IN;
  input [2:0]LOOPBACK;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]DRPADDR_IN;
  input gt_common_reset_out;
  input init_clk_in;
  input ENABLE_ERR_DETECT;

  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire ENABLE_ERR_DETECT;
  wire \FSM_sequential_state_reg[2] ;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire GTRXRESET;
  wire [2:0]LOOPBACK;
  wire POWER_DOWN;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire drpclk_in;
  wire gt_common_reset_out;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i_n_1;
  wire gtpe2_i_n_102;
  wire gtpe2_i_n_103;
  wire gtpe2_i_n_104;
  wire gtpe2_i_n_105;
  wire gtpe2_i_n_112;
  wire gtpe2_i_n_113;
  wire gtpe2_i_n_114;
  wire gtpe2_i_n_115;
  wire gtpe2_i_n_116;
  wire gtpe2_i_n_117;
  wire gtpe2_i_n_118;
  wire gtpe2_i_n_119;
  wire gtpe2_i_n_120;
  wire gtpe2_i_n_121;
  wire gtpe2_i_n_122;
  wire gtpe2_i_n_123;
  wire gtpe2_i_n_124;
  wire gtpe2_i_n_125;
  wire gtpe2_i_n_126;
  wire gtpe2_i_n_127;
  wire gtpe2_i_n_128;
  wire gtpe2_i_n_129;
  wire gtpe2_i_n_130;
  wire gtpe2_i_n_131;
  wire gtpe2_i_n_132;
  wire gtpe2_i_n_133;
  wire gtpe2_i_n_134;
  wire gtpe2_i_n_135;
  wire gtpe2_i_n_136;
  wire gtpe2_i_n_137;
  wire gtpe2_i_n_138;
  wire gtpe2_i_n_139;
  wire gtpe2_i_n_14;
  wire gtpe2_i_n_140;
  wire gtpe2_i_n_141;
  wire gtpe2_i_n_142;
  wire gtpe2_i_n_143;
  wire gtpe2_i_n_144;
  wire gtpe2_i_n_145;
  wire gtpe2_i_n_146;
  wire gtpe2_i_n_147;
  wire gtpe2_i_n_148;
  wire gtpe2_i_n_149;
  wire gtpe2_i_n_150;
  wire gtpe2_i_n_151;
  wire gtpe2_i_n_156;
  wire gtpe2_i_n_157;
  wire gtpe2_i_n_158;
  wire gtpe2_i_n_159;
  wire gtpe2_i_n_160;
  wire gtpe2_i_n_161;
  wire gtpe2_i_n_162;
  wire gtpe2_i_n_163;
  wire gtpe2_i_n_24;
  wire gtpe2_i_n_251;
  wire gtpe2_i_n_28;
  wire gtpe2_i_n_29;
  wire gtpe2_i_n_31;
  wire gtpe2_i_n_39;
  wire gtpe2_i_n_40;
  wire gtpe2_i_n_48;
  wire gtpe2_i_n_49;
  wire gtpe2_i_n_50;
  wire gtpe2_i_n_51;
  wire gtpe2_i_n_52;
  wire gtpe2_i_n_53;
  wire gtpe2_i_n_54;
  wire gtpe2_i_n_55;
  wire gtpe2_i_n_56;
  wire gtpe2_i_n_57;
  wire gtpe2_i_n_58;
  wire gtpe2_i_n_59;
  wire gtpe2_i_n_60;
  wire gtpe2_i_n_61;
  wire gtpe2_i_n_62;
  wire gtpe2_i_n_7;
  wire gtpe2_i_n_8;
  wire gtpe2_i_n_9;
  wire gtpe2_i_n_95;
  wire gtpe2_i_n_96;
  wire hard_err_flop_r_reg;
  wire init_clk_in;
  wire sync_clk;
  wire tx_buf_err_i;
  wire txfsm_txresetdone_r_reg;
  wire user_clk;
  wire NLW_gtpe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gtpe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTPE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'b00000000000000000000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(43'b1001001000000000000000001000000111010000000),
    .CFOK_CFG2(7'b0100000),
    .CFOK_CFG3(7'b0100000),
    .CFOK_CFG4(1'b0),
    .CFOK_CFG5(2'b00),
    .CFOK_CFG6(4'b0000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(7),
    .CHAN_BOND_SEQ_1_1(10'b0101111100),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b0001),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b0000),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_COMMON_SWING(1'b0),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(31),
    .CLK_COR_MIN_LAT(24),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0111110111),
    .CLK_COR_SEQ_1_4(10'b0111110111),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(4),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h010),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_LOOPBACK_CFG(1'b0),
    .PMA_RSV(32'h00000333),
    .PMA_RSV2(32'h00002040),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(4'b0000),
    .PMA_RSV5(1'b0),
    .PMA_RSV6(1'b0),
    .PMA_RSV7(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0000107FE406001041010),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b001001),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPMRESET_TIME(7'b0001111),
    .RXLPM_BIAS_STARTUP_DISABLE(1'b0),
    .RXLPM_CFG(4'b0110),
    .RXLPM_CFG1(1'b0),
    .RXLPM_CM_CFG(1'b0),
    .RXLPM_GC_CFG(9'b111100010),
    .RXLPM_GC_CFG2(3'b001),
    .RXLPM_HF_CFG(14'b00001111110000),
    .RXLPM_HF_CFG2(5'b01010),
    .RXLPM_HF_CFG3(4'b0000),
    .RXLPM_HOLD_DURING_EIDLE(1'b0),
    .RXLPM_INCM_CFG(1'b1),
    .RXLPM_IPCM_CFG(1'b0),
    .RXLPM_LF_CFG(18'b000000001111110000),
    .RXLPM_LF_CFG2(5'b01010),
    .RXLPM_OSINT_CFG(3'b100),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(3'b000),
    .RXPI_CFG1(1'b1),
    .RXPI_CFG2(1'b1),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(16'b0000111100110011),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_EN(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SATA_PLL_CFG("VCO_3000MHZ"),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b000),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b000),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gtpe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gtpe2_i_n_48,gtpe2_i_n_49,gtpe2_i_n_50,gtpe2_i_n_51,gtpe2_i_n_52,gtpe2_i_n_53,gtpe2_i_n_54,gtpe2_i_n_55,gtpe2_i_n_56,gtpe2_i_n_57,gtpe2_i_n_58,gtpe2_i_n_59,gtpe2_i_n_60,gtpe2_i_n_61,gtpe2_i_n_62}),
        .DRPADDR(DRPADDR_IN),
        .DRPCLK(drpclk_in),
        .DRPDI(DRPDI_IN),
        .DRPDO(DRPDO_OUT),
        .DRPEN(DRPEN_IN),
        .DRPRDY(\FSM_sequential_state_reg[2] ),
        .DRPWE(DRPWE_IN),
        .EYESCANDATAERROR(gtpe2_i_n_1),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTPRXN(1'b0),
        .GTPRXP(1'b0),
        .GTPTXN(TXN),
        .GTPTXP(TXP),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(GTRXRESET),
        .GTTXRESET(gt_tx_reset_i),
        .LOOPBACK(LOOPBACK),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtpe2_i_PHYSTATUS_UNCONNECTED),
        .PLL0CLK(GT0_PLL0OUTCLK_IN),
        .PLL0REFCLK(GT0_PLL0OUTREFCLK_IN),
        .PLL1CLK(GT0_PLL1OUTCLK_IN),
        .PLL1REFCLK(GT0_PLL1OUTREFCLK_IN),
        .PMARSVDIN0(1'b0),
        .PMARSVDIN1(1'b0),
        .PMARSVDIN2(1'b0),
        .PMARSVDIN3(1'b0),
        .PMARSVDIN4(1'b0),
        .PMARSVDOUT0(NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED),
        .PMARSVDOUT1(NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({gtpe2_i_n_103,gtpe2_i_n_104,gtpe2_i_n_105}),
        .RXBYTEISALIGNED(gtpe2_i_n_7),
        .RXBYTEREALIGN(gtpe2_i_n_8),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(gtpe2_i_n_9),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({gtpe2_i_n_144,gtpe2_i_n_145,gtpe2_i_n_146,gtpe2_i_n_147}),
        .RXCHARISK({gtpe2_i_n_148,gtpe2_i_n_149,gtpe2_i_n_150,gtpe2_i_n_151}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtpe2_i_RXCHBONDO_UNCONNECTED[3:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT({gtpe2_i_n_95,gtpe2_i_n_96}),
        .RXCOMINITDET(NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtpe2_i_n_14),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({gtpe2_i_n_112,gtpe2_i_n_113,gtpe2_i_n_114,gtpe2_i_n_115,gtpe2_i_n_116,gtpe2_i_n_117,gtpe2_i_n_118,gtpe2_i_n_119,gtpe2_i_n_120,gtpe2_i_n_121,gtpe2_i_n_122,gtpe2_i_n_123,gtpe2_i_n_124,gtpe2_i_n_125,gtpe2_i_n_126,gtpe2_i_n_127,gtpe2_i_n_128,gtpe2_i_n_129,gtpe2_i_n_130,gtpe2_i_n_131,gtpe2_i_n_132,gtpe2_i_n_133,gtpe2_i_n_134,gtpe2_i_n_135,gtpe2_i_n_136,gtpe2_i_n_137,gtpe2_i_n_138,gtpe2_i_n_139,gtpe2_i_n_140,gtpe2_i_n_141,gtpe2_i_n_142,gtpe2_i_n_143}),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR({gtpe2_i_n_156,gtpe2_i_n_157,gtpe2_i_n_158,gtpe2_i_n_159}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtpe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtpe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFOVRDEN(1'b0),
        .RXLPMOSINTNTRLEN(1'b0),
        .RXLPMRESET(1'b0),
        .RXMCOMMAALIGNEN(1'b0),
        .RXNOTINTABLE({gtpe2_i_n_160,gtpe2_i_n_161,gtpe2_i_n_162,gtpe2_i_n_163}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b0,1'b1,1'b0}),
        .RXOSINTDONE(NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTPD(1'b0),
        .RXOSINTSTARTED(NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtpe2_i_n_24),
        .RXOUTCLKFABRIC(NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(1'b0),
        .RXPCSRESET(1'b0),
        .RXPD({POWER_DOWN,POWER_DOWN}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtpe2_i_n_28),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtpe2_i_n_29),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtpe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(gtpe2_i_n_31),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gtpe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gtpe2_i_n_251),
        .RXUSRCLK(sync_clk),
        .RXUSRCLK2(user_clk),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({tx_buf_err_i,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK(TXCHARISK),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA(TXDATA),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(POWER_DOWN),
        .TXGEARBOXREADY(NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(TX_OUT_CLK),
        .TXOUTCLKFABRIC(gtpe2_i_n_39),
        .TXOUTCLKPCS(gtpe2_i_n_40),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({POWER_DOWN,POWER_DOWN}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtpe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(txfsm_txresetdone_r_reg),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_gtrxreset_seq gtrxreset_seq_i
       (.GTRXRESET(GTRXRESET),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gtrxreset_o_reg_0(\FSM_sequential_state_reg[2] ),
        .in0(gtpe2_i_n_28),
        .init_clk_in(init_clk_in));
  LUT2 #(
    .INIT(4'h8)) 
    hard_err_flop_r_i_1
       (.I0(tx_buf_err_i),
        .I1(ENABLE_ERR_DETECT),
        .O(hard_err_flop_r_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_gtrxreset_seq
   (GTRXRESET,
    in0,
    drpclk_in,
    gt_common_reset_out,
    init_clk_in,
    gtrxreset_o_reg_0);
  output GTRXRESET;
  input in0;
  input drpclk_in;
  input gt_common_reset_out;
  input init_clk_in;
  input gtrxreset_o_reg_0;

  wire \/FSM_sequential_state[0]_i_1_n_0 ;
  wire \/FSM_sequential_state[1]_i_1_n_0 ;
  wire \/FSM_sequential_state[2]_i_1_n_0 ;
  wire GTRXRESET;
  wire drpclk_in;
  wire gt_common_reset_out;
  wire gtrxreset_f;
  wire gtrxreset_i__0;
  wire gtrxreset_o_reg_0;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire in0;
  wire init_clk_in;
  wire rst_ss;
  wire rxpmaresetdone_cdc_sync_n_1;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  LUT6 #(
    .INIT(64'h4040EBE87070EBE8)) 
    \/FSM_sequential_state[0]_i_1 
       (.I0(gtrxreset_o_reg_0),
        .I1(state[1]),
        .I2(state[2]),
        .I3(gtrxreset_ss),
        .I4(state[0]),
        .I5(rxpmaresetdone_cdc_sync_n_1),
        .O(\/FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FFFF44FF0000)) 
    \/FSM_sequential_state[1]_i_1 
       (.I0(rxpmaresetdone_ss),
        .I1(rxpmaresetdone_sss),
        .I2(gtrxreset_o_reg_0),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\/FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FC0)) 
    \/FSM_sequential_state[2]_i_1 
       (.I0(gtrxreset_o_reg_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\/FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,drp_rd:001,wait_rd_data:010,wr_16:011,wait_wr_done1:100,wait_pmareset:101,wr_20:110,wait_wr_done2:111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\/FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "idle:000,drp_rd:001,wait_rd_data:010,wr_16:011,wait_wr_done1:100,wait_pmareset:101,wr_20:110,wait_wr_done2:111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\/FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "idle:000,drp_rd:001,wait_rd_data:010,wr_16:011,wait_wr_done1:100,wait_pmareset:101,wr_20:110,wait_wr_done2:111" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\/FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT4 #(
    .INIT(16'h7366)) 
    gtrxreset_i
       (.I0(state[1]),
        .I1(state[2]),
        .I2(gtrxreset_ss),
        .I3(state[0]),
        .O(gtrxreset_i__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_0 gtrxreset_in_cdc_sync
       (.drpclk_in(drpclk_in),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_f));
  FDCE gtrxreset_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(gtrxreset_i__0),
        .Q(GTRXRESET));
  FDCE gtrxreset_s_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(gtrxreset_f),
        .Q(gtrxreset_s));
  FDCE gtrxreset_ss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_1 rst_cdc_sync
       (.AR(rst_ss),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .init_clk_in(init_clk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_2 rxpmaresetdone_cdc_sync
       (.\FSM_sequential_state_reg[0] (rxpmaresetdone_cdc_sync_n_1),
        .drpclk_in(drpclk_in),
        .in0(in0),
        .out(rxpmaresetdone_ss),
        .rxpmaresetdone_sss(rxpmaresetdone_sss));
  FDCE rxpmaresetdone_sss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_multi_gt
   (\FSM_sequential_state_reg[2] ,
    TXN,
    TXP,
    TX_OUT_CLK,
    txfsm_txresetdone_r_reg,
    DRPDO_OUT,
    hard_err_flop_r_reg,
    drpclk_in,
    DRPEN_IN,
    DRPWE_IN,
    gt_tx_reset_i,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    sync_clk,
    user_clk,
    POWER_DOWN,
    gt_txuserrdy_i,
    DRPDI_IN,
    LOOPBACK,
    TXDATA,
    TXCHARISK,
    DRPADDR_IN,
    gt_common_reset_out,
    init_clk_in,
    ENABLE_ERR_DETECT);
  output \FSM_sequential_state_reg[2] ;
  output TXN;
  output TXP;
  output TX_OUT_CLK;
  output txfsm_txresetdone_r_reg;
  output [15:0]DRPDO_OUT;
  output hard_err_flop_r_reg;
  input drpclk_in;
  input DRPEN_IN;
  input DRPWE_IN;
  input gt_tx_reset_i;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  input sync_clk;
  input user_clk;
  input POWER_DOWN;
  input gt_txuserrdy_i;
  input [15:0]DRPDI_IN;
  input [2:0]LOOPBACK;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]DRPADDR_IN;
  input gt_common_reset_out;
  input init_clk_in;
  input ENABLE_ERR_DETECT;

  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire ENABLE_ERR_DETECT;
  wire \FSM_sequential_state_reg[2] ;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire [2:0]LOOPBACK;
  wire POWER_DOWN;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire drpclk_in;
  wire gt_common_reset_out;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_flop_r_reg;
  wire init_clk_in;
  wire sync_clk;
  wire txfsm_txresetdone_r_reg;
  wire user_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_gt gt0_system_aurora_8b10b_0_0_i
       (.DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .ENABLE_ERR_DETECT(ENABLE_ERR_DETECT),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .POWER_DOWN(POWER_DOWN),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_flop_r_reg(hard_err_flop_r_reg),
        .init_clk_in(init_clk_in),
        .sync_clk(sync_clk),
        .txfsm_txresetdone_r_reg(txfsm_txresetdone_r_reg),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_tx_startup_fsm
   (TX_RESETDONE_OUT,
    gt_tx_reset_i,
    gt_common_reset_out,
    gt_txuserrdy_i,
    gt_txresetdone_r2_reg,
    TX_LOCK,
    quad1_common_lock_in,
    init_clk_in,
    user_clk,
    txfsm_txresetdone_r,
    AR,
    PLL_NOT_LOCKED);
  output TX_RESETDONE_OUT;
  output gt_tx_reset_i;
  output gt_common_reset_out;
  output gt_txuserrdy_i;
  output gt_txresetdone_r2_reg;
  output TX_LOCK;
  input quad1_common_lock_in;
  input init_clk_in;
  input user_clk;
  input txfsm_txresetdone_r;
  input [0:0]AR;
  input PLL_NOT_LOCKED;

  wire [0:0]AR;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire MMCM_RESET;
  wire MMCM_RESET_i_1_n_0;
  wire PLL0_RESET_i_1_n_0;
  wire PLL_NOT_LOCKED;
  wire TXUSERRDY_i_1_n_0;
  wire TX_LOCK;
  wire TX_RESETDONE_OUT;
  wire clear;
  wire gt_common_reset_out;
  wire gt_tx_reset_i;
  wire gt_txresetdone_r2_reg;
  wire gt_txuserrdy_i;
  wire gttxreset_i_i_1_n_0;
  wire init_clk_in;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire [5:0]init_wait_count_reg__0;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_i_2_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_4_n_0 ;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire [5:1]p_0_in;
  wire [9:0]p_0_in__0;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire quad1_common_lock_in;
  wire reset_time_out;
  wire run_phase_alignment_int;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_s3;
  wire scndry_out;
  wire sync_PLL0LOCK_cdc_sync_n_0;
  wire sync_PLL0LOCK_cdc_sync_n_1;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_0;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire time_out_2ms;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_i_3_n_0;
  wire time_out_500us_i_4_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire \time_out_counter[0]_i_6_n_0 ;
  wire [16:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s3;
  (* RTL_KEEP = "yes" *) wire [3:0]tx_state;
  wire tx_state12_out;
  wire txfsm_txresetdone_r;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire user_clk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire \wait_bypass_count[0]_i_5_n_0 ;
  wire \wait_bypass_count[0]_i_6_n_0 ;
  wire \wait_bypass_count[0]_i_7_n_0 ;
  wire \wait_bypass_count[0]_i_8_n_0 ;
  wire [15:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire [6:0]wait_time_cnt0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[4]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg__0;
  wire [3:0]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h2222220222220A0A)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3B33BBBBBBBBBBBB)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(tx_state[0]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .I4(tx_state[1]),
        .I5(tx_state[2]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11110444)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state12_out),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[1]_i_2 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .I2(mmcm_lock_reclocked),
        .O(tx_state12_out));
  LUT6 #(
    .INIT(64'h1111004055550040)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF04)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max_reg_n_0),
        .I2(reset_time_out),
        .I3(tx_state[1]),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(wait_time_cnt_reg__0[3]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[2]),
        .I4(wait_time_cnt_reg__0[4]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00A00B00)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .I1(time_out_wait_bypass_s3),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .I1(tx_state[1]),
        .I2(\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .I3(tx_state[0]),
        .I4(\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .I5(wait_time_cnt_reg__0[6]),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(tx_state[0]),
        .I1(reset_time_out),
        .I2(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out),
        .I2(time_tlock_max_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_1),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_1),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_1),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_1),
        .D(\FSM_sequential_tx_state[3]_i_2_n_0 ),
        .Q(tx_state[3]),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFF70004)) 
    MMCM_RESET_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(MMCM_RESET),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(MMCM_RESET),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000100)) 
    PLL0_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
        .I4(tx_state[1]),
        .I5(gt_common_reset_out),
        .O(PLL0_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(gt_common_reset_out),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt_txuserrdy_i),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt_txuserrdy_i),
        .R(AR));
  LUT2 #(
    .INIT(4'h2)) 
    TX_LOCK_INST_0
       (.I0(quad1_common_lock_in),
        .I1(MMCM_RESET),
        .O(TX_LOCK));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gttxreset_i_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(gt_tx_reset_i),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt_tx_reset_i),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[5]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[0]),
        .I5(init_wait_count_reg__0[1]),
        .O(init_wait_count));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_2 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    init_wait_done_i_1
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[5]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_done_i_2_n_0),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .O(init_wait_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[4]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\mmcm_lock_count[7]_i_2_n_0 ),
        .I2(mmcm_lock_count_reg__0[4]),
        .I3(mmcm_lock_count_reg__0[3]),
        .I4(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(\mmcm_lock_count[7]_i_2_n_0 ),
        .I4(mmcm_lock_count_reg__0[4]),
        .I5(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\mmcm_lock_count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[6]),
        .I4(\mmcm_lock_count[9]_i_4_n_0 ),
        .I5(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(\mmcm_lock_count[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(\mmcm_lock_count[7]_i_2_n_0 ),
        .I4(mmcm_lock_count_reg__0[4]),
        .I5(mmcm_lock_count_reg__0[3]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_cdc_sync_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEF00FF10)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(pll_reset_asserted_reg_n_0),
        .I4(tx_state[1]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_PLL0LOCK_cdc_sync_n_0),
        .Q(reset_time_out),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(run_phase_alignment_int),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_3 sync_PLL0LOCK_cdc_sync
       (.E(sync_PLL0LOCK_cdc_sync_n_1),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[1] (\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .Q(wait_time_cnt_reg__0[6]),
        .init_clk_in(init_clk_in),
        .init_wait_done_reg(init_wait_done_reg_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(tx_state),
        .pll_reset_asserted_reg(pll_reset_asserted_reg_n_0),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_PLL0LOCK_cdc_sync_n_0),
        .time_out_2ms_reg(time_out_2ms_reg_n_0),
        .txresetdone_s3(txresetdone_s3),
        .\wait_time_cnt_reg[3] (\FSM_sequential_tx_state[3]_i_10_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_4 sync_PLL1LOCK_cdc_sync
       (.init_clk_in(init_clk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_5 sync_TXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(txresetdone_s2),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized1_6 sync_mmcm_lock_reclocked_cdc_sync
       (.PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .Q(mmcm_lock_count_reg__0[9:8]),
        .SR(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .init_clk_in(init_clk_in),
        .\mmcm_lock_count_reg[7] (mmcm_lock_reclocked_i_2_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3 sync_run_phase_alignment_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(scndry_out),
        .run_phase_alignment_int(run_phase_alignment_int),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized6_7 sync_time_out_wait_bypass_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .time_out_wait_bypass(time_out_wait_bypass),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_system_aurora_8b10b_0_0_cdc_sync__parameterized3_8 sync_tx_fsm_reset_done_int_cdc_sync
       (.TX_RESETDONE_OUT(TX_RESETDONE_OUT),
        .gt_txresetdone_r2_reg(gt_txresetdone_r2_reg),
        .init_clk_in(init_clk_in),
        .tx_fsm_reset_done_int(tx_fsm_reset_done_int),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms),
        .I2(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AAAE)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_500us_i_3_n_0),
        .I3(time_tlock_max_i_3_n_0),
        .I4(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_counter_reg[4]),
        .O(time_out_500us_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    time_out_500us_i_3
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[14]),
        .I5(time_out_500us_i_4_n_0),
        .O(time_out_500us_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_500us_i_4
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[12]),
        .O(time_out_500us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_2ms),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \time_out_counter[0]_i_3 
       (.I0(\time_out_counter[0]_i_5_n_0 ),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[16]),
        .I4(\time_out_counter[0]_i_6_n_0 ),
        .I5(time_tlock_max_i_5_n_0),
        .O(time_out_2ms));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[1]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[6]),
        .O(\time_out_counter[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,time_out_counter_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass),
        .I1(tx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2_n_0),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_wait_bypass_i_2
       (.I0(\wait_bypass_count[0]_i_4_n_0 ),
        .I1(\wait_bypass_count[0]_i_5_n_0 ),
        .I2(\wait_bypass_count[0]_i_6_n_0 ),
        .I3(\wait_bypass_count[0]_i_7_n_0 ),
        .O(time_out_wait_bypass_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_tlock_max_i_3_n_0),
        .I3(time_tlock_max_i_4_n_0),
        .I4(time_tlock_max_i_5_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[8]),
        .I5(time_out_counter_reg[7]),
        .O(time_tlock_max_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .O(time_tlock_max_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[9]),
        .O(time_tlock_max_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[13]),
        .O(time_tlock_max_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(tx_fsm_reset_done_int),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(tx_fsm_reset_done_int),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_RESETDONE_OUT),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \wait_bypass_count[0]_i_2 
       (.I0(\wait_bypass_count[0]_i_4_n_0 ),
        .I1(\wait_bypass_count[0]_i_5_n_0 ),
        .I2(\wait_bypass_count[0]_i_6_n_0 ),
        .I3(\wait_bypass_count[0]_i_7_n_0 ),
        .I4(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[6]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[15]),
        .I3(wait_bypass_count_reg[13]),
        .O(\wait_bypass_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[10]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[9]),
        .O(\wait_bypass_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[8]),
        .I2(wait_bypass_count_reg[2]),
        .I3(wait_bypass_count_reg[14]),
        .O(\wait_bypass_count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_8_n_0 ));
  FDRE \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_8_n_0 }));
  FDRE \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED [3],\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE \wait_bypass_count_reg[13] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE \wait_bypass_count_reg[14] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE \wait_bypass_count_reg[15] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .O(\wait_time_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[2]),
        .O(wait_time_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg__0[3]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[2]),
        .O(wait_time_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[0]),
        .I4(wait_time_cnt_reg__0[3]),
        .O(\wait_time_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg__0[5]),
        .I1(wait_time_cnt_reg__0[3]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .I4(wait_time_cnt_reg__0[2]),
        .I5(wait_time_cnt_reg__0[4]),
        .O(wait_time_cnt0[5]));
  LUT4 #(
    .INIT(16'h1050)) 
    \wait_time_cnt[6]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(\wait_time_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \wait_time_cnt[6]_i_2 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(wait_time_cnt_reg__0[3]),
        .I2(\wait_time_cnt[6]_i_4_n_0 ),
        .I3(wait_time_cnt_reg__0[4]),
        .I4(wait_time_cnt_reg__0[5]),
        .O(\wait_time_cnt[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA9AA)) 
    \wait_time_cnt[6]_i_3 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(wait_time_cnt_reg__0[5]),
        .I2(wait_time_cnt_reg__0[4]),
        .I3(\wait_time_cnt[6]_i_4_n_0 ),
        .I4(wait_time_cnt_reg__0[3]),
        .O(wait_time_cnt0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg__0[2]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[0]),
        .O(\wait_time_cnt[6]_i_4_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(wait_time_cnt0[0]),
        .Q(wait_time_cnt_reg__0[0]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[1]_i_1_n_0 ),
        .Q(wait_time_cnt_reg__0[1]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(wait_time_cnt0[2]),
        .Q(wait_time_cnt_reg__0[2]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(wait_time_cnt0[3]),
        .Q(wait_time_cnt_reg__0[3]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(\wait_time_cnt[4]_i_1_n_0 ),
        .Q(wait_time_cnt_reg__0[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(wait_time_cnt0[5]),
        .Q(wait_time_cnt_reg__0[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2_n_0 ),
        .D(wait_time_cnt0[6]),
        .Q(wait_time_cnt_reg__0[6]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
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
