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

--
--  TX_LL
--
--
--  Description: The TX_LL module converts user data from the LocalLink interface
--               to Aurora Data, then sends it to the Aurora Channel for transmission.
--               It also handles NFC and UFC messages.
--
--               This module supports 2 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity system_aurora_8b10b_0_0_TX_LL is

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

end system_aurora_8b10b_0_0_TX_LL;

architecture MAPPED of system_aurora_8b10b_0_0_TX_LL is

-- External Register Declarations --

    signal TX_DST_RDY_N_Buffer  : std_logic;
    signal GEN_SCP_Buffer       : std_logic;
    signal GEN_ECP_Buffer       : std_logic;
signal TX_PE_DATA_V_Buffer  : std_logic_vector(0 to 1);
signal GEN_PAD_Buffer       : std_logic_vector(0 to 1);
signal TX_PE_DATA_Buffer    : std_logic_vector(0 to 31);
signal GEN_CC_Buffer        : std_logic;

-- Wire Declarations --

    signal halt_c_i       : std_logic;
    signal tx_dst_rdy_n_i : std_logic;

-- Component Declarations --

    component system_aurora_8b10b_0_0_TX_LL_DATAPATH

        port (

        -- LocalLink PDU Interface

TX_D         : in std_logic_vector(0 to 31);
TX_REM       : in std_logic_vector(0 to 1);
                TX_SRC_RDY_N : in std_logic;
                TX_SOF_N     : in std_logic;
                TX_EOF_N     : in std_logic;

        -- Aurora Lane Interface

TX_PE_DATA_V : out std_logic_vector(0 to 1);
GEN_PAD      : out std_logic_vector(0 to 1);
TX_PE_DATA   : out std_logic_vector(0 to 31);

        -- TX_LL Control Module Interface

                HALT_C       : in std_logic;
                TX_DST_RDY_N : in std_logic;

        -- System Interface

                CHANNEL_UP   : in std_logic;
                USER_CLK     : in std_logic

             );

    end component;


    component system_aurora_8b10b_0_0_TX_LL_CONTROL

        port (

        -- LocalLink PDU Interface

                TX_SRC_RDY_N  : in std_logic;
                TX_SOF_N      : in std_logic;
                TX_EOF_N      : in std_logic;
TX_REM        : in std_logic_vector(0 to 1);
                TX_DST_RDY_N  : out std_logic;

        -- Clock Compensation Interface

                WARN_CC       : in std_logic;
                DO_CC         : in std_logic;

        -- Global Logic Interface

                CHANNEL_UP    : in std_logic;

        -- TX_LL Control Module Interface

                HALT_C        : out std_logic;

        -- Aurora Lane Interface

                GEN_SCP       : out std_logic;
                GEN_ECP       : out std_logic;
GEN_CC        : out std_logic;

        -- System Interface

                USER_CLK      : in std_logic

             );

    end component;

begin

    TX_DST_RDY_N  <= TX_DST_RDY_N_Buffer;
    GEN_SCP       <= GEN_SCP_Buffer;
    GEN_ECP       <= GEN_ECP_Buffer;
    TX_PE_DATA_V  <= TX_PE_DATA_V_Buffer;
    GEN_PAD       <= GEN_PAD_Buffer;
    TX_PE_DATA    <= TX_PE_DATA_Buffer;
    GEN_CC        <= GEN_CC_Buffer;

-- Main Body of Code --

    -- TX_DST_RDY_N is generated by TX_LL_CONTROL and used by TX_LL_DATAPATH and
    -- external modules to regulate incoming pdu data signals.

    TX_DST_RDY_N_Buffer <= tx_dst_rdy_n_i;


    -- TX_LL_Datapath module

    tx_ll_datapath_i : system_aurora_8b10b_0_0_TX_LL_DATAPATH

        port map (

        -- LocalLink PDU Interface

                    TX_D => TX_D,
                    TX_REM => TX_REM,
                    TX_SRC_RDY_N => TX_SRC_RDY_N,
                    TX_SOF_N => TX_SOF_N,
                    TX_EOF_N => TX_EOF_N,

        -- Aurora Lane Interface

                    TX_PE_DATA_V => TX_PE_DATA_V_Buffer,
                    GEN_PAD => GEN_PAD_Buffer,
                    TX_PE_DATA => TX_PE_DATA_Buffer,

        -- TX_LL Control Module Interface

                    HALT_C => halt_c_i,
                    TX_DST_RDY_N => tx_dst_rdy_n_i,

        -- System Interface

                    CHANNEL_UP => CHANNEL_UP,
                    USER_CLK => USER_CLK

                 );


    -- TX_LL_Control module

    tx_ll_control_i : system_aurora_8b10b_0_0_TX_LL_CONTROL

        port map (

        -- LocalLink PDU Interface

                    TX_SRC_RDY_N => TX_SRC_RDY_N,
                    TX_SOF_N => TX_SOF_N,
                    TX_EOF_N => TX_EOF_N,
                    TX_REM => TX_REM,
                    TX_DST_RDY_N => tx_dst_rdy_n_i,

        -- Clock Compensation Interface

                    WARN_CC => WARN_CC,
                    DO_CC => DO_CC,

        -- Global Logic Interface

                    CHANNEL_UP => CHANNEL_UP,

        -- TX_LL Control Module Interface

                    HALT_C => halt_c_i,

        -- Aurora Lane Interface

                    GEN_SCP => GEN_SCP_Buffer,
                    GEN_ECP => GEN_ECP_Buffer,
                    GEN_CC => GEN_CC_Buffer,

        -- System Interface

                    USER_CLK => USER_CLK

                 );

end MAPPED;
