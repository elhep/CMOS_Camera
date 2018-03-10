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
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
--***************************** Entity Declaration ****************************

entity system_aurora_8b10b_0_0_gt is
generic
(
    -- Simulation attributes
    GT_SIM_GTRESET_SPEEDUP    : string := "FALSE"; -- Set to "TRUE" to speed up sim reset
    TXSYNC_OVRD_IN            : bit    := '0';
    TXSYNC_MULTILANE_IN       : bit    := '0'
);
port
(
    STABLE_CLOCK                            : IN  std_logic;  -- System Clock
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
    txpmareset_in                           : in   std_logic;
    txinhibit_in                            : in   std_logic;
    TXRESETDONE_OUT                         : out  std_logic;
    ------------------ Transmit Ports - pattern Generator Ports ----------------
    txprbssel_in                            : in   std_logic_vector(2 downto 0);
    ----------------- Transmit Ports - TX Polarity Control Ports ---------------
    txpolarity_in                           : in   std_logic

);


end system_aurora_8b10b_0_0_gt;

architecture MAPPED of system_aurora_8b10b_0_0_gt is

--*************************** Component Declarations **************************
component system_aurora_8b10b_0_0_gtrxreset_seq 
  port ( 
    RST           : IN  std_logic;
    GTRXRESET_IN  : IN  std_logic;    
    RXPMARESETDONE: IN  std_logic;
    GTRXRESET_OUT : OUT std_logic;
    STABLE_CLOCK  : IN  std_logic;

    DRPCLK        : IN  std_logic;
    DRPADDR       : OUT std_logic_vector(8 downto 0);
    DRPDO	  : IN  std_logic_vector(15 downto 0);
    DRPDI         : OUT std_logic_vector(15 downto 0);
    DRPRDY        : IN  std_logic;
    DRPEN	  : OUT std_logic;
    DRPWE         : OUT std_logic;
    DRP_OP_DONE   : OUT std_logic
);
end component;   
--**************************** Signal Declarations ****************************

    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;

    signal    rxpmaresetdone_t                : std_logic;
    signal    gtrxreset_out                   : std_logic;
    signal    rxpmareset_out                  : std_logic;
    signal    rxrate_out                      : std_logic_vector(2 downto 0);
    signal    drp_op_done                     : std_logic;
    signal    drp_pma_busy                    : std_logic;
    signal    drp_rate_busy                   : std_logic;
    signal    drp_busy_i1                     : std_logic:= '0';
    signal    drp_busy_i2                     : std_logic:= '0';
    signal    drpen_rst_t                     : std_logic;
    signal    drpaddr_rst_t                   : std_logic_vector(8 downto 0);
    signal    drpwe_rst_t                     : std_logic;
    signal    drpdo_rst_t                     : std_logic_vector(15 downto 0);
    signal    drpdi_rst_t                     : std_logic_vector(15 downto 0);
    signal    drprdy_rst_t                    : std_logic;
    signal    drpen_pma_t                     : std_logic;
    signal    drpaddr_pma_t                   : std_logic_vector(8 downto 0);
    signal    drpwe_pma_t                     : std_logic;
    signal    drpdo_pma_t                     : std_logic_vector(15 downto 0);
    signal    drpdi_pma_t                     : std_logic_vector(15 downto 0);
    signal    drprdy_pma_t                    : std_logic;
    signal    drpen_rate_t                    : std_logic;
    signal    drpaddr_rate_t                  : std_logic_vector(8 downto 0);
    signal    drpwe_rate_t                    : std_logic;
    signal    drpdo_rate_t                    : std_logic_vector(15 downto 0);
    signal    drpdi_rate_t                    : std_logic_vector(15 downto 0);
    signal    drprdy_rate_t                   : std_logic;
    signal    drpen_i                         : std_logic;
    signal    drpaddr_i                       : std_logic_vector(8 downto 0);
    signal    drpwe_i                         : std_logic;
    signal    drpdo_i                         : std_logic_vector(15 downto 0);
    signal    drpdi_i                         : std_logic_vector(15 downto 0);
    signal    drprdy_i                        : std_logic;

    -- RX Datapath signals
    signal rxdata_i                         :   std_logic_vector(31 downto 0);

    -- TX Datapath signals
    signal txdata_i                         :   std_logic_vector(31 downto 0);
    signal rxdatavalid_float_i              :   std_logic;

--******************************** Main Body of Code***************************
                      
begin                     

    ---------------------------  Static signal Assignments ---------------------  

    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';

    -------------------  GT Datapath byte mapping  -----------------

    -- The GT provides little endian data (first byte received on RXDATA(7 downto 0))
    RXDATA_OUT    <=   rxdata_i(31 downto 0);

    txdata_i    <=   (TXDATA_IN);



    ----------------------------- GTPE2 Instance  --------------------------  

    gtpe2_i : GTPE2_CHANNEL
    generic map
    (

        --_______________________ Simulation-Only Attributes ___________________

        SIM_RECEIVER_DETECT_PASS   =>      ("TRUE"),
        SIM_RESET_SPEEDUP          =>      (GT_SIM_GTRESET_SPEEDUP),
        SIM_TX_EIDLE_DRIVE_LEVEL   =>      ("X"),
        SIM_VERSION                =>      ("2.0"),
       

       ------------------RX Byte and Word Alignment Attributes---------------
        ALIGN_COMMA_DOUBLE                      =>     ("FALSE"),
        ALIGN_COMMA_ENABLE                      =>     ("1111111111"),
        ALIGN_COMMA_WORD                        =>     (2),
        ALIGN_MCOMMA_DET                        =>     ("TRUE"),
        ALIGN_MCOMMA_VALUE                      =>     ("1010000011"),
        ALIGN_PCOMMA_DET                        =>     ("TRUE"),
        ALIGN_PCOMMA_VALUE                      =>     ("0101111100"),
        SHOW_REALIGN_COMMA                      =>     ("TRUE"),
        RXSLIDE_AUTO_WAIT                       =>     (7),
        RXSLIDE_MODE                            =>     ("OFF"),
        RX_SIG_VALID_DLY                        =>     (10),

       ------------------RX 8B/10B Decoder Attributes---------------
        RX_DISPERR_SEQ_MATCH                    =>     ("TRUE"),
        DEC_MCOMMA_DETECT                       =>     ("TRUE"),
        DEC_PCOMMA_DETECT                       =>     ("TRUE"),
        DEC_VALID_COMMA_ONLY                    =>     ("FALSE"),

       ------------------------RX Clock Correction Attributes----------------------
        CBCC_DATA_SOURCE_SEL                    =>     ("DECODED"),
        CLK_COR_SEQ_2_USE                       =>     ("FALSE"),
        CLK_COR_KEEP_IDLE                       =>     ("FALSE"),
CLK_COR_MAX_LAT                         =>     (31),
CLK_COR_MIN_LAT                         =>     (24),
        CLK_COR_PRECEDENCE                      =>     ("TRUE"),
        CLK_COR_REPEAT_WAIT                     =>     (0),
        CLK_COR_SEQ_LEN                         =>     (4),
        CLK_COR_SEQ_1_ENABLE                    =>     ("1111"),
        CLK_COR_SEQ_1_1                         =>     ("0111110111"),
        CLK_COR_SEQ_1_2                         =>     ("0111110111"),
        CLK_COR_SEQ_1_3                         =>     ("0111110111"),
        CLK_COR_SEQ_1_4                         =>     ("0111110111"),
        CLK_CORRECT_USE                         =>     ("TRUE"),
        CLK_COR_SEQ_2_ENABLE                    =>     ("1111"),
        CLK_COR_SEQ_2_1                         =>     ("0100000000"),
        CLK_COR_SEQ_2_2                         =>     ("0100000000"),
        CLK_COR_SEQ_2_3                         =>     ("0100000000"),
        CLK_COR_SEQ_2_4                         =>     ("0100000000"),

       ------------------------RX Channel Bonding Attributes----------------------
        CHAN_BOND_KEEP_ALIGN                    =>     ("FALSE"),
        CHAN_BOND_MAX_SKEW                      =>     (7),
        CHAN_BOND_SEQ_LEN                       =>     (1),
        CHAN_BOND_SEQ_1_1                       =>     ("0101111100"),
        CHAN_BOND_SEQ_1_2                       =>     ("0000000000"),
        CHAN_BOND_SEQ_1_3                       =>     ("0000000000"),
        CHAN_BOND_SEQ_1_4                       =>     ("0000000000"),
        CHAN_BOND_SEQ_1_ENABLE                  =>     ("0001"),
        CHAN_BOND_SEQ_2_1                       =>     ("0000000000"),
        CHAN_BOND_SEQ_2_2                       =>     ("0000000000"),
        CHAN_BOND_SEQ_2_3                       =>     ("0000000000"),
        CHAN_BOND_SEQ_2_4                       =>     ("0000000000"),
        CHAN_BOND_SEQ_2_ENABLE                  =>     ("0000"),
        CHAN_BOND_SEQ_2_USE                     =>     ("FALSE"),
        FTS_DESKEW_SEQ_ENABLE                   =>     ("1111"),
        FTS_LANE_DESKEW_CFG                     =>     ("1111"),
        FTS_LANE_DESKEW_EN                      =>     ("FALSE"),

       ---------------------------RX Margin Analysis Attributes----------------------------
        ES_CONTROL                              =>     ("000000"),
        ES_ERRDET_EN                            =>     ("FALSE"),
        ES_EYE_SCAN_EN                          =>     ("FALSE"),
        ES_HORZ_OFFSET                          =>     (x"010"),
        ES_PMA_CFG                              =>     ("0000000000"),
        ES_PRESCALE                             =>     ("00000"),
        ES_QUALIFIER                            =>     (x"00000000000000000000"),
        ES_QUAL_MASK                            =>     (x"00000000000000000000"),
        ES_SDATA_MASK                           =>     (x"00000000000000000000"),
        ES_VERT_OFFSET                          =>     ("000000000"),

       -------------------------FPGA RX Interface Attributes-------------------------
        RX_DATA_WIDTH                           =>     (40),

       ---------------------------PMA Attributes----------------------------
        OUTREFCLK_SEL_INV                       =>     ("11"),
        PMA_RSV                                 =>     (x"00000333"),
        PMA_RSV2                                =>     (x"00002040"),
        PMA_RSV3                                =>     ("00"),
        PMA_RSV4                                =>     ("0000"),
        RX_BIAS_CFG                             =>     ("0000111100110011"),
        DMONITOR_CFG                            =>     (x"000A00"),
        RX_CM_SEL                               =>     ("11"),
        RX_CM_TRIM                              =>     ("1010"),
        RX_DEBUG_CFG                            =>     ("00000000000000"),
        RX_OS_CFG                               =>     ("0000010000000"),
        TERM_RCAL_CFG                           =>     ("100001000010000"),
        TERM_RCAL_OVRD                          =>     ("000"),
        TST_RSV                                 =>     (x"00000000"),
RX_CLK25_DIV                            =>     (5),
TX_CLK25_DIV                            =>     (5),
        UCODEER_CLR                             =>     ('0'),

       ---------------------------PCI Express Attributes----------------------------
        PCS_PCIE_EN                             =>     ("FALSE"),

       ---------------------------PCS Attributes----------------------------
        PCS_RSVD_ATTR                           =>     (x"000000000000"),

       -------------RX Buffer Attributes------------
        RXBUF_ADDR_MODE                         =>     ("FULL"),
        RXBUF_EIDLE_HI_CNT                      =>     ("1000"),
        RXBUF_EIDLE_LO_CNT                      =>     ("0000"),
        RXBUF_EN                                =>     ("TRUE"),
        RX_BUFFER_CFG                           =>     ("000000"),
        RXBUF_RESET_ON_CB_CHANGE                =>     ("TRUE"),
        RXBUF_RESET_ON_COMMAALIGN               =>     ("FALSE"),
        RXBUF_RESET_ON_EIDLE                    =>     ("FALSE"),
        RXBUF_RESET_ON_RATE_CHANGE              =>     ("TRUE"),
        RXBUFRESET_TIME                         =>     ("00001"),
        RXBUF_THRESH_OVFLW                      =>     (61),
        RXBUF_THRESH_OVRD                       =>     ("FALSE"),
        RXBUF_THRESH_UNDFLW                     =>     (4),
        RXDLY_CFG                               =>     (x"001F"),
        RXDLY_LCFG                              =>     (x"030"),
        RXDLY_TAP_CFG                           =>     (x"0000"),
        RXPH_CFG                                =>     (x"C00002"),
        RXPHDLY_CFG                             =>     (x"084020"),
        RXPH_MONITOR_SEL                        =>     ("00000"),
        RX_XCLK_SEL                             =>     ("RXREC"),
        RX_DDI_SEL                              =>     ("000000"),
        RX_DEFER_RESET_BUF_EN                   =>     ("TRUE"),

       -----------------------CDR Attributes-------------------------
        RXCDR_CFG                               =>     (x"0000107FE406001041010"),
        RXCDR_FR_RESET_ON_EIDLE                 =>     ('0'),
        RXCDR_HOLD_DURING_EIDLE                 =>     ('0'),
        RXCDR_PH_RESET_ON_EIDLE                 =>     ('0'),
        RXCDR_LOCK_CFG                          =>     ("001001"),

       -------------------RX Initialization and Reset Attributes-------------------
        RXCDRFREQRESET_TIME                     =>     ("00001"),
        RXCDRPHRESET_TIME                       =>     ("00001"),
        RXISCANRESET_TIME                       =>     ("00001"),
        RXPCSRESET_TIME                         =>     ("00001"),
        RXPMARESET_TIME                         =>     ("00011"),

       -------------------RX OOB Signaling Attributes-------------------
        RXOOB_CFG                               =>     ("0000110"),

       -------------------------RX Gearbox Attributes---------------------------
        RXGEARBOX_EN                            =>     ("FALSE"),
        GEARBOX_MODE                            =>     ("000"),

       -------------------------PRBS Detection Attribute-----------------------
        RXPRBS_ERR_LOOPBACK                     =>     ('0'),

       -------------Power-Down Attributes----------
        PD_TRANS_TIME_FROM_P2                   =>     (x"03c"),
        PD_TRANS_TIME_NONE_P2                   =>     (x"3c"),
        PD_TRANS_TIME_TO_P2                     =>     (x"64"),

       -------------RX OOB Signaling Attributes----------
        SAS_MAX_COM                             =>     (64),
        SAS_MIN_COM                             =>     (36),
        SATA_BURST_SEQ_LEN                      =>     ("0101"),
        SATA_BURST_VAL                          =>     ("100"),
        SATA_EIDLE_VAL                          =>     ("100"),
        SATA_MAX_BURST                          =>     (8),
        SATA_MAX_INIT                           =>     (21),
        SATA_MAX_WAKE                           =>     (7),
        SATA_MIN_BURST                          =>     (4),
        SATA_MIN_INIT                           =>     (12),
        SATA_MIN_WAKE                           =>     (4),

       -------------RX Fabric Clock Output Control Attributes----------
        TRANS_TIME_RATE                         =>     (x"0E"),

       --------------TX Buffer Attributes----------------
        TXBUF_EN                                =>     ("TRUE"),
        TXBUF_RESET_ON_RATE_CHANGE              =>     ("TRUE"),
        TXDLY_CFG                               =>     (x"001F"),
        TXDLY_LCFG                              =>     (x"030"),
        TXDLY_TAP_CFG                           =>     (x"0000"),
        TXPH_CFG                                =>     (x"0780"),
        TXPHDLY_CFG                             =>     (x"084020"),
        TXPH_MONITOR_SEL                        =>     ("00000"),
        TX_XCLK_SEL                             =>     ("TXOUT"),

       -------------------------FPGA TX Interface Attributes-------------------------
        TX_DATA_WIDTH                           =>     (40),

       -------------------------TX Configurable Driver Attributes-------------------------
        TX_DEEMPH0                              =>     ("000000"),
        TX_DEEMPH1                              =>     ("000000"),
        TX_EIDLE_ASSERT_DELAY                   =>     ("110"),
        TX_EIDLE_DEASSERT_DELAY                 =>     ("100"),
        TX_LOOPBACK_DRIVE_HIZ                   =>     ("FALSE"),
        TX_MAINCURSOR_SEL                       =>     ('0'),
        TX_DRIVE_MODE                           =>     ("DIRECT"),
        TX_MARGIN_FULL_0                        =>     ("1001110"),
        TX_MARGIN_FULL_1                        =>     ("1001001"),
        TX_MARGIN_FULL_2                        =>     ("1000101"),
        TX_MARGIN_FULL_3                        =>     ("1000010"),
        TX_MARGIN_FULL_4                        =>     ("1000000"),
        TX_MARGIN_LOW_0                         =>     ("1000110"),
        TX_MARGIN_LOW_1                         =>     ("1000100"),
        TX_MARGIN_LOW_2                         =>     ("1000010"),
        TX_MARGIN_LOW_3                         =>     ("1000000"),
        TX_MARGIN_LOW_4                         =>     ("1000000"),

       -------------------------TX Gearbox Attributes--------------------------
        TXGEARBOX_EN                            =>     ("FALSE"),

       -------------------------TX Initialization and Reset Attributes--------------------------
        TXPCSRESET_TIME                         =>     ("00001"),
        TXPMARESET_TIME                         =>     ("00001"),

       -------------------------TX Receiver Detection Attributes--------------------------
        TX_RXDETECT_CFG                         =>     (x"1832"),
        TX_RXDETECT_REF                         =>     ("100"),

       ------------------ JTAG Attributes ---------------
        ACJTAG_DEBUG_MODE                       =>     ('0'),
        ACJTAG_MODE                             =>     ('0'),
        ACJTAG_RESET                            =>     ('0'),

       ------------------ CDR Attributes ---------------
        CFOK_CFG                                =>     (x"49000040E80"),
        CFOK_CFG2                               =>     ("0100000"),
        CFOK_CFG3                               =>     ("0100000"),
        CFOK_CFG4                               =>     ('0'),
        CFOK_CFG5                               =>     (x"0"),
        CFOK_CFG6                               =>     ("0000"),
        RXOSCALRESET_TIME                       =>     ("00011"),
        RXOSCALRESET_TIMEOUT                    =>     ("00000"),

       ------------------ PMA Attributes ---------------
        CLK_COMMON_SWING                        =>     ('0'),
        RX_CLKMUX_EN                            =>     ('1'),
        TX_CLKMUX_EN                            =>     ('1'),
        ES_CLK_PHASE_SEL                        =>     ('0'),
        USE_PCS_CLK_PHASE_SEL                   =>     ('0'),
        PMA_RSV6                                =>     ('0'),
        PMA_RSV7                                =>     ('0'),

       ------------------ TX Configuration Driver Attributes ---------------
        TX_PREDRIVER_MODE                       =>     ('0'),
        PMA_RSV5                                =>     ('0'),
        SATA_PLL_CFG                            =>     ("VCO_3000MHZ"),

       ------------------ RX Fabric Clock Output Control Attributes ---------------
        RXOUT_DIV                               =>     (1),

       ------------------ TX Fabric Clock Output Control Attributes ---------------
        TXOUT_DIV                               =>     (1),

       ------------------ RX Phase Interpolator Attributes---------------
        RXPI_CFG0                               =>     ("000"),
        RXPI_CFG1                               =>     ('1'),
        RXPI_CFG2                               =>     ('1'),

       --------------RX Equalizer Attributes-------------
        ADAPT_CFG0                              =>     (x"00000"),
        RXLPMRESET_TIME                         =>     ("0001111"),
            
        RXLPM_BIAS_STARTUP_DISABLE              =>     ('0'),
            
        RXLPM_CFG                               =>     ("0110"),
        RXLPM_CFG1                              =>     ('0'),
        RXLPM_CM_CFG                            =>     ('0'),
        RXLPM_GC_CFG                            =>     ("111100010"),
        RXLPM_GC_CFG2                           =>     ("001"),
        RXLPM_HF_CFG                            =>     ("00001111110000"),
        RXLPM_HF_CFG2                           =>     ("01010"),
        RXLPM_HF_CFG3                           =>     ("0000"),
        RXLPM_HOLD_DURING_EIDLE                 =>     ('0'),
        RXLPM_INCM_CFG                          =>     ('1'),
        RXLPM_IPCM_CFG                          =>     ('0'),
        RXLPM_LF_CFG                            =>     ("000000001111110000"),
        RXLPM_LF_CFG2                           =>     ("01010"),
        RXLPM_OSINT_CFG                         =>     ("100"),

       ------------------ TX Phase Interpolator PPM Controller Attributes---------------
        TXPI_CFG0                               =>     ("00"),
        TXPI_CFG1                               =>     ("00"),
        TXPI_CFG2                               =>     ("00"),
        TXPI_CFG3                               =>     ('0'),
        TXPI_CFG4                               =>     ('0'),
        TXPI_CFG5                               =>     ("000"),
        TXPI_GREY_SEL                           =>     ('0'),
        TXPI_INVSTROBE_SEL                      =>     ('0'),
        TXPI_PPMCLK_SEL                         =>     ("TXUSRCLK2"),
        TXPI_PPM_CFG                            =>     (x"00"),
        TXPI_SYNFREQ_PPM                        =>     ("000"),

       ------------------ LOOPBACK Attributes---------------
        LOOPBACK_CFG                            =>     ('0'),
        PMA_LOOPBACK_CFG                        =>     ('0'),

       ------------------RX OOB Signalling Attributes---------------
        RXOOB_CLK_CFG                           =>     ("PMA"),

       ------------------TX OOB Signalling Attributes---------------
        TXOOB_CFG                               =>     ('0'),

       ------------------RX Buffer Attributes---------------
        RXSYNC_MULTILANE                        =>     ('0'),
        RXSYNC_OVRD                             =>     ('0'),
        RXSYNC_SKIP_DA                          =>     ('0'),

       ------------------TX Buffer Attributes---------------
        TXSYNC_MULTILANE                        =>     (TXSYNC_MULTILANE_IN),
        TXSYNC_OVRD                             =>     (TXSYNC_OVRD_IN),
        TXSYNC_SKIP_DA                          =>     ('0')


    )
    port map
    (
                      ---------------------------------- Channel ---------------------------------
        CFGRESET                        =>      tied_to_ground_i,
        GTRESETSEL                      =>      tied_to_ground_i,
        GTRSVD                          =>      "0000000000000000",
        RESETOVRD                       =>      tied_to_ground_i,
        ---------------- Channel - Dynamic Reconfiguration Port (DRP) --------------
        DRPADDR                         =>      drpaddr_i,
        DRPCLK                          =>      DRPCLK_IN,
        DRPDI                           =>      drpdi_i,
        DRPDO                           =>      drpdo_i,
        DRPEN                           =>      drpen_i,
        DRPRDY                          =>      drprdy_i,
        DRPWE                           =>      drpwe_i,
        ------------------------------- Clocking Ports -----------------------------
        PLL0CLK                         =>      PLL0CLK_IN,
        PLL0REFCLK                      =>      PLL0REFCLK_IN,
        PLL1CLK                         =>      PLL1CLK_IN,
        PLL1REFCLK                      =>      PLL1REFCLK_IN,
        RXSYSCLKSEL                     =>      "00",
        TXSYSCLKSEL                     =>      "00",
        ------------------------------- Eye Scan Ports -----------------------------
        EYESCANDATAERROR                =>      EYESCANDATAERROR_OUT,
        EYESCANMODE                     =>      tied_to_ground_i,
        EYESCANRESET                    =>      eyescanreset_in,
        EYESCANTRIGGER                  =>      eyescantrigger_in,
        ------------------------ Loopback and Powerdown Ports ----------------------
        LOOPBACK                        =>      LOOPBACK_IN,
        RXPD                            =>      RXPD_IN,
        TXPD                            =>      TXPD_IN,
        ----------------------------- PCS Reserved Ports ---------------------------
        PCSRSVDIN                       =>      "0000000000000000",
        PCSRSVDOUT                      =>      open,
        ----------------------------- PMA Reserved Ports ---------------------------
        PMARSVDIN3                      =>      '0',
        PMARSVDIN4                      =>      '0',
        ------------------------------- Receive Ports ------------------------------
        CLKRSVD0                        =>      tied_to_ground_i,
        CLKRSVD1                        =>      tied_to_ground_i,
        DMONFIFORESET                   =>      tied_to_ground_i,
        DMONITORCLK                     =>      tied_to_ground_i,
        RXPMARESETDONE                  =>      rxpmaresetdone_t,
        RXUSERRDY                       =>      RXUSERRDY_IN,
        SIGVALIDCLK                     =>      tied_to_ground_i,
        -------------- Receive Ports - 64b66b and 64b67b Gearbox Ports -------------
        RXDATAVALID                     =>      open,
        RXGEARBOXSLIP                   =>      tied_to_ground_i,
        RXHEADER                        =>      open,
        RXHEADERVALID                   =>      open,
        RXSTARTOFSEQ                    =>      open,
        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        RX8B10BEN                       =>      tied_to_vcc_i,
        RXCHARISCOMMA                   =>      RXCHARISCOMMA_OUT,
        RXCHARISK                       =>      RXCHARISK_OUT,
        RXDISPERR                       =>      RXDISPERR_OUT,
        RXNOTINTABLE                    =>      RXNOTINTABLE_OUT,
        ------------------------- Receive Ports - AFE Ports ------------------------
        GTPRXN                          =>      GTPRXN_IN,
        GTPRXP                          =>      GTPRXP_IN,
        PMARSVDIN2                      =>      '0',
        PMARSVDOUT0                     =>      open,
        PMARSVDOUT1                     =>      open,
        ------------------- Receive Ports - Channel Bonding Ports ------------------
        RXCHANBONDSEQ                   =>      open,
        RXCHBONDEN                      =>      tied_to_ground_i,
        RXCHBONDI                       =>      "0000",
        RXCHBONDLEVEL                   =>      tied_to_ground_vec_i(2 downto 0),
        RXCHBONDMASTER                  =>      tied_to_ground_i,
        RXCHBONDO                       =>      open,
        RXCHBONDSLAVE                   =>      tied_to_ground_i,
        ------------------- Receive Ports - Channel Bonding Ports  -----------------
        RXCHANISALIGNED                 =>      open,
        RXCHANREALIGN                   =>      open,
        ------------------- Receive Ports - Clock Correction Ports -----------------
        RXCLKCORCNT                     =>      RXCLKCORCNT_OUT,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        RXBYTEISALIGNED                 =>      rxbyteisaligned_out,
        RXBYTEREALIGN                   =>      RXBYTEREALIGN_OUT,
        RXCOMMADET                      =>      rxcommadet_out,
        RXCOMMADETEN                    =>      tied_to_vcc_i,
        RXMCOMMAALIGNEN                 =>      RXMCOMMAALIGNEN_IN,
        RXPCOMMAALIGNEN                 =>      RXPCOMMAALIGNEN_IN,
        RXSLIDE                         =>      tied_to_ground_i,
        ----------------------- Receive Ports - PRBS Detection ---------------------
        RXPRBSCNTRESET                  =>      rxprbscntreset_in,
        RXPRBSERR                       =>      rxprbserr_out,
        RXPRBSSEL                       =>      rxprbssel_in,
        ------------------- Receive Ports - RX Data Path interface -----------------
        GTRXRESET                       =>      gtrxreset_out,
        RXDATA                          =>      rxdata_i,
        RXOUTCLK                        =>      RXOUTCLK_OUT,
        RXOUTCLKFABRIC                  =>      open,
        RXOUTCLKPCS                     =>      open,
        RXOUTCLKSEL                     =>      "010",
        RXPCSRESET                      =>      rxpcsreset_in,
        RXPMARESET                      =>      rxpmareset_in,
        RXUSRCLK                        =>      RXUSRCLK_IN,
        RXUSRCLK2                       =>      RXUSRCLK2_IN,
        ------------ Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        DMONITOROUT                     =>      dmonitorout_out,
        RXADAPTSELTEST                  =>      tied_to_ground_vec_i(13 downto 0),
        RXDFEXYDEN                      =>      tied_to_ground_i,
        RXOSCALRESET                    =>      tied_to_ground_i,
        RXOSHOLD                        =>      tied_to_ground_i,
        RXOSINTCFG                      =>      "0010",
        RXOSINTDONE                     =>      open,
        RXOSINTEN                       =>      tied_to_vcc_i,
        RXOSINTHOLD                     =>      tied_to_ground_i,
        RXOSINTID0                      =>      tied_to_ground_vec_i(3 downto 0),
        RXOSINTNTRLEN                   =>      tied_to_ground_i,
        RXOSINTOVRDEN                   =>      tied_to_ground_i,
        RXOSINTPD                       =>      tied_to_ground_i,
        RXOSINTSTARTED                  =>      open,
        RXOSINTSTROBE                   =>      tied_to_ground_i,
        RXOSINTSTROBEDONE               =>      open,
        RXOSINTSTROBESTARTED            =>      open,
        RXOSINTTESTOVRDEN               =>      tied_to_ground_i,
        RXOSOVRDEN                      =>      tied_to_ground_i,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXCDRFREQRESET                  =>      tied_to_ground_i,
        RXCDRHOLD                       =>      rxcdrhold_in,
        RXCDRLOCK                       =>      RXCDRLOCK_OUT,
        RXCDROVRDEN                     =>      tied_to_ground_i,
        RXCDRRESET                      =>      tied_to_ground_i,
        RXCDRRESETRSV                   =>      tied_to_ground_i,
        RXELECIDLE                      =>      open,
        RXELECIDLEMODE                  =>      "11",
        RXLPMHFHOLD                     =>      RXLPMHFHOLD_IN,
        RXLPMHFOVRDEN                   =>      rxlpmhfovrden_in,
        RXLPMLFHOLD                     =>      RXLPMLFHOLD_IN,
        RXLPMLFOVRDEN                   =>      tied_to_ground_i,
        RXLPMOSINTNTRLEN                =>      tied_to_ground_i,
        RXLPMRESET                      =>      rxlpmreset_in,
        RXOOBRESET                      =>      tied_to_ground_i,
        -------- Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
        RXBUFRESET                      =>      rxbufreset_in,
        RXBUFSTATUS                     =>      RXBUFSTATUS_OUT,
        RXDDIEN                         =>      tied_to_ground_i,
        RXDLYBYPASS                     =>      tied_to_vcc_i,
        RXDLYEN                         =>      tied_to_ground_i,
        RXDLYOVRDEN                     =>      tied_to_ground_i,
        RXDLYSRESET                     =>      tied_to_ground_i,
        RXDLYSRESETDONE                 =>      open,
        RXPHALIGN                       =>      tied_to_ground_i,
        RXPHALIGNDONE                   =>      open,
        RXPHALIGNEN                     =>      tied_to_ground_i,
        RXPHDLYPD                       =>      tied_to_ground_i,
        RXPHDLYRESET                    =>      tied_to_ground_i,
        RXPHMONITOR                     =>      open,
        RXPHOVRDEN                      =>      tied_to_ground_i,
        RXPHSLIPMONITOR                 =>      open,
        RXSTATUS                        =>      open,
        RXSYNCALLIN                     =>      tied_to_ground_i,
        RXSYNCDONE                      =>      open,
        RXSYNCIN                        =>      tied_to_ground_i,
        RXSYNCMODE                      =>      tied_to_ground_i,
        RXSYNCOUT                       =>      open,
        ----------- Receive Ports - RX Fabric Clock Output Control Ports  ----------
        RXRATEMODE                      =>      '0',
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        RXRATE                          =>      tied_to_ground_vec_i(2 downto 0),
        RXRATEDONE                      =>      open,
        RXRESETDONE                     =>      RXRESETDONE_OUT,
        -------------- Receive Ports - RX Pipe Control for PCI Express -------------
        PHYSTATUS                       =>      open,
        RXVALID                         =>      open,
        ----------------- Receive Ports - RX Polarity Control Ports ----------------
        RXPOLARITY                      =>      RXPOLARITY_IN,
        --------------------- Receive Ports - RX Ports for SATA --------------------
        RXCOMINITDET                    =>      open,
        RXCOMSASDET                     =>      open,
        RXCOMWAKEDET                    =>      open,
        ------------------------------- Transmit Ports -----------------------------
        SETERRSTATUS                    =>      tied_to_ground_i,
        TSTIN                           =>      "11111111111111111111",
        TXPHDLYTSTCLK                   =>      tied_to_ground_i,
        TXPIPPMEN                       =>      tied_to_ground_i,
        TXPIPPMOVRDEN                   =>      tied_to_ground_i,
        TXPIPPMPD                       =>      tied_to_ground_i,
        TXPIPPMSEL                      =>      tied_to_vcc_i,
        TXPIPPMSTEPSIZE                 =>      tied_to_ground_vec_i(4 downto 0),
        TXPMARESETDONE                  =>      open,
        TXPOSTCURSOR                    =>      txpostcursor_in,
        TXPOSTCURSORINV                 =>      tied_to_ground_i,
        TXPRECURSOR                     =>      txprecursor_in,
        TXPRECURSORINV                  =>      tied_to_ground_i,
        TXRATEMODE                      =>      tied_to_ground_i,
        TXUSERRDY                       =>      TXUSERRDY_IN,
        -------------- Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
        TXGEARBOXREADY                  =>      open,
        TXHEADER                        =>      tied_to_ground_vec_i(2 downto 0),
        TXSEQUENCE                      =>      tied_to_ground_vec_i(6 downto 0),
        TXSTARTSEQ                      =>      tied_to_ground_i,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        TX8B10BBYPASS                   =>      tied_to_ground_vec_i(3 downto 0),
        TX8B10BEN                       =>      tied_to_vcc_i,
        TXCHARDISPMODE                  =>      txchardispmode_in,
        TXCHARDISPVAL                   =>      txchardispval_in,
        TXCHARISK                       =>      TXCHARISK_IN,
        ----------------- Transmit Ports - Configurable Driver Ports ---------------
        PMARSVDIN0                      =>      '0',
        PMARSVDIN1                      =>      '0',
        ------------ Transmit Ports - TX Buffer and Phase Alignment Ports ----------
        TXBUFSTATUS                     =>      TXBUFSTATUS_OUT,
        TXDLYBYPASS                     =>      tied_to_vcc_i,
        TXDLYEN                         =>      tied_to_ground_i,
        TXDLYHOLD                       =>      tied_to_ground_i,
        TXDLYOVRDEN                     =>      tied_to_ground_i,
        TXDLYSRESET                     =>      tied_to_ground_i,
        TXDLYSRESETDONE                 =>      open,
        TXDLYUPDOWN                     =>      tied_to_ground_i,
        TXPHALIGN                       =>      tied_to_ground_i,
        TXPHALIGNDONE                   =>      open,
        TXPHALIGNEN                     =>      tied_to_ground_i,
        TXPHDLYPD                       =>      tied_to_ground_i,
        TXPHDLYRESET                    =>      tied_to_ground_i,
        TXPHINIT                        =>      tied_to_ground_i,
        TXPHINITDONE                    =>      open,
        TXPHOVRDEN                      =>      tied_to_ground_i,
        TXSYNCALLIN                     =>      tied_to_ground_i,
        TXSYNCDONE                      =>      open,
        TXSYNCIN                        =>      tied_to_ground_i,
        TXSYNCMODE                      =>      tied_to_ground_i,
        TXSYNCOUT                       =>      open,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        GTTXRESET                       =>      GTTXRESET_IN,
        TXDATA                          =>      txdata_i,
        TXOUTCLK                        =>      TXOUTCLK_OUT,
        TXOUTCLKFABRIC                  =>      TXOUTCLKFABRIC_OUT,
        TXOUTCLKPCS                     =>      TXOUTCLKPCS_OUT,
        TXOUTCLKSEL                     =>      "010",
        TXPCSRESET                      =>      txpcsreset_in,
        TXPMARESET                      =>      txpmareset_in,
        TXUSRCLK                        =>      TXUSRCLK_IN,
        TXUSRCLK2                       =>      TXUSRCLK2_IN,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        GTPTXN                          =>      GTPTXN_OUT,
        GTPTXP                          =>      GTPTXP_OUT,
        TXBUFDIFFCTRL                   =>      "100",
        TXDIFFCTRL                      =>      txdiffctrl_in,
        TXDIFFPD                        =>      tied_to_ground_i,
        TXINHIBIT                       =>      txinhibit_in,
        TXMAINCURSOR                    =>      txmaincursor_in,
        TXPDELECIDLEMODE                =>      tied_to_ground_i,
        TXPISOPD                        =>      tied_to_ground_i,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        TXRATE                          =>      tied_to_ground_vec_i(2 downto 0),
        TXRATEDONE                      =>      open,
        TXRESETDONE                     =>      TXRESETDONE_OUT,
        --------------------- Transmit Ports - TX PRBS Generator -------------------
        TXPRBSFORCEERR                  =>      txprbsforceerr_in,
        TXPRBSSEL                       =>      txprbssel_in,
        -------------------- Transmit Ports - TX Polarity Control ------------------
        TXPOLARITY                      =>      txpolarity_in,
        ----------------- Transmit Ports - TX Ports for PCI Express ----------------
        TXDEEMPH                        =>      tied_to_ground_i,
        TXDETECTRX                      =>      tied_to_ground_i,
        TXELECIDLE                      =>      txelecidle_in,
        TXMARGIN                        =>      tied_to_ground_vec_i(2 downto 0),
        TXSWING                         =>      tied_to_ground_i,
        --------------------- Transmit Ports - TX Ports for SATA -------------------
        TXCOMFINISH                     =>      open,
        TXCOMINIT                       =>      tied_to_ground_i,
        TXCOMSAS                        =>      tied_to_ground_i,
        TXCOMWAKE                       =>      tied_to_ground_i

    );

        RXPMARESETDONE_OUT    <=   rxpmaresetdone_t;

     ------------------------- Soft Fix for Production Silicon----------------------
       gtrxreset_seq_i  : system_aurora_8b10b_0_0_gtrxreset_seq 
       port map
            (
        RST                             =>      RST_IN,
        STABLE_CLOCK                    =>      STABLE_CLOCK,  
        GTRXRESET_IN                    =>      GTRXRESET_IN,
        RXPMARESETDONE                  =>      rxpmaresetdone_t,
        GTRXRESET_OUT                   =>      gtrxreset_out,
        DRP_OP_DONE                     =>      drp_op_done,
        DRPCLK                          =>      DRPCLK_IN,
        DRPEN                           =>      drpen_rst_t,
        DRPADDR                         =>      drpaddr_rst_t,
        DRPWE                           =>      drpwe_rst_t,
        DRPDO                           =>      drpdo_rst_t,
        DRPDI                           =>      drpdi_rst_t,
        DRPRDY                          =>      drprdy_rst_t

            ); 

      drpen_i       <= 
                       drpen_pma_t     when drp_pma_busy = '1' else
                       drpen_rate_t    when drp_rate_busy ='1' else DRPEN_IN;


      drpaddr_i     <= 
                       drpaddr_pma_t   when drp_pma_busy = '1' else
                       drpaddr_rate_t  when drp_rate_busy ='1' else DRPADDR_IN;


      drpwe_i       <= 
                       drpwe_pma_t     when drp_pma_busy = '1' else
                       drpwe_rate_t    when drp_rate_busy ='1' else DRPWE_IN;



      DRPDO_OUT      <=  drpdo_i when (drp_pma_busy='0' or drp_rate_busy='0') else x"0000";

      drpdo_rst_t    <=  drpdo_i;

      drpdo_pma_t    <=  drpdo_i;

      drpdo_rate_t   <=  drpdo_i;


      drpdi_i        <=  
                         drpdi_pma_t     when drp_pma_busy = '1' else
                         drpdi_rate_t    when drp_rate_busy ='1' else DRPDI_IN;


      DRPRDY_OUT     <=  drprdy_i when (drp_pma_busy='0' or drp_rate_busy='0') else '0';

      drprdy_rst_t   <=  drprdy_i;

      drprdy_pma_t   <=  drprdy_i;

      drprdy_rate_t  <=  drprdy_i;


   drp_pma_busy <= '0';
   drp_rate_busy <= '0';

  process (DRPCLK_IN)
  begin
     if(rising_edge(DRPCLK_IN)) then
        if(drp_rate_busy='1') then
           drp_busy_i1 <= '1';
        else
           drp_busy_i1 <= '0';
        end if;
     end if;
  end process;

  process (DRPCLK_IN)
  begin
     if(rising_edge(DRPCLK_IN)) then
        if(drp_pma_busy='1') then
           drp_busy_i2 <= '1';
        else
           drp_busy_i2 <= '0';
        end if;
     end if;
  end process;

    DRP_BUSY_OUT <= drp_busy_i1 or drp_busy_i2;


 end MAPPED;



