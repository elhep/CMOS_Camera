------------------------------------------------------------------------------/
-- (c) Copyright 2008 Xilinx, Inc. All rights reserved.
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
------------------------------------------------------------------------------/
--
--
--  system_aurora_8b10b_0_0
--
--
--
--  Description: This is the top level module for a 1 4-byte lane
--               Simplex Aurora reference design module.
--
--               This module is a Simplex TX module. All GTs are used for
--               transmission only.
--               This module supports the following features:
--
--               * Supports Virtex 5 GT


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- synthesis translate_off
library UNISIM;
use UNISIM.all;
-- synthesis translate_on


entity system_aurora_8b10b_0_0_core is
   generic(
          SIM_GTRESET_SPEEDUP : string  :=   "FALSE";
    CC_FREQ_FACTOR : integer := 12;
          EXAMPLE_SIMULATION  : integer :=  0      
          );
port(
    -- TX Stream Interface
S_AXI_TX_TDATA         : in  std_logic_vector(0 to 31);
S_AXI_TX_TKEEP         : in std_logic_vector(0 to 3);
            S_AXI_TX_TVALID        : in  std_logic;
            S_AXI_TX_TREADY        : out std_logic;
            S_AXI_TX_TLAST         : in  std_logic;



    --GT Serial I/O
TXP             : out std_logic;
TXN             : out std_logic;

    --GT Reference Clock Interface
    gt_refclk1    : in std_logic;

    --Error Detection Interface
    TX_HARD_ERR    : out std_logic;

    -- Status
    TX_CHANNEL_UP       : out std_logic;
TX_LANE_UP          : out std_logic;


    --System Interface
    user_clk        : in  std_logic;
    sync_clk        : in  std_logic;
    TX_SYSTEM_RESET  : in std_logic;
    TX_RESETDONE_OUT : out std_logic;
    POWER_DOWN      : in  std_logic;
    GT_RESET        : in  std_logic;
    init_clk_in   : in  std_logic;
    PLL_NOT_LOCKED      : in  std_logic;
drpclk_in                                               : in   std_logic;
DRPADDR_IN                              : in   std_logic_vector(8 downto 0);
DRPDI_IN                                : in   std_logic_vector(15 downto 0);
DRPDO_OUT                               : out  std_logic_vector(15 downto 0);
DRPEN_IN                                : in   std_logic;
DRPRDY_OUT                              : out  std_logic;
DRPWE_IN                                : in   std_logic;
 
    TX_OUT_CLK      : out std_logic;
  gt_common_reset_out     : out std_logic;
--____________________________COMMON PORTS_______________________________{
  gt0_pll0refclklost_in  : in  std_logic;
  quad1_common_lock_in        : in  std_logic;
------------------------- Channel - Ref Clock Ports ------------------------
    GT0_PLL0OUTCLK_IN                       : in   std_logic;
    GT0_PLL1OUTCLK_IN                       : in   std_logic;
    GT0_PLL0OUTREFCLK_IN                    : in   std_logic;
    GT0_PLL1OUTREFCLK_IN                    : in   std_logic;
--____________________________COMMON PORTS_______________________________}

    sys_reset_out   : out std_logic; 
    TX_LOCK         : out std_logic;
    LOOPBACK        : in  std_logic_vector(2 downto 0)

);

end system_aurora_8b10b_0_0_core;

architecture MAPPED of system_aurora_8b10b_0_0_core is
  attribute core_generation_info           : string;
attribute core_generation_info of MAPPED : architecture is "system_aurora_8b10b_0_0,aurora_8b10b_v11_1_3,{user_interface=AXI_4_Streaming,backchannel_mode=Timer,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=62500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=true,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=TX-only_Simplex}";

    -- Parameter Declarations --
    constant DLY : time := 1 ns;
    -- Simplex timer parameters
    constant C_SIMPLEX_TIMER       : integer  := 18;     -- Simplex Timer 
    constant C_ALIGNED_TIMER       : integer  := 158990;  -- Timer to assert TX_ALIGNED signal 
    constant C_VERIFY_TIMER        : integer  := C_ALIGNED_TIMER + 512;  -- Timer to assert TX_VERIFY signal 
    constant WATCHDOG_TIMEOUT      : integer := 14;

--*********************************Component Declarations****************************

    component system_aurora_8b10b_0_0_RESET_LOGIC
    port (
           RESET                  : in std_logic;
           USER_CLK               : in std_logic;
           INIT_CLK_IN            : in std_logic;
           TX_LOCK_IN             : in std_logic;
           PLL_NOT_LOCKED         : in std_logic;
           LINK_RESET_IN          : in std_logic;
           TX_RESETDONE_IN        : in std_logic;
           SYSTEM_RESET           : out std_logic
         );
     end component;


   -- AXI Shim modules
   component system_aurora_8b10b_0_0_LL_TO_AXI is
   generic
   (
    DATA_WIDTH  : integer :=   16;      -- DATA bus width
    USE_UFC_REM : integer :=   0;       -- UFC REM bus width identifier
    STRB_WIDTH  : integer :=   2;       -- STROBE bus width
    REM_WIDTH   : integer :=   1        -- REM bus width
   );  

   port
   (

    ----------------------  AXI4-S Interface -------------------------------
    AXI4_S_OP_TDATA                 : out   std_logic_vector (0 to DATA_WIDTH-1);
    AXI4_S_OP_TKEEP                 : out   std_logic_vector (0 to STRB_WIDTH-1);
    AXI4_S_OP_TVALID                : out   std_logic;
    AXI4_S_OP_TLAST                 : out   std_logic;
    AXI4_S_IP_TREADY                : in    std_logic;

    ----------------------  LocalLink Interface ----------------------------
    LL_IP_DATA                      : in    std_logic_vector (0 to DATA_WIDTH-1);
    LL_IP_REM                       : in    std_logic_vector (0 to REM_WIDTH-1);
    LL_IP_SRC_RDY_N                 : in    std_logic;
    LL_IP_SOF_N                     : in    std_logic;
    LL_IP_EOF_N                     : in    std_logic;
    LL_OP_DST_RDY_N                 : out   std_logic

   );
   end component;

   component system_aurora_8b10b_0_0_AXI_TO_LL is
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
   end component;
   
    component FD
    generic (INIT : bit := '0');
    port
    (
        Q : out std_ulogic;
        C : in  std_ulogic;
        D : in  std_ulogic
    );
    end component;

    component system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE
    port (

        -- GTX Interface
        TX_BUF_ERR        : in std_logic;
        TX_K_ERR          : in std_logic_vector(3 downto 0);
        TX_CHAR_IS_K      : out std_logic_vector(3 downto 0);
        TX_DATA           : out std_logic_vector(31 downto 0);
        GTX_TX_RESET      : out std_logic;

        -- TX_LL Interface
        GEN_SCP           : in std_logic_vector(0 to 1);
        GEN_ECP           : in std_logic_vector(0 to 1);
        GEN_PAD           : in std_logic_vector(0 to 1);
        TX_PE_DATA        : in std_logic_vector(0 to 31);
        TX_PE_DATA_V      : in std_logic_vector(0 to 1);
        GEN_CC            : in std_logic;

        -- Sideband Signals
        TX_ALIGNED         : in  std_logic;

        -- Global Logic Interface
        GEN_A             : in std_logic;
        GEN_K             : in std_logic_vector(0 to 3);
        GEN_R             : in std_logic_vector(0 to 3);
        GEN_V             : in std_logic_vector(0 to 3);
        LANE_UP           : out std_logic;
        HARD_ERR        : out std_logic;
        CHANNEL_UP        : in  std_logic;                     -- Channel is verified and ready

        -- System Interface
        USER_CLK          : in std_logic;
        RESET_SYMGEN      : in std_logic;                         -- Reset the SYM_GEN module.
        RESET             : in std_logic
       );

    end component;


  component  system_aurora_8b10b_0_0_cdc_sync is
    generic (
        C_CDC_TYPE                  : integer range 0 to 2 := 1                 ;
                                    -- 0 is pulse synch
                                    -- 1 is level synch
                                    -- 2 is ack based level sync
        C_RESET_STATE               : integer range 0 to 1 := 0                 ;
                                    -- 0 is reset not needed 
                                    -- 1 is reset needed 
        C_SINGLE_BIT                : integer range 0 to 1 := 1                 ; 
                                    -- 0 is bus input
                                    -- 1 is single bit input
        C_FLOP_INPUT                : integer range 0 to 1 := 0                 ;
        C_VECTOR_WIDTH              : integer range 0 to 32 := 32               ;
        C_MTBF_STAGES               : integer range 0 to 6 := 2                 
            -- Vector Data witdth
    );

    port (
        prmry_aclk                  : in  std_logic                             ;               --
        prmry_resetn                : in  std_logic                             ;               --
        prmry_in                    : in  std_logic                             ;               --
        prmry_vect_in               : in  std_logic_vector                                      --
                                        (C_VECTOR_WIDTH - 1 downto 0)           ;               --
        prmry_ack                   : out std_logic                             ;
                                                                                                --
        scndry_aclk                 : in  std_logic                             ;               --
        scndry_resetn               : in  std_logic                             ;               --
                                                                                                --
        -- Primary to Secondary Clock Crossing                                                  --
        scndry_out                  : out std_logic                             ;               --
                                                                                                --
        scndry_vect_out             : out std_logic_vector                                      --
                                        (C_VECTOR_WIDTH - 1 downto 0)                           --

    );
  end component;

    component system_aurora_8b10b_0_0_GT_WRAPPER
       generic(
          SIM_GTRESET_SPEEDUP : string :=   "FALSE";     -- Set to "true" to speed up sim reset
          EXAMPLE_SIMULATION  : integer :=  0      
              );
        port  (
RXFSM_DATA_VALID                        : in    std_logic; 

  gt_common_reset_out     : out std_logic;
--____________________________COMMON PORTS_______________________________{
  gt0_pll0refclklost_in  : in  std_logic;
  quad1_common_lock_in        : in  std_logic;
------------------------- Channel - Ref Clock Ports ------------------------
    GT0_PLL0OUTCLK_IN                       : in   std_logic;
    GT0_PLL1OUTCLK_IN                       : in   std_logic;
    GT0_PLL0OUTREFCLK_IN                    : in   std_logic;
    GT0_PLL1OUTREFCLK_IN                    : in   std_logic;
--____________________________COMMON PORTS_______________________________}
    gt0_txresetdone_out         : out    std_logic;
    gt0_rxresetdone_out         : out    std_logic;
    gt0_rxpmaresetdone_out      : out    std_logic;
    gt0_txbufstatus_out                         : out  std_logic_vector(1 downto 0);
    gt0_rxbufstatus_out                         : out  std_logic_vector(2 downto 0);


                -- DRP I/F
DRPADDR_IN                              : in   std_logic_vector(8 downto 0);
drpclk_in                               : in   std_logic;
DRPDI_IN                                : in   std_logic_vector(15 downto 0);
DRPDO_OUT                               : out  std_logic_vector(15 downto 0);
DRPEN_IN                                : in   std_logic;
DRPRDY_OUT                              : out  std_logic;
DRPWE_IN                                : in   std_logic;

                init_clk_in        : in    std_logic;
        	PLL_NOT_LOCKED           : in    std_logic;
        	TX_RESETDONE_OUT         : out   std_logic;
        	RX_RESETDONE_OUT         : out   std_logic;
ENCHANSYNC_IN           : in    std_logic;
ENMCOMMAALIGN_IN        : in    std_logic;
ENPCOMMAALIGN_IN        : in    std_logic;
                REFCLK                  : in    std_logic;
                LOOPBACK_IN             : in    std_logic_vector (2 downto 0);
RXPOLARITY_IN           : in    std_logic;
RXRESET_IN              : in    std_logic;
                RXUSRCLK_IN             : in    std_logic;
                RXUSRCLK2_IN            : in    std_logic;
RX1N_IN                 : in    std_logic;
RX1P_IN                 : in    std_logic;
TXCHARISK_IN            : in    std_logic_vector (3 downto 0);
TXDATA_IN               : in    std_logic_vector (31 downto 0);
                GTRESET_IN                                     : in    std_logic;
TXRESET_IN              : in    std_logic;
                TXUSRCLK_IN             : in    std_logic;
                TXUSRCLK2_IN            : in    std_logic;
RXBUFERR_OUT            : out   std_logic;
RXCHARISCOMMA_OUT       : out   std_logic_vector (3 downto 0);
RXCHARISK_OUT           : out   std_logic_vector (3 downto 0);
RXDATA_OUT              : out   std_logic_vector (31 downto 0);
RXDISPERR_OUT           : out   std_logic_vector (3 downto 0);
RXNOTINTABLE_OUT        : out   std_logic_vector (3 downto 0);
RXREALIGN_OUT           : out   std_logic;
CHBONDDONE_OUT          : out   std_logic;
TXBUFERR_OUT            : out   std_logic;
               GTRXRESET_IN            :  in std_logic;
                LINK_RESET_IN          : in std_logic;                     -- Link reset for hotplug scenerio.
PLLLKDET_OUT            : out   std_logic;
TXOUTCLK1_OUT           : out   std_logic;
TX1N_OUT                : out   std_logic;
TX1P_OUT                : out   std_logic;
                POWERDOWN_IN            : in    std_logic
             );
    end component;

    component BUFG
    port (O : out STD_ULOGIC;
          I : in STD_ULOGIC);
    end component;

component system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX

    port (
    -- Aurora Lane Interface

    LANE_UP            : in std_logic;
    HARD_ERR           : in std_logic;
    GEN_A              : out std_logic;
    GEN_K              : out std_logic_vector(0 to 3);
    GEN_R              : out std_logic_vector(0 to 3);
    GEN_V              : out std_logic_vector(0 to 3);
    RESET_LANES        : out std_logic;

    -- Sideband Signal
    TX_VERIFY          : in std_logic;

    -- System Interface

    USER_CLK           : in std_logic;
    RESET              : in std_logic;
    POWER_DOWN         : in std_logic;
    CHANNEL_UP         : out std_logic;
    CHANNEL_HARD_ERR   : out std_logic
         );
end component;


    component system_aurora_8b10b_0_0_TX_LL

    port (

        -- LocalLink PDU Interface

       TX_D           : in std_logic_vector(0 to 31);
       TX_REM         : in std_logic_vector(0 to 1);
       TX_SRC_RDY_N   : in std_logic;
       TX_SOF_N       : in std_logic;
       TX_EOF_N       : in std_logic;
       TX_DST_RDY_N   : out std_logic;

        -- Clock Compensation Interface
       WARN_CC        : in std_logic;
       DO_CC          : in std_logic;
        -- Global Logic Interface

       CHANNEL_UP     : in std_logic;

        -- Aurora Lane Interface

       GEN_SCP        : out std_logic;
       GEN_ECP        : out std_logic;
       TX_PE_DATA_V   : out std_logic_vector(0 to 1);
       GEN_PAD        : out std_logic_vector(0 to 1);
       TX_PE_DATA     : out std_logic_vector(0 to 31);
       GEN_CC         : out std_logic;

        -- System Interface

       USER_CLK       : in std_logic
         );

    end component;


component system_aurora_8b10b_0_0_STANDARD_CC_MODULE
    generic
    (
        CC_FREQ_FACTOR : integer := 24
    );
    port (
    -- Clock Compensation Control Interface
            WARN_CC        : out std_logic;
            DO_CC          : out std_logic;
    -- System Interface
            PLL_NOT_LOCKED : in std_logic;
            USER_CLK       : in std_logic;
            RESET          : in std_logic
         );
    end component;
--*********************************Wire Declarations**********************************

signal TX1N_OUT_unused                 : std_logic;
signal TX1P_OUT_unused                 : std_logic;
signal RX1N_IN_unused                  : std_logic;
signal RX1P_IN_unused                  : std_logic;
signal rx_char_is_comma_i_unused       : std_logic_vector(3 downto 0);    
signal rx_char_is_k_i_unused           : std_logic_vector(3 downto 0);
signal rx_data_i_unused                : std_logic_vector(31 downto 0);
signal rx_disp_err_i_unused            : std_logic_vector(3 downto 0);
signal rx_not_in_table_i_unused        : std_logic_vector(3 downto 0);
signal rx_realign_i_unused             : std_logic;
signal ch_bond_done_i_unused           : std_logic;

signal ch_bond_done_i           :   std_logic;
signal ch_bond_done_r1          :   std_logic;
signal ch_bond_done_r2          :   std_logic;
signal rx_status_float_i        : std_logic_vector(4 downto 0);
    signal en_chan_sync_i           :   std_logic;
signal ena_comma_align_i        :   std_logic;
signal gen_a_i                  :   std_logic;
signal gen_cc_i                 :   std_logic;
    signal gen_ecp_i                :   std_logic;
    signal gen_ecp_map_i            :   std_logic_vector(0 to 1);
signal gen_k_i                  :   std_logic_vector(0 to 3);
signal gen_pad_i                :   std_logic_vector(0 to 1);
signal gen_pad_map_i            :   std_logic_vector(0 to 1);
signal gen_r_i                  :   std_logic_vector(0 to 3);
    signal gen_scp_i                :   std_logic;
    signal gen_scp_map_i            :   std_logic_vector(0 to 1);
signal gen_v_i                  :   std_logic_vector(0 to 3);
signal gtx_rx_reset_i           :   std_logic;
signal gtx_tx_reset_i           :   std_logic;
signal open_rx_rec1_clk_i       :   std_logic;
signal open_rx_rec2_clk_i       :   std_logic;
    signal pma_reg_addr_map_i       :   std_logic_vector(5 downto 0);
    signal pma_reg_data_in_map_i    :   std_logic_vector(7 downto 0);
signal ref_clk_bsel_map_i       :   std_logic;
signal ref_clk_sel_map_i        :   std_logic;
signal rx_buf_err_i             :   std_logic;
    signal rx_channel_up_i          :   std_logic;
signal rx_char_is_comma_i       :   std_logic_vector(3 downto 0);
signal rx_char_is_comma_map_i   :   std_logic_vector(7 downto 0);
signal rx_char_is_k_i           :   std_logic_vector(3 downto 0);
signal rx_char_is_k_map_i       :   std_logic_vector(7 downto 0);
signal rx_clk_cor_cnt_i         :   std_logic_vector(2 downto 0);
signal rx_data_i                :   std_logic_vector(31 downto 0);
signal rx_data_map_i            :   std_logic_vector(63 downto 0);
signal rx_disp_err_i            :   std_logic_vector(3 downto 0);
signal rx_disp_err_map_i        :   std_logic_vector(7 downto 0);
signal rx_not_in_table_i        :   std_logic_vector(3 downto 0);
signal rx_not_in_table_map_i    :   std_logic_vector(7 downto 0);
signal rx_polarity_i            :   std_logic;
signal rx_realign_i             :   std_logic;
signal rxmclk_out_not_used_i    :   std_logic;
signal rxpcshclkout_not_used_i  :   std_logic;
    signal tied_to_ground_i         :   std_logic;
    signal tied_to_ground_vec_i     :   std_logic_vector(32 downto 0);
    signal tied_to_vcc_i            :   std_logic;
signal tx_buf_err_i             :   std_logic;
    signal tx_channel_up_i          :   std_logic;
signal tx_char_is_k_i           :   std_logic_vector(3 downto 0);
signal tx_char_is_k_map_i       :   std_logic_vector(7 downto 0);
signal tx_data_i                :   std_logic_vector(31 downto 0);
signal tx_data_map_i            :   std_logic_vector(63 downto 0);
signal tx_hard_err_i          :   std_logic;
signal tx_lane_up_i             :   std_logic;
signal lane_up_reduce_i    : std_logic;
signal rst_cc_module_i     : std_logic;
signal tx_lock_i                :   std_logic;
signal raw_tx_out_clk_i         :   std_logic;
signal buf_gtpclkout_i          :   std_logic;
signal tx_out_clk_i             :   std_logic;
signal tx_pe_data_i             :   std_logic_vector(0 to 31);
signal tx_pe_data_map_i         :   std_logic_vector(0 to 31);
signal tx_pe_data_v_i           :   std_logic_vector(0 to 1);
signal tx_pe_data_v_map_i       :   std_logic_vector(0 to 1);
signal tx_reset_lanes_i         :   std_logic;
    signal tx_system_reset_c        :   std_logic;

    signal simplex_timer_r                  :   std_logic_vector(C_SIMPLEX_TIMER-1 downto 0);
    signal tx_reset_simplex_r               :   std_logic;
    signal tx_aligned_simplex_r             :   std_logic;
    signal tx_verify_simplex_r              :   std_logic;
    signal TX_HARD_ERR_W                  :   std_logic;

signal txoutclk2_out_not_used_i :   std_logic;
signal txpcshclkout_not_used_i  :   std_logic;
   

signal tied_to_gnd_vec_i        : std_logic_vector(0 to 31);
    -- TX AXI PDU I/F signals
signal tx_data                  : std_logic_vector(0 to 31);
signal tx_rem                   : std_logic_vector(0 to 1);
signal tx_src_rdy               : std_logic;
signal tx_sof                   : std_logic;
signal tx_eof                   : std_logic;
signal tx_dst_rdy               : std_logic;



signal   gtrxreset_i              : std_logic;
signal   system_reset_i           : std_logic;
signal   tx_lock_comb_i           : std_logic;
signal   tx_resetdone_i           : std_logic;
signal   reset_sync_user_clk      : std_logic;
signal   gt_reset_sync_init_clk   : std_logic;
signal  rxfsm_data_valid_r        : std_logic;
signal DO_CC_I            : std_logic;
signal WARN_CC            : std_logic;
--*********************************Main Body of Code**********************************
begin

    --Tie off constant signals
    tied_to_ground_vec_i    <=  (others => '0');
    tied_to_ground_i        <=  '0';
    tied_to_vcc_i           <=  '1';


   TX_HARD_ERR <= TX_HARD_ERR_W;

   process (user_clk)
   begin

       if (user_clk 'event and user_clk = '1') then

          if (system_reset_i='1' or TX_HARD_ERR_W='1') then
              simplex_timer_r  <=  (others => '0');

          elsif(tx_verify_simplex_r='1') then

              simplex_timer_r  <=  simplex_timer_r;

          else

            simplex_timer_r  <=  simplex_timer_r + 1;
          end if;
       end if;
  end process;

   process (user_clk)
   begin
       if (user_clk 'event and user_clk = '1') then
          if (simplex_timer_r="0000000000000000" or system_reset_i='1' or
              TX_HARD_ERR_W='1') then
              tx_reset_simplex_r  <=  '0';

          elsif(simplex_timer_r="0000000000000001") then

              tx_reset_simplex_r  <=  '1';

          elsif(simplex_timer_r="0000000000000110") then

              tx_reset_simplex_r  <=  '0';

          end if;
       end if;
   end process;

   process (user_clk)
   begin
       if (user_clk 'event and user_clk = '1') then
          if (tx_system_reset_c='1' or TX_HARD_ERR_W='1') then

              tx_aligned_simplex_r  <=  '0';

          elsif(simplex_timer_r=C_ALIGNED_TIMER) then 

              tx_aligned_simplex_r  <=  '1';

          end if;
       end if;
   end process;

   process (user_clk)
   begin
       if (user_clk 'event and user_clk = '1') then
          if (tx_system_reset_c='1' or TX_HARD_ERR_W='1') then

              tx_verify_simplex_r  <=  '0';

          elsif(simplex_timer_r=C_VERIFY_TIMER) then  

              tx_verify_simplex_r  <=  '1';

          end if;
       end if;
   end process;





    tx_lock              <=  tx_lock_comb_i;
    sys_reset_out        <=  system_reset_i;


    -- Connect global external signals to their internal counterparts
    TX_CHANNEL_UP               <=  tx_channel_up_i;
    tx_resetdone_out     <=  tx_resetdone_i;

    tx_system_reset_c  <= system_reset_i or tx_reset_simplex_r;



    --Connect the TXOUTCLK of lane 0 to TX_OUT_CLK
 
TX_OUT_CLK  <=   tx_out_clk_i;

    -- Connect TX_LOCK to tx_lock_i from lane 0
    tx_lock_comb_i    <=  tx_lock_i;

    --Concatenate signals from TX_LL and RX_LL to Aurora Lanes
    gen_scp_map_i <= gen_scp_i & '0';
    gen_ecp_map_i <= '0' & gen_ecp_i;  -- ECP is LSB of Channel

 reset_sync_user_clk_cdc_sync : system_aurora_8b10b_0_0_cdc_sync
   generic map
     (
       c_cdc_type        => 1,   
       c_flop_input      => 0,  
       c_reset_state     => 0,  
       c_single_bit      => 1,  
       c_vector_width    => 2,  
       c_mtbf_stages     => 3 
     )
  port map
     (
       prmry_aclk        => '0'                ,
       prmry_resetn      => '1'                ,
       prmry_in          => TX_SYSTEM_RESET    ,
       prmry_vect_in     => "00"               ,
       scndry_aclk       => user_clk           ,
       scndry_resetn     => '1'                ,
       prmry_ack         => open               ,
       scndry_out        => reset_sync_user_clk,
       scndry_vect_out   => open           
     );

 gt_reset_cdc_sync : system_aurora_8b10b_0_0_cdc_sync
   generic map
     (
       c_cdc_type        => 1,   
       c_flop_input      => 0,  
       c_reset_state     => 0,  
       c_single_bit      => 1,  
       c_vector_width    => 2,  
       c_mtbf_stages     => 2 
     )
  port map
     (
       prmry_aclk        => '0'                   ,
       prmry_resetn      => '1'                   ,
       prmry_in          => GT_RESET              ,
       prmry_vect_in     => "00"                  ,
       scndry_aclk       => init_clk_in           ,
       scndry_resetn     => '1'                   ,
       prmry_ack         => open                  ,
       scndry_out        => gt_reset_sync_init_clk,
       scndry_vect_out   => open           
     );

    -- RESET_LOGIC instance
    core_reset_logic_i  :  system_aurora_8b10b_0_0_RESET_LOGIC 
    port map
    (
        RESET                    =>   reset_sync_user_clk,
        USER_CLK                 =>   user_clk,
        INIT_CLK_IN              =>   init_clk_in,
        TX_LOCK_IN               =>   tx_lock_comb_i,
        PLL_NOT_LOCKED           =>   pll_not_locked,
	     TX_RESETDONE_IN          =>   tx_resetdone_i,
        LINK_RESET_IN            =>   '0',
        SYSTEM_RESET             =>   system_reset_i
    );




rx_polarity_i     <=   '0';
gtx_rx_reset_i    <=   '0';
ena_comma_align_i <=   '0';




    --_________________________Instantiate TX Lane 0______________________________


TX_LANE_UP <=   tx_lane_up_i;


    -- Map all tx signals requiring concatenation
    gen_pad_map_i(0 to 1)             <=  gen_pad_i(0) & gen_pad_i(1);
    tx_pe_data_map_i(0 to 31)       <=  tx_pe_data_i(0 to 15)
                                                                & tx_pe_data_i(16 to 31);
    tx_pe_data_v_map_i(0 to 1)        <=  tx_pe_data_v_i(0) & tx_pe_data_v_i(1);


    system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i : system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE

        port map (

            -- GT Interface

TX_BUF_ERR      =>  tx_buf_err_i,
                TX_K_ERR        =>  tied_to_ground_vec_i(3 downto 0),
                TX_CHAR_IS_K    =>  tx_char_is_k_i(3 downto 0),
                TX_DATA         =>  tx_data_i(31 downto 0),
GTX_TX_RESET    =>  gtx_tx_reset_i,


            -- TX_LL Interface

                GEN_SCP         =>  gen_scp_map_i,
                GEN_ECP         =>  gen_ecp_map_i,
                GEN_PAD         =>  gen_pad_map_i(0 to 1),
                TX_PE_DATA      =>  tx_pe_data_map_i(0 to 31),
                TX_PE_DATA_V    =>  tx_pe_data_v_map_i(0 to 1),
GEN_CC          =>  gen_cc_i,


            -- Sideband Signals
                    TX_ALIGNED   => tx_aligned_simplex_r,

            -- Global Logic Interface

GEN_A           =>  gen_a_i,
                GEN_K           =>  gen_k_i(0 to 3),
                GEN_R           =>  gen_r_i(0 to 3),
                GEN_V           =>  gen_v_i(0 to 3),
LANE_UP         =>  tx_lane_up_i,
HARD_ERR      =>  tx_hard_err_i,
                CHANNEL_UP          =>  tx_channel_up_i,


            -- System Interface

                USER_CLK        =>  user_clk,
                RESET_SYMGEN    =>  tx_system_reset_c,
RESET           =>  tx_reset_lanes_i

        );






    --____________________________________ Instantiate GT Wrapper_____________________________

    gt_wrapper_i : system_aurora_8b10b_0_0_GT_WRAPPER
        generic map(
                     SIM_GTRESET_SPEEDUP  => SIM_GTRESET_SPEEDUP,
                     EXAMPLE_SIMULATION          => EXAMPLE_SIMULATION
                   )
        port map   (
  gt_common_reset_out     =>  gt_common_reset_out,
--____________________________COMMON PORTS_______________________________{
  gt0_pll0refclklost_in  =>  gt0_pll0refclklost_in, 
  quad1_common_lock_in     =>  quad1_common_lock_in,
------------------------- Channel - Ref Clock Ports ------------------------
    GT0_PLL0OUTCLK_IN        =>  GT0_PLL0OUTCLK_IN,
    GT0_PLL1OUTCLK_IN        =>  GT0_PLL1OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN     =>  GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTREFCLK_IN     =>  GT0_PLL1OUTREFCLK_IN,
--____________________________COMMON PORTS_______________________________}

        gt0_txresetdone_out        => open,
        gt0_rxresetdone_out        => open,
        gt0_rxpmaresetdone_out     => open,
        gt0_txbufstatus_out             => open,
        gt0_rxbufstatus_out             => open,

        -- DRP I/F
DRPCLK_IN                      => drpclk_in,
DRPADDR_IN                     => DRPADDR_IN,
DRPDI_IN                       => DRPDI_IN,
DRPDO_OUT                      => DRPDO_OUT,
DRPEN_IN                       => DRPEN_IN,
DRPRDY_OUT                     => DRPRDY_OUT,
DRPWE_IN                       => DRPWE_IN,

        INIT_CLK_IN                => init_clk_in,   
	PLL_NOT_LOCKED                   => PLL_NOT_LOCKED,
RXFSM_DATA_VALID                              => '1',
	TX_RESETDONE_OUT                 => tx_resetdone_i,
	RX_RESETDONE_OUT                 => OPEN,   
     
        -- Aurora Lane Interface
RXPOLARITY_IN           => rx_polarity_i,
RXRESET_IN              => gtx_rx_reset_i,
TXCHARISK_IN            => tx_char_is_k_i(3 downto 0),
TXDATA_IN               => tx_data_i(31 downto 0),
TXRESET_IN              => gtx_tx_reset_i,
RXDATA_OUT              => rx_data_i(31 downto 0),
RXNOTINTABLE_OUT        => rx_not_in_table_i(3 downto 0),
RXDISPERR_OUT           => rx_disp_err_i(3 downto 0),
RXCHARISK_OUT           => rx_char_is_k_i(3 downto 0),
RXCHARISCOMMA_OUT       => rx_char_is_comma_i(3 downto 0),
TXBUFERR_OUT            => tx_buf_err_i,
RXBUFERR_OUT            => rx_buf_err_i,
RXREALIGN_OUT           => rx_realign_i,


        -- Reset due to channel initialization watchdog timer expiry  
                    GTRXRESET_IN                =>  '0',


        -- reset for hot plug
                    LINK_RESET_IN      => '0',

        --  Phase Align Interface

ENMCOMMAALIGN_IN        => ena_comma_align_i,
ENPCOMMAALIGN_IN        => ena_comma_align_i,
        -- Global Logic Interface

ENCHANSYNC_IN           => en_chan_sync_i,
CHBONDDONE_OUT          => ch_bond_done_i,

        -- Serial IO
RX1N_IN       => tied_to_ground_i,
RX1P_IN       => tied_to_ground_i,
TX1N_OUT      => TXN,
TX1P_OUT      => TXP,

        -- Reference Clocks and User Clock

                    RXUSRCLK_IN             => sync_clk,
                    RXUSRCLK2_IN            => user_clk,
                    TXUSRCLK_IN             => sync_clk,
                    TXUSRCLK2_IN            => user_clk,
                    REFCLK                 =>  gt_refclk1,
TXOUTCLK1_OUT           => tx_out_clk_i,
PLLLKDET_OUT            => tx_lock_i,       

        -- System Interface

                    GTRESET_IN                                     => gt_reset_sync_init_clk,
                    LOOPBACK_IN                                     => LOOPBACK,

                    POWERDOWN_IN                                    => POWER_DOWN
                 );


    --_____________________________Instantiate TX Global Logic___________________________
    system_aurora_8b10b_0_0_tx_global_logic_simplex_i : system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX
        port map(
        -- Aurora Lane Interface

                LANE_UP             =>  tx_lane_up_i,
                HARD_ERR          =>  tx_hard_err_i,
                GEN_A               =>  gen_a_i,
                GEN_K               =>  gen_k_i,
                GEN_R               =>  gen_r_i,
                GEN_V               =>  gen_v_i,
                RESET_LANES         =>  tx_reset_lanes_i,

        -- Sideband Signal
                    TX_VERIFY           =>  tx_verify_simplex_r,

        -- System Interface

                USER_CLK            =>  user_clk,
                RESET               =>  tx_system_reset_c,
                POWER_DOWN          =>  POWER_DOWN,
                CHANNEL_UP          =>  tx_channel_up_i,
                    CHANNEL_HARD_ERR  =>  TX_HARD_ERR_W
             );


    --_____________________________ TX AXI SHIM _______________________________
    axi_to_ll_pdu_i : system_aurora_8b10b_0_0_AXI_TO_LL
    generic map
    (
       DATA_WIDTH           => 32,
       STRB_WIDTH           => 4,
       REM_WIDTH            => 2,
       USE_4_NFC            => 0,
       USE_UFC_REM          => 0
    )

    port map
    (
      AXI4_S_IP_TX_TVALID   => S_AXI_TX_TVALID,
      AXI4_S_IP_TX_TDATA    => S_AXI_TX_TDATA,
      AXI4_S_IP_TX_TKEEP    => S_AXI_TX_TKEEP,
      AXI4_S_IP_TX_TLAST    => S_AXI_TX_TLAST,
      AXI4_S_OP_TX_TREADY   => S_AXI_TX_TREADY,

      LL_OP_DATA            => tx_data,
      LL_OP_SOF_N           => tx_sof,
      LL_OP_EOF_N           => tx_eof,
      LL_OP_REM             => tx_rem,
      LL_OP_SRC_RDY_N       => tx_src_rdy,
      LL_IP_DST_RDY_N       => tx_dst_rdy,

      -- System Interface
      USER_CLK              => user_clk,
      RESET                 => tx_system_reset_c, 
      CHANNEL_UP            => tx_channel_up_i
    );


    --_____________________________Instantiate TX_LL___________________________


    process (user_clk)
    begin
      if (user_clk 'event and user_clk = '1') then
         lane_up_reduce_i    <=  tx_lane_up_i;
       end if;
    end process;

    rst_cc_module_i  <= system_reset_i;
    standard_cc_module_i : system_aurora_8b10b_0_0_STANDARD_CC_MODULE
        generic map
        (
            CC_FREQ_FACTOR => CC_FREQ_FACTOR
        )
        port map (
        -- Clock Compensation Control Interface
                    WARN_CC        => WARN_CC,
                    DO_CC          => DO_CC_I,
        -- System Interface
                    PLL_NOT_LOCKED => pll_not_locked,
                    USER_CLK       => user_clk,
                    RESET          => rst_cc_module_i
                 );


    system_aurora_8b10b_0_0_tx_ll_i : system_aurora_8b10b_0_0_TX_LL
    port map
    (
        -- AXI PDU Interface
                    TX_D                    => tx_data,
                    TX_REM                  => tx_rem,
                    TX_SRC_RDY_N            => tx_src_rdy,
                    TX_SOF_N                => tx_sof,
                    TX_EOF_N                => tx_eof,
                    TX_DST_RDY_N            => tx_dst_rdy,

        --Clock Compenstaion Interface
                    WARN_CC                 => WARN_CC,
                    DO_CC                   => DO_CC_I,

        --Global Logic Interface
        CHANNEL_UP          =>  tx_channel_up_i,

        --Aurora Lane Interface
        GEN_SCP             =>  gen_scp_i,
        GEN_ECP             =>  gen_ecp_i,
        TX_PE_DATA_V        =>  tx_pe_data_v_i,
        GEN_PAD             =>  gen_pad_i,
        TX_PE_DATA          =>  tx_pe_data_i,
        GEN_CC              =>  gen_cc_i,

        --System Interface
        USER_CLK            =>  user_clk
    );


    --______________________________________Instantiate RX_LL__________________________________
end MAPPED;
