------------------------------------------------------------------------------
-- (c) Copyright 2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
--
------------------------------------------------------------------------------
--
--  AXI_TO_LL
--
--
--  Description: This light wrapper/shim convertes Legacy LocalLink interface
--               signals from AXI-4 Stream protocol signals
--
--
------------------------------------------------------------------------------/
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity system_aurora_8b10b_0_0_AXI_TO_LL is
generic
(
    DATA_WIDTH  : integer :=   16;      -- DATA bus width
    STRB_WIDTH  : integer :=   2;       -- STROBE bus width
    REM_WIDTH   : integer :=   1;       -- REM bus width
    USE_4_NFC   : integer :=   0;       --  0 => PDU, 1 => NFC, 2 => UFC
    USE_UFC_REM : integer :=   0        -- UFC REM bus width identifier
);  

port
(

  ----------------------  AXI4-S Interface -------------------------------
 
  AXI4_S_IP_TX_TDATA              : in    std_logic_vector (0 to DATA_WIDTH-1);
  AXI4_S_IP_TX_TKEEP              : in    std_logic_vector (0 to STRB_WIDTH-1);
  AXI4_S_IP_TX_TVALID             : in    std_logic;
  AXI4_S_IP_TX_TLAST              : in    std_logic;
  AXI4_S_OP_TX_TREADY             : out   std_logic;

  ----------------------  LocalLink Interface ----------------------------
  LL_OP_DATA                      : out   std_logic_vector (0 to DATA_WIDTH-1);
  LL_OP_REM                       : out   std_logic_vector (0 to REM_WIDTH -1);
  LL_OP_SRC_RDY_N                 : out   std_logic;
  LL_OP_SOF_N                     : out   std_logic;
  LL_OP_EOF_N                     : out   std_logic;
  LL_IP_DST_RDY_N                 : in    std_logic;

  ----------------------  System Interface ----------------------------
  USER_CLK                        : in    std_logic;
  RESET                           : in    std_logic;
  CHANNEL_UP                      : in    std_logic

);

end system_aurora_8b10b_0_0_AXI_TO_LL;

architecture BEHAVIORAL of system_aurora_8b10b_0_0_AXI_TO_LL is
  attribute core_generation_info               : string;
attribute core_generation_info of BEHAVIORAL : architecture is "system_aurora_8b10b_0_0,aurora_8b10b_v11_1_3,{user_interface=AXI_4_Streaming,backchannel_mode=Timer,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=62500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=true,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=TX-only_Simplex}";

--***********************************Parameter Declarations***************************

    constant DLY             : time      := 1 ns;

    signal   new_pkt_r                   : std_logic;
    signal   new_pkt                     : std_logic;
    signal   temp_cond                   : std_logic;
    signal   ll_op_sof                   : std_logic;
    signal   ll_ip_dst_rdy               : std_logic;
    signal   AXI4_S_IP_TX_TKEEP_i        : std_logic_vector(0 to STRB_WIDTH-1);

begin

--*********************************Main Body of Code**********************************



   ll_ip_dst_rdy       <= not LL_IP_DST_RDY_N;
 
   LL_OP_DATA          <= AXI4_S_IP_TX_TDATA;

 
   AXI4_S_IP_TX_TKEEP_i          <= AXI4_S_IP_TX_TKEEP;




   LL_OP_SRC_RDY_N     <= not AXI4_S_IP_TX_TVALID;
   LL_OP_EOF_N         <= not AXI4_S_IP_TX_TLAST;

LL_OP_REM           <= ("0" & AXI4_S_IP_TX_TKEEP_i(0)) + ("0" & AXI4_S_IP_TX_TKEEP_i(1)) + ("0" & AXI4_S_IP_TX_TKEEP_i(2)) + ("0" & AXI4_S_IP_TX_TKEEP_i(3))  - '1';

   new_pkt             <= '0' when ((AXI4_S_IP_TX_TVALID AND ll_ip_dst_rdy AND AXI4_S_IP_TX_TLAST) = '1') else
			  '1' when ((AXI4_S_IP_TX_TVALID AND ll_ip_dst_rdy AND not AXI4_S_IP_TX_TLAST) = '1') else
			  new_pkt_r;

   temp_cond           <= '0' when (new_pkt_r = '1') else
			  '1';
   ll_op_sof           <= temp_cond when ((AXI4_S_IP_TX_TVALID AND ll_ip_dst_rdy AND AXI4_S_IP_TX_TLAST) = '1') else
			  (new_pkt and (not new_pkt_r));

   LL_OP_SOF_N         <= not ll_op_sof;

   process(USER_CLK)
   begin
     if(USER_CLK'event and USER_CLK='1') then
       if(RESET = '1') then
         new_pkt_r     <=  '0' after DLY; 
       elsif(CHANNEL_UP = '1') then
         new_pkt_r     <=  new_pkt after DLY; 
       else
         new_pkt_r     <=  '0' after DLY; 
       end if;
     end if;
   end process;

   -- Assign output from temp signal
   AXI4_S_OP_TX_TREADY <= ll_ip_dst_rdy;

end BEHAVIORAL;   
