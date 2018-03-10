 
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
---------------------------------------------------------------------------------------------
--  AURORA RESET LOGIC
--
--
--  Description: RESET logic using Debouncer
--
--        

library IEEE;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;

-- synthesis translate_off
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- synthesis translate_on

entity system_aurora_8b10b_0_0_RESET_LOGIC is
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

end system_aurora_8b10b_0_0_RESET_LOGIC;

architecture MAPPED of system_aurora_8b10b_0_0_RESET_LOGIC is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of MAPPED : architecture is "yes";
  attribute core_generation_info           : string;
  attribute core_generation_info of MAPPED : architecture is "system_aurora_8b10b_0_0,aurora_8b10b_v11_1_3,{user_interface=AXI_4_Streaming,backchannel_mode=Timer,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=62500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=true,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=TX-only_Simplex}";

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- Internal Register Declarations --

    signal link_reset_sync    : std_logic;
    signal link_reset_comb_r  : std_logic;
    signal pll_not_locked_sync: std_logic;
    signal tx_lock_sync       : std_logic;
    signal tx_lock_comb_r     : std_logic;
    signal gt_txresetdone_r   : std_logic;
    signal gt_txresetdone_r2  : std_logic;
    signal gt_txresetdone_r3  : std_logic;
    signal tx_resetdone_sync  : std_logic;
    signal tied_to_ground_i   : std_logic;     

-- Component Declarations --

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
        C_VECTOR_WIDTH              : integer range 0 to 32 := 32                             ;
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


    component IBUFDS
        port (

                O : out std_ulogic;
                I : in std_ulogic;
                IB : in std_ulogic);

    end component;

begin

    -- Tie off top level constants.
    tied_to_ground_i     <= '0';

    -- ___________________________Debouncing circuit for GT_RESET_IN________________________


    tx_resetdone_sync <= TX_RESETDONE_IN;

    process (USER_CLK, tx_resetdone_sync)
    begin
        if (tx_resetdone_sync = '0') then
            gt_txresetdone_r  <= '0' after DLY;
            gt_txresetdone_r2 <= '0' after DLY;
        elsif (USER_CLK 'event and USER_CLK = '1') then
            gt_txresetdone_r  <= tx_resetdone_sync after DLY;
            gt_txresetdone_r2 <= gt_txresetdone_r after DLY;
        end if;
    end process;

    --FF for slack violations fix
    process(USER_CLK)
    begin
        if(USER_CLK'event and USER_CLK='1') then
            gt_txresetdone_r3 <=  gt_txresetdone_r2 after DLY;
        end if;
    end process;


    --This flop will pipeline wide-OR in case of multi-lane
    process(INIT_CLK_IN)
    begin
        if(INIT_CLK_IN'event and INIT_CLK_IN='1') then
            link_reset_comb_r <=  LINK_RESET_IN after DLY;
        end if;
    end process;

      link_reset_cdc_sync : system_aurora_8b10b_0_0_cdc_sync
      generic map
        (
           c_cdc_type      => 1             ,   
           c_flop_input    => 1             ,  
           c_reset_state   => 0             ,  
           c_single_bit    => 1             ,  
           c_vector_width  => 2             ,  
           c_mtbf_stages   => 3                
         )
      port map
         (
           prmry_aclk      => INIT_CLK_IN        ,
           prmry_resetn    => '1'                ,
           prmry_in        => link_reset_comb_r  ,
           prmry_vect_in   => "00"               ,
           scndry_aclk     => USER_CLK           ,
           scndry_resetn   => '1'                ,
           prmry_ack       => open               ,
           scndry_out      => link_reset_sync    ,
           scndry_vect_out => open                    
          );

      pll_not_locked_cdc_sync : system_aurora_8b10b_0_0_cdc_sync
      generic map
        (
           c_cdc_type      => 1             ,   
           c_flop_input    => 0             ,  
           c_reset_state   => 0             ,  
           c_single_bit    => 1             ,  
           c_vector_width  => 2             ,  
           c_mtbf_stages   => 3                
         )
      port map
         (
           prmry_aclk      => INIT_CLK_IN         ,
           prmry_resetn    => '1'                 ,
           prmry_in        => PLL_NOT_LOCKED      ,
           prmry_vect_in   => "00"                ,
           scndry_aclk     => USER_CLK            ,
           scndry_resetn   => '1'                 ,
           prmry_ack       => open                ,
           scndry_out      => pll_not_locked_sync ,
           scndry_vect_out => open                     
          );

    --This flop will pipeline wide-OR in case of multi-lane
    process (INIT_CLK_IN)
    begin
      if (INIT_CLK_IN = '1' and INIT_CLK_IN'event) then
            tx_lock_comb_r   <=  TX_LOCK_IN after DLY;
      end if;
    end process;


      tx_lock_cdc_sync : system_aurora_8b10b_0_0_cdc_sync
      generic map
        (
           c_cdc_type      => 1             ,   
           c_flop_input    => 1             ,  
           c_reset_state   => 0             ,  
           c_single_bit    => 1             ,  
           c_vector_width  => 2             ,  
           c_mtbf_stages   => 3                
         )
      port map
         (
           prmry_aclk      => INIT_CLK_IN         ,
           prmry_resetn    => '1'                 ,
           prmry_in        => tx_lock_comb_r      ,
           prmry_vect_in   => "00"                ,
           scndry_aclk     => USER_CLK            ,
           scndry_resetn   => '1'                 ,
           prmry_ack       => open                ,
           scndry_out      => tx_lock_sync        ,
           scndry_vect_out => open                     
          );

process (USER_CLK)
begin
  if (USER_CLK = '1' and USER_CLK'event) then
    SYSTEM_RESET <=  (RESET or (not gt_txresetdone_r3)) or link_reset_sync or pll_not_locked_sync or (not tx_lock_sync);
  end if;
end process;

end MAPPED;
