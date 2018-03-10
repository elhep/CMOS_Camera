------------------------------------------------------------------------------/
-- (c) Copyright 1995-2013 Xilinx, Inc. All rights reserved.
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
------------------------------------------------------------------------------/
 library ieee;
     use ieee.std_logic_1164.all;
     use ieee.std_logic_misc.all;
     use IEEE.numeric_std.all;
     use ieee.std_logic_arith.all;
     use ieee.std_logic_unsigned.all;

entity  system_aurora_8b10b_0_0 is
 port (
    -- AXI TX Interface
 
    s_axi_tx_tdata         : in  std_logic_vector(0 to 31);
 
    s_axi_tx_tvalid        : in  std_logic;
    s_axi_tx_tready        : out std_logic;
 
    s_axi_tx_tkeep         : in std_logic_vector(0 to 3);
 
    s_axi_tx_tlast         : in  std_logic;





    txp                    : out std_logic_vector(0 downto 0);
    txn                    : out std_logic_vector(0 downto 0);

    -- GT Reference Clock Interface
    gt_refclk1               : in  std_logic;

    -- Error Detection Interface
    tx_hard_err            : out std_logic;
    -- Status
    tx_lane_up             : out std_logic_vector(0 downto 0);
    tx_channel_up          : out std_logic;




    -- System Interface
    user_clk               : in  std_logic;
    sync_clk               : in  std_logic;
 
    tx_system_reset        : in  std_logic;

    power_down             : in  std_logic;
    loopback               : in  std_logic_vector(2 downto 0);
    gt_reset               : in  std_logic;
    tx_lock                : out std_logic;
    sys_reset_out          : out std_logic;
    init_clk_in            : in  std_logic;
    tx_resetdone_out       : out std_logic;

    --DRP Ports
 
    drpclk_in                         : in   std_logic;

  gt_common_reset_out     : out std_logic;
--____________________________COMMON PORTS_______________________________{
  gt0_pll0refclklost_in   : in  std_logic;
  quad1_common_lock_in    : in  std_logic;
------------------------- Channel - Ref Clock Ports ------------------------
    GT0_PLL0OUTCLK_IN                       : in   std_logic;
    GT0_PLL1OUTCLK_IN                       : in   std_logic;
    GT0_PLL0OUTREFCLK_IN                    : in   std_logic;
    GT0_PLL1OUTREFCLK_IN                    : in   std_logic;
--____________________________COMMON PORTS_______________________________}
    tx_out_clk             : out std_logic;
    pll_not_locked         : in  std_logic

 );

end system_aurora_8b10b_0_0;


architecture STRUCTURE of system_aurora_8b10b_0_0 is
  attribute core_generation_info           : string;
  attribute core_generation_info of STRUCTURE : architecture is "system_aurora_8b10b_0_0,aurora_8b10b_v11_1_3,{user_interface=AXI_4_Streaming,backchannel_mode=Timer,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=62500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=true,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=TX-only_Simplex}";

    component system_aurora_8b10b_0_0_core
        port   (
         -- TX Stream Interface
         S_AXI_TX_TDATA         : in  std_logic_vector(0 to 31);
         S_AXI_TX_TKEEP         : in std_logic_vector(0 to 3);
         S_AXI_TX_TVALID        : in  std_logic;
         S_AXI_TX_TREADY        : out std_logic;
         S_AXI_TX_TLAST         : in  std_logic;


         TXP                    : out std_logic; 
         TXN                    : out std_logic;

         -- GT Reference Clock Interface

         gt_refclk1             : in std_logic;

         -- Error Detection Interface
         TX_HARD_ERR            : out std_logic;

         -- Status
         TX_CHANNEL_UP          : out std_logic;
         TX_LANE_UP             : out std_logic;

               



         -- Clock Compensation Control Interface

         -- System Interface

         USER_CLK         : in std_logic;
         SYNC_CLK         : in std_logic;
         GT_RESET         : in std_logic;
         TX_SYSTEM_RESET  : in std_logic;
         sys_reset_out    : out std_logic;
         POWER_DOWN       : in std_logic;
         LOOPBACK         : in std_logic_vector(2 downto 0);
         TX_OUT_CLK       : out std_logic;
         INIT_CLK_IN         : in  std_logic; 
         PLL_NOT_LOCKED      : in  std_logic;
         TX_RESETDONE_OUT    : out std_logic;


         drpclk_in                                    : in   std_logic;
         DRPADDR_IN                              : in   std_logic_vector(8 downto 0);
         DRPDI_IN                                : in   std_logic_vector(15 downto 0);
         DRPDO_OUT                               : out  std_logic_vector(15 downto 0);
         DRPEN_IN                                : in   std_logic;
         DRPRDY_OUT                              : out  std_logic;
         DRPWE_IN                                : in   std_logic;
   	
  gt_common_reset_out     : out std_logic;
--____________________________COMMON PORTS_______________________________{
  gt0_pll0refclklost_in   : in  std_logic;
  quad1_common_lock_in    : in  std_logic;
------------------------- Channel - Ref Clock Ports ------------------------
    GT0_PLL0OUTCLK_IN                       : in   std_logic;
    GT0_PLL1OUTCLK_IN                       : in   std_logic;
    GT0_PLL0OUTREFCLK_IN                    : in   std_logic;
    GT0_PLL1OUTREFCLK_IN                    : in   std_logic;
--____________________________COMMON PORTS_______________________________}
         TX_LOCK          : out std_logic
    );

    end component;

begin

 --*********************************Main Body of Code**********************************

     U0 : system_aurora_8b10b_0_0_core
     port map (
        -- AXI TX Interface
        s_axi_tx_tdata               => s_axi_tx_tdata,
        s_axi_tx_tkeep               => s_axi_tx_tkeep,
        s_axi_tx_tvalid              => s_axi_tx_tvalid,
        s_axi_tx_tlast               => s_axi_tx_tlast,
        s_axi_tx_tready              => s_axi_tx_tready,



        -- GT Serial I/O
        txp                          => txp(0),
        txn                          => txn(0),

        -- GT Reference Clock Interface
        gt_refclk1                   => gt_refclk1,
        -- Error Detection Interface

        -- Error Detection Interface
        tx_hard_err                  => tx_hard_err,

        -- Status
        tx_channel_up                => tx_channel_up,
        tx_lane_up                   => tx_lane_up(0),




        -- System Interface
        user_clk                     => user_clk,
        sync_clk                     => sync_clk,
        tx_system_reset              => tx_system_reset,
        sys_reset_out                => sys_reset_out,
        power_down                   => power_down,
        loopback                     => loopback,
        gt_reset                     => gt_reset,
        tx_lock                      => tx_lock,
        init_clk_in                  => init_clk_in,
        pll_not_locked               => pll_not_locked,
	tx_resetdone_out             => tx_resetdone_out,
        drpclk_in                    => drpclk_in,
        DRPADDR_IN                   => (others => '0'),
        DRPEN_IN                     => '0',
        DRPDI_IN                     => (others => '0'),
        DRPRDY_OUT                   => open, 
        DRPDO_OUT                    => open,
        DRPWE_IN                     => '0',
--------------------{
  gt_common_reset_out          =>  gt_common_reset_out,
--____________________________COMMON PORTS_______________________________{
  gt0_pll0refclklost_in       =>  gt0_pll0refclklost_in, 
  quad1_common_lock_in     =>  quad1_common_lock_in,
------------------------- Channel - Ref Clock Ports ------------------------
    GT0_PLL0OUTCLK_IN        =>  GT0_PLL0OUTCLK_IN,
    GT0_PLL1OUTCLK_IN        =>  GT0_PLL1OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN     =>  GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTREFCLK_IN     =>  GT0_PLL1OUTREFCLK_IN,
--____________________________COMMON PORTS_______________________________}
--------------------}
        tx_out_clk                   => tx_out_clk

     );

 end STRUCTURE;
