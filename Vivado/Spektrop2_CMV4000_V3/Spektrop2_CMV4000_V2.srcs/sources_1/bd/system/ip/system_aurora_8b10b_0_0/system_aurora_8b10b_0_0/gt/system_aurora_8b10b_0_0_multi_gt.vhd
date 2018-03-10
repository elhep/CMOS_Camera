-------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
-- Module system_aurora_8b10b_0_0_GT_WRAPPER
--------------------------------------------------------------------------------
library IEEE;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;
library UNISIM;
use UNISIM.Vcomponents.ALL;

--***************************** Entity Declaration ****************************

entity system_aurora_8b10b_0_0_multi_gt is
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTRESET_SPEEDUP    : string   := "FALSE" -- Set to "TRUE" to speed up sim reset
);
port
(
    STABLE_CLOCK                                      : in  std_logic;  -- System Clock
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0
    --____________________________CHANNEL PORTS________________________________
    GT0_DRP_BUSY_OUT                        : out  std_logic;
    ---------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
    GT0_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
    GT0_DRPCLK_IN                           : in   std_logic;
    GT0_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
    GT0_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
    GT0_DRPEN_IN                            : in   std_logic;
    GT0_DRPRDY_OUT                          : out  std_logic;
    GT0_DRPWE_IN                            : in   std_logic;
    ------------------------ Loopback and Powerdown Ports ----------------------
    GT0_LOOPBACK_IN                         : in   std_logic_vector(2 downto 0);
    GT0_RXPD_IN                             : in   std_logic_vector(1 downto 0);
    GT0_TXPD_IN                             : in   std_logic_vector(1 downto 0);
    ------------------------------- Receive Ports ------------------------------
    GT0_eyescanreset_in                     : in   std_logic;
    GT0_RXUSERRDY_IN                        : in   std_logic;
    ------------------- Receive Ports - Pattern Checker Ports ------------------
    GT0_rxprbserr_out                       : out  std_logic;
    GT0_rxprbssel_in                        : in   std_logic_vector(2 downto 0);
    ------------------- Receive Ports - Pattern Checker ports ------------------
    GT0_rxprbscntreset_in                   : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    GT0_eyescandataerror_out                : out  std_logic;
    GT0_eyescantrigger_in                   : in   std_logic;
    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    GT0_RXCHARISCOMMA_OUT                   : out  std_logic_vector(3 downto 0);
    GT0_RXCHARISK_OUT                       : out  std_logic_vector(3 downto 0);
    GT0_RXDISPERR_OUT                       : out  std_logic_vector(3 downto 0);
    GT0_RXNOTINTABLE_OUT                    : out  std_logic_vector(3 downto 0);
    ------------------------- Receive Ports - AFE Ports ------------------------
    GT0_GTPRXN_IN                           : in   std_logic;
    GT0_GTPRXP_IN                           : in   std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    GT0_RXCLKCORCNT_OUT                     : out  std_logic_vector(1 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    GT0_rxbyteisaligned_out                 : out  std_logic;
    GT0_RXBYTEREALIGN_OUT                   : out  std_logic;
    GT0_rxcommadet_out                      : out  std_logic;
    GT0_RXMCOMMAALIGNEN_IN                  : in   std_logic;
    GT0_RXPCOMMAALIGNEN_IN                  : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GT0_GTRXRESET_IN                        : in   std_logic;
    GT0_rxpcsreset_in                       : in   std_logic;
    GT0_rxpmareset_in                       : in   std_logic;
    GT0_rxlpmreset_in                       : in   std_logic;
    GT0_RXDATA_OUT                          : out  std_logic_vector(31 downto 0);
    GT0_RXOUTCLK_OUT                        : out  std_logic;
    GT0_RXUSRCLK_IN                         : in   std_logic;
    GT0_RXUSRCLK2_IN                        : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GT0_RXCDRLOCK_OUT                       : out  std_logic;
    GT0_RXLPMHFHOLD_IN                      : in   std_logic;
    GT0_RXLPMLFHOLD_IN                      : in   std_logic;
    GT0_rxlpmhfovrden_in                    : in   std_logic;
    GT0_rxcdrhold_in                        : in   std_logic;
    GT0_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
    -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    GT0_rxbufreset_in                       : in   std_logic;
    GT0_RXBUFSTATUS_OUT                     : out  std_logic_vector(2 downto 0);
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GT0_RXRESETDONE_OUT                     : out  std_logic;
    GT0_RXPMARESETDONE_OUT                  : out  std_logic;
    ------------------------ TX Configurable Driver Ports ----------------------
    GT0_txpostcursor_in                     : in   std_logic_vector(4 downto 0);
    GT0_txprecursor_in                      : in   std_logic_vector(4 downto 0);
    ----------------- Receive Ports - RX Polarity Control Ports ----------------
    GT0_RXPOLARITY_IN                       : in   std_logic;
    ------------------------------- Transmit Ports -----------------------------
    GT0_TXUSERRDY_IN                        : in   std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    GT0_txchardispmode_in                   : in   std_logic_vector(3 downto 0);
    GT0_txchardispval_in                    : in   std_logic_vector(3 downto 0);
    GT0_TXCHARISK_IN                        : in   std_logic_vector(3 downto 0);
    ------------ Transmit Ports - TX Buffer and Phase Alignment Ports ----------
    GT0_TXBUFSTATUS_OUT                     : out  std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GT0_GTTXRESET_IN                        : in   std_logic;
    GT0_TXDATA_IN                           : in   std_logic_vector(31 downto 0);
    GT0_TXOUTCLK_OUT                        : out  std_logic;
    GT0_TXOUTCLKFABRIC_OUT                  : out  std_logic;
    GT0_TXOUTCLKPCS_OUT                     : out  std_logic;
    GT0_TXUSRCLK_IN                         : in   std_logic;
    GT0_TXUSRCLK2_IN                        : in   std_logic;
    --------------------- Transmit Ports - PCI Express Ports -------------------
    GT0_txelecidle_in                       : in   std_logic;
    ------------------ Transmit Ports - Pattern Generator Ports ----------------
    GT0_txprbsforceerr_in                   : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GT0_GTPTXN_OUT                          : out  std_logic;
    GT0_GTPTXP_OUT                          : out  std_logic;
    GT0_txdiffctrl_in                       : in   std_logic_vector(3 downto 0);
    GT0_txmaincursor_in                     : in   std_logic_vector(6 downto 0);
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GT0_txpcsreset_in                       : in   std_logic;
    GT0_txinhibit_in                        : in   std_logic;
    GT0_txpmareset_in                       : in   std_logic;
    GT0_TXRESETDONE_OUT                     : out  std_logic;
    ------------------ Transmit Ports - pattern Generator Ports ----------------
    GT0_txprbssel_in                        : in   std_logic_vector(2 downto 0);
    ----------------- Transmit Ports - TX Polarity Control Ports ---------------
    GT0_txpolarity_in                       : in   std_logic;



    --____________________________COMMON PORTS________________________________
    GT0_PLL0OUTCLK_IN                       : in   std_logic;
    GT0_PLL1OUTCLK_IN                       : in   std_logic;
    GT0_PLL0OUTREFCLK_IN                    : in   std_logic;
    GT0_PLL1OUTREFCLK_IN                    : in   std_logic;
    GT0_PLL0RESET_IN                        : in   std_logic


);


end system_aurora_8b10b_0_0_multi_gt;
  
architecture MAPPED of system_aurora_8b10b_0_0_multi_gt is
  attribute core_generation_info               : string;
attribute core_generation_info of MAPPED : architecture is "system_aurora_8b10b_0_0,aurora_8b10b_v11_1_3,{user_interface=AXI_4_Streaming,backchannel_mode=Timer,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=62500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=true,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=TX-only_Simplex}";

--***********************************Parameter Declarations********************

    constant DLY : time := 1 ns;

--***************************** Signal Declarations *****************************

    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;

    signal   gt0_pll0clk_i       :   std_logic;
    signal   gt0_pll0refclk_i    :   std_logic;
    signal   gt0_pll1clk_i       :   std_logic;
    signal   gt0_pll1refclk_i    :   std_logic;
    signal   gt0_rst_i           :   std_logic;

--*************************** Component Declarations **************************
component system_aurora_8b10b_0_0_gt
generic
(
    -- Simulation attributes
    GT_SIM_GTRESET_SPEEDUP    : string := "FALSE";
    TXSYNC_OVRD_IN            : bit    := '0';
    TXSYNC_MULTILANE_IN       : bit    := '0'   
);
port
(
    STABLE_CLOCK                            : in  std_logic;  -- System Clock
    RST_IN                                  : in   std_logic; -- Connect to System Reset
    DRP_BUSY_OUT                            : out  std_logic; -- Indicates that the DRP bus is not accessible to the User
    ---------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
    DRPADDR_IN                              : in   std_logic_vector(8 downto 0);
    DRPCLK_IN                               : in   std_logic;
    DRPDI_IN                                : in   std_logic_vector(15 downto 0);
    DRPDO_OUT                               : out  std_logic_vector(15 downto 0);
    DRPEN_IN                                : in   std_logic;
    DRPRDY_OUT                              : out  std_logic;
    DRPWE_IN                                : in   std_logic;
    ------------------------------- Clocking Ports -----------------------------
    PLL0CLK_IN                              : in   std_logic;
    PLL0REFCLK_IN                           : in   std_logic;
    PLL1CLK_IN                              : in   std_logic;
    PLL1REFCLK_IN                           : in   std_logic;
    ------------------------ Loopback and Powerdown Ports ----------------------
    LOOPBACK_IN                             : in   std_logic_vector(2 downto 0);
    RXPD_IN                                 : in   std_logic_vector(1 downto 0);
    TXPD_IN                                 : in   std_logic_vector(1 downto 0);
    ------------------------------- Receive Ports ------------------------------
    eyescanreset_in                         : in   std_logic;
    RXUSERRDY_IN                            : in   std_logic;
    ------------------- Receive Ports - Pattern Checker Ports ------------------
    rxprbserr_out                           : out  std_logic;
    rxprbssel_in                            : in   std_logic_vector(2 downto 0);
    ------------------- Receive Ports - Pattern Checker ports ------------------
    rxprbscntreset_in                       : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    eyescandataerror_out                    : out  std_logic;
    eyescantrigger_in                       : in   std_logic;
    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    RXCHARISCOMMA_OUT                       : out  std_logic_vector(3 downto 0);
    RXCHARISK_OUT                           : out  std_logic_vector(3 downto 0);
    RXDISPERR_OUT                           : out  std_logic_vector(3 downto 0);
    RXNOTINTABLE_OUT                        : out  std_logic_vector(3 downto 0);
    ------------------------- Receive Ports - AFE Ports ------------------------
    GTPRXN_IN                               : in   std_logic;
    GTPRXP_IN                               : in   std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    RXCLKCORCNT_OUT                         : out  std_logic_vector(1 downto 0);
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    rxbyteisaligned_out                     : out  std_logic;
    RXBYTEREALIGN_OUT                       : out  std_logic;
    rxcommadet_out                          : out  std_logic;
    RXMCOMMAALIGNEN_IN                      : in   std_logic;
    RXPCOMMAALIGNEN_IN                      : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GTRXRESET_IN                            : in   std_logic;
    rxpcsreset_in                           : in   std_logic;
    rxpmareset_in                           : in   std_logic;
    rxlpmreset_in                           : in   std_logic;
    RXDATA_OUT                              : out  std_logic_vector(31 downto 0);
    RXOUTCLK_OUT                            : out  std_logic;
    RXUSRCLK_IN                             : in   std_logic;
    RXUSRCLK2_IN                            : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    RXCDRLOCK_OUT                           : out  std_logic;
    RXLPMHFHOLD_IN                          : in   std_logic;
    RXLPMLFHOLD_IN                          : in   std_logic;
    rxlpmhfovrden_in                        : in   std_logic;
    rxcdrhold_in                            : in   std_logic;
    dmonitorout_out                         : out  std_logic_vector(14 downto 0);
    -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
    rxbufreset_in                           : in   std_logic;
    RXBUFSTATUS_OUT                         : out  std_logic_vector(2 downto 0);
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    RXRESETDONE_OUT                         : out  std_logic;
    RXPMARESETDONE_OUT                      : out  std_logic;
    ------------------------ TX Configurable Driver Ports ----------------------
    txpostcursor_in                         : in   std_logic_vector(4 downto 0);
    txprecursor_in                          : in   std_logic_vector(4 downto 0);
    ----------------- Receive Ports - RX Polarity Control Ports ----------------
    RXPOLARITY_IN                           : in   std_logic;
    ------------------------------- Transmit Ports -----------------------------
    TXUSERRDY_IN                            : in   std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    txchardispmode_in                       : in   std_logic_vector(3 downto 0);
    txchardispval_in                        : in   std_logic_vector(3 downto 0);
    TXCHARISK_IN                            : in   std_logic_vector(3 downto 0);
    ------------ Transmit Ports - TX Buffer and Phase Alignment Ports ----------
    TXBUFSTATUS_OUT                         : out  std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTTXRESET_IN                            : in   std_logic;
    TXDATA_IN                               : in   std_logic_vector(31 downto 0);
    TXOUTCLK_OUT                            : out  std_logic;
    TXOUTCLKFABRIC_OUT                      : out  std_logic;
    TXOUTCLKPCS_OUT                         : out  std_logic;
    TXUSRCLK_IN                             : in   std_logic;
    TXUSRCLK2_IN                            : in   std_logic;
    --------------------- Transmit Ports - PCI Express Ports -------------------
    txelecidle_in                           : in   std_logic;
    ------------------ Transmit Ports - Pattern Generator Ports ----------------
    txprbsforceerr_in                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTPTXN_OUT                              : out  std_logic;
    GTPTXP_OUT                              : out  std_logic;
    txdiffctrl_in                           : in   std_logic_vector(3 downto 0);
    txmaincursor_in                         : in   std_logic_vector(6 downto 0);
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    txpcsreset_in                           : in   std_logic;
    txinhibit_in                            : in   std_logic;
    txpmareset_in                           : in   std_logic;
    TXRESETDONE_OUT                         : out  std_logic;
    ------------------ Transmit Ports - pattern Generator Ports ----------------
    txprbssel_in                            : in   std_logic_vector(2 downto 0);
    ----------------- Transmit Ports - TX Polarity Control Ports ---------------
    txpolarity_in                           : in   std_logic

);
end component;

--********************************* Main Body of Code**************************

begin

    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';

    gt0_pll0clk_i    <= GT0_PLL0OUTCLK_IN;
    gt0_pll0refclk_i <= GT0_PLL0OUTREFCLK_IN;
    gt0_pll1clk_i    <= GT0_PLL1OUTCLK_IN;
    gt0_pll1refclk_i <= GT0_PLL1OUTREFCLK_IN;
    gt0_rst_i        <= GT0_PLL0RESET_IN;

    --------------------------- GT Instances  ------------------------------- 
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0
    gt0_system_aurora_8b10b_0_0_i : system_aurora_8b10b_0_0_gt
    generic map
    (
        -- Simulation attributes
        GT_SIM_GTRESET_SPEEDUP => WRAPPER_SIM_GTRESET_SPEEDUP,
        TXSYNC_OVRD_IN         => ('0'),
        TXSYNC_MULTILANE_IN    => ('0')
    )
    port map
    (

        STABLE_CLOCK                   =>      STABLE_CLOCK,  
        RST_IN                         =>       gt0_rst_i,
        DRP_BUSY_OUT                   =>       GT0_DRP_BUSY_OUT,	    
      
        ---------------------------- Channel - DRP Ports  --------------------------
        DRPADDR_IN                      =>      GT0_DRPADDR_IN,
        DRPCLK_IN                       =>      GT0_DRPCLK_IN,
        DRPDI_IN                        =>      GT0_DRPDI_IN,
        DRPDO_OUT                       =>      GT0_DRPDO_OUT,
        DRPEN_IN                        =>      GT0_DRPEN_IN,
        DRPRDY_OUT                      =>      GT0_DRPRDY_OUT,
        DRPWE_IN                        =>      GT0_DRPWE_IN,
        ------------------------------- Clocking Ports -----------------------------
        PLL0CLK_IN                      =>      gt0_pll0clk_i,
        PLL0REFCLK_IN                   =>      gt0_pll0refclk_i,
        PLL1CLK_IN                      =>      gt0_pll1clk_i,
        PLL1REFCLK_IN                   =>      gt0_pll1refclk_i,
        ------------------------ Loopback and Powerdown Ports ----------------------
        LOOPBACK_IN                     =>      GT0_LOOPBACK_IN,
        RXPD_IN                         =>      GT0_RXPD_IN,
        TXPD_IN                         =>      GT0_TXPD_IN,
        ------------------------------- Receive Ports ------------------------------
        eyescanreset_in                 =>      gt0_eyescanreset_in,
        RXUSERRDY_IN                    =>      GT0_RXUSERRDY_IN,
        ------------------- Receive Ports - Pattern Checker Ports ------------------
        rxprbserr_out                   =>      gt0_rxprbserr_out,
        rxprbssel_in                    =>      gt0_rxprbssel_in,
        ------------------- Receive Ports - Pattern Checker ports ------------------
        rxprbscntreset_in               =>      gt0_rxprbscntreset_in,
        -------------------------- RX Margin Analysis Ports ------------------------
        eyescandataerror_out            =>      gt0_eyescandataerror_out,
        eyescantrigger_in               =>      gt0_eyescantrigger_in,
        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        RXCHARISCOMMA_OUT               =>      GT0_RXCHARISCOMMA_OUT,
        RXCHARISK_OUT                   =>      GT0_RXCHARISK_OUT,
        RXDISPERR_OUT                   =>      GT0_RXDISPERR_OUT,
        RXNOTINTABLE_OUT                =>      GT0_RXNOTINTABLE_OUT,
        ------------------------- Receive Ports - AFE Ports ------------------------
        GTPRXN_IN                       =>      GT0_GTPRXN_IN,
        GTPRXP_IN                       =>      GT0_GTPRXP_IN,
        ------------------- Receive Ports - Clock Correction Ports -----------------
        RXCLKCORCNT_OUT                 =>      GT0_RXCLKCORCNT_OUT,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        rxbyteisaligned_out             =>      gt0_rxbyteisaligned_out,
        RXBYTEREALIGN_OUT               =>      GT0_RXBYTEREALIGN_OUT,
        rxcommadet_out                  =>      gt0_rxcommadet_out,
        RXMCOMMAALIGNEN_IN              =>      GT0_RXMCOMMAALIGNEN_IN,
        RXPCOMMAALIGNEN_IN              =>      GT0_RXPCOMMAALIGNEN_IN,
        ------------------- Receive Ports - RX Data Path interface -----------------
        GTRXRESET_IN                    =>      GT0_GTRXRESET_IN,
        rxpcsreset_in                   =>      gt0_rxpcsreset_in,
        rxpmareset_in                   =>      gt0_rxpmareset_in,
        rxlpmreset_in                   =>      gt0_rxlpmreset_in,
        RXDATA_OUT                      =>      GT0_RXDATA_OUT,
        RXOUTCLK_OUT                    =>      GT0_RXOUTCLK_OUT,
        RXUSRCLK_IN                     =>      GT0_RXUSRCLK_IN,
        RXUSRCLK2_IN                    =>      GT0_RXUSRCLK2_IN,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXCDRLOCK_OUT                   =>      GT0_RXCDRLOCK_OUT,
        RXLPMHFHOLD_IN                  =>      GT0_RXLPMHFHOLD_IN,
        RXLPMLFHOLD_IN                  =>      GT0_RXLPMLFHOLD_IN,
        rxlpmhfovrden_in                =>      gt0_rxlpmhfovrden_in,
        rxcdrhold_in                    =>      gt0_rxcdrhold_in,
        dmonitorout_out                 =>      gt0_dmonitorout_out,
        -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        rxbufreset_in                   =>      gt0_rxbufreset_in,
        RXBUFSTATUS_OUT                 =>      GT0_RXBUFSTATUS_OUT,
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        RXRESETDONE_OUT                 =>      GT0_RXRESETDONE_OUT,
        RXPMARESETDONE_OUT              =>      GT0_RXPMARESETDONE_OUT,
        ------------------------ TX Configurable Driver Ports ----------------------
        txpostcursor_in                 =>       gt0_txpostcursor_in,
        txprecursor_in                  =>       gt0_txprecursor_in,
        ----------------- Receive Ports - RX Polarity Control Ports ----------------
        RXPOLARITY_IN                   =>      GT0_RXPOLARITY_IN,
        ------------------------------- Transmit Ports -----------------------------
        TXUSERRDY_IN                    =>      GT0_TXUSERRDY_IN,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        txchardispmode_in               =>      gt0_txchardispmode_in,
        txchardispval_in                =>      gt0_txchardispval_in,
        TXCHARISK_IN                    =>      GT0_TXCHARISK_IN,
        ------------ Transmit Ports - TX Buffer and Phase Alignment Ports ----------
        TXBUFSTATUS_OUT                 =>      GT0_TXBUFSTATUS_OUT,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        GTTXRESET_IN                    =>      GT0_GTTXRESET_IN,
        TXDATA_IN                       =>      GT0_TXDATA_IN,
        TXOUTCLK_OUT                    =>      GT0_TXOUTCLK_OUT,
        TXOUTCLKFABRIC_OUT              =>      GT0_TXOUTCLKFABRIC_OUT,
        TXOUTCLKPCS_OUT                 =>      GT0_TXOUTCLKPCS_OUT,
        TXUSRCLK_IN                     =>      GT0_TXUSRCLK_IN,
        TXUSRCLK2_IN                    =>      GT0_TXUSRCLK2_IN,
        --------------------- Transmit Ports - PCI Express Ports -------------------
        txelecidle_in                   =>      gt0_txelecidle_in,
        ------------------ Transmit Ports - Pattern Generator Ports ----------------
        txprbsforceerr_in               =>      gt0_txprbsforceerr_in,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        GTPTXN_OUT                      =>      GT0_GTPTXN_OUT,
        GTPTXP_OUT                      =>      GT0_GTPTXP_OUT,
        txdiffctrl_in                   =>      gt0_txdiffctrl_in,
        txmaincursor_in                 =>      gt0_txmaincursor_in,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        txpcsreset_in                   =>      gt0_txpcsreset_in,
        txinhibit_in                    =>      GT0_txinhibit_in,
        txpmareset_in                   =>      gt0_txpmareset_in,
        TXRESETDONE_OUT                 =>      GT0_TXRESETDONE_OUT,
        ------------------ Transmit Ports - pattern Generator Ports ----------------
        txprbssel_in                    =>      gt0_txprbssel_in,
        ----------------- Transmit Ports - TX Polarity Control Ports ---------------
        txpolarity_in                   =>      gt0_txpolarity_in


    );


end MAPPED;
