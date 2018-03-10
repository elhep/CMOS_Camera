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
--  TX_GLOBAL_LOGIC_SIMPLEX
--
--
--
--  Description: The GLOBAL_LOGIC module handles channel bonding, channel
--               verification, channel error manangement and idle generation in simplex mode.
--
--               This module supports 1 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX is

    port (

    -- Aurora Lane Interface

LANE_UP            : in std_logic;
HARD_ERR         : in std_logic;
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
            CHANNEL_HARD_ERR : out std_logic

         );

end system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX;

architecture MAPPED of system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX is

-- External Register Declarations --

signal GEN_A_Buffer              : std_logic;
signal GEN_K_Buffer              : std_logic_vector(0 to 3);
signal GEN_R_Buffer              : std_logic_vector(0 to 3);
signal GEN_V_Buffer              : std_logic_vector(0 to 3);
signal RESET_LANES_Buffer        : std_logic;
    signal CHANNEL_UP_Buffer         : std_logic;
    signal CHANNEL_HARD_ERR_Buffer : std_logic;

-- Wire Declarations --

    signal gen_ver_i       : std_logic;
    signal reset_channel_i : std_logic;
    signal did_ver_i       : std_logic;

-- Component Declarations --

    component system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX

        port (

        -- Aurora Lane Interface

RESET_LANES       : out std_logic;

        -- Sideband Signal
                TX_VERIFY         : in std_logic;

        -- System Interface

                USER_CLK          : in std_logic;
                RESET             : in std_logic;
                CHANNEL_UP        : out std_logic;

        -- Idle and Verification Sequence Generator Interface

                GEN_VER           : out std_logic;

        -- Channel Init State Machine Interface

                RESET_CHANNEL     : in std_logic

             );

    end component;


    component system_aurora_8b10b_0_0_IDLE_AND_VER_GEN

        port (

        -- Channel Init SM Interface

                GEN_VER  : in std_logic;
                DID_VER  : out std_logic;

        -- Aurora Lane Interface

GEN_A    : out std_logic;
GEN_K    : out std_logic_vector(0 to 3);
GEN_R    : out std_logic_vector(0 to 3);
GEN_V    : out std_logic_vector(0 to 3);

        -- System Interface

                RESET    : in std_logic;
                USER_CLK : in std_logic

             );

    end component;


    component system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX

        port (

        -- Aurora Lane Interface

HARD_ERR         : in std_logic;
LANE_UP            : in std_logic;

        -- System Interface

                USER_CLK           : in std_logic;
                POWER_DOWN         : in std_logic;

                CHANNEL_HARD_ERR : out std_logic;

        -- Channel Init SM Interface

                RESET_CHANNEL      : out std_logic

             );

    end component;

begin

    GEN_A              <= GEN_A_Buffer;
    GEN_K              <= GEN_K_Buffer;
    GEN_R              <= GEN_R_Buffer;
    GEN_V              <= GEN_V_Buffer;
    RESET_LANES        <= RESET_LANES_Buffer;
    CHANNEL_UP         <= CHANNEL_UP_Buffer;
    CHANNEL_HARD_ERR <= CHANNEL_HARD_ERR_Buffer;

-- Main Body of Code --

    -- State Machine for channel bonding and verification.

    tx_channel_init_sm_simplex_i : system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX

        port map (


        -- Aurora Lane Interface

                    RESET_LANES => RESET_LANES_Buffer,

        -- Sideband Signals
                    TX_VERIFY   => TX_VERIFY,
                   
        -- System Interface

                    USER_CLK => USER_CLK,
                    RESET => RESET,
                    CHANNEL_UP => CHANNEL_UP_Buffer,

        -- Idle and Verification Sequence Generator Interface

                    GEN_VER => gen_ver_i,

        -- Channel Error Management Module Interface

                    RESET_CHANNEL => reset_channel_i

                 );


    -- Idle and verification sequence generator module.

    idle_and_ver_gen_i : system_aurora_8b10b_0_0_IDLE_AND_VER_GEN

        port map (

        -- Channel Init SM Interface

                    GEN_VER => gen_ver_i,
                    DID_VER => did_ver_i,

        -- Aurora Lane Interface

                    GEN_A => GEN_A_Buffer,
                    GEN_K => GEN_K_Buffer,
                    GEN_R => GEN_R_Buffer,
                    GEN_V => GEN_V_Buffer,

        -- System Interface

                    RESET => RESET,
                    USER_CLK => USER_CLK

                 );



    -- Channel Error Management module.

    tx_channel_err_detect_simplex_i : system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX

        port map (

        -- Aurora Lane Interface

                    HARD_ERR => HARD_ERR,
                    LANE_UP => LANE_UP,

        -- System Interface

                    USER_CLK => USER_CLK,
                    POWER_DOWN => POWER_DOWN,
                    CHANNEL_HARD_ERR => CHANNEL_HARD_ERR_Buffer,

        -- Channel Init State Machine Interface

                    RESET_CHANNEL => reset_channel_i

                 );

end MAPPED;
