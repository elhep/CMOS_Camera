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
--  TX_AURORA_LANE_SIMPLEX_GTX_4BYTE
--
--
--
--  Description: The TX_AURORA_LANE_SIMPLEX module provides a simplex
--               4-byte aurora lane connection using a single GTX.  The
--               module handles lane initialization, symbol generation
--               as well as error detection.  It also decodes some of
--               the channel bonding indicator signals needed by the
--               Global logic.
--
--               * Supports Virtex-5
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE is

    port (

    -- GTX Interface

            TX_BUF_ERR        : in std_logic;                      -- Overflow/Underflow of TX buffer detected.
            TX_K_ERR          : in std_logic_vector(3 downto 0);   -- Attempt to send bad control byte detected.
            TX_CHAR_IS_K      : out std_logic_vector(3 downto 0);  -- TX_DATA byte is a control character.
            TX_DATA           : out std_logic_vector(31 downto 0); -- 4-byte data bus to the GTX.
            GTX_TX_RESET      : out std_logic;                     -- Reset TX side of GTX logic.

    -- TX_LL Interface

            GEN_SCP           : in std_logic_vector(0 to 1);       -- SCP generation request from TX_LL.
            GEN_ECP           : in std_logic_vector(0 to 1);       -- ECP generation request from TX_LL.
            GEN_PAD           : in std_logic_vector(0 to 1);       -- PAD generation request from TX_LL.
            TX_PE_DATA        : in std_logic_vector(0 to 31);      -- Data from TX_LL to send over lane.
            TX_PE_DATA_V      : in std_logic_vector(0 to 1);       -- Indicates TX_PE_DATA is Valid.
            GEN_CC            : in std_logic;                      -- CC generation request from TX_LL.

    -- Sideband Signals

            TX_ALIGNED         : in  std_logic;                    -- RX lane partner is aligned

    -- Global Logic Interface

            GEN_A             : in std_logic;                      -- 'A character' generation request from Global Logic.
            GEN_K             : in std_logic_vector(0 to 3);       -- 'K character' generation request from Global Logic.
            GEN_R             : in std_logic_vector(0 to 3);       -- 'R character' generation request from Global Logic.
            GEN_V             : in std_logic_vector(0 to 3);       -- Verification data generation request.
            CHANNEL_UP        : in  std_logic;
            LANE_UP           : out std_logic;                     -- Lane is ready for bonding and verification.
            HARD_ERR        : out std_logic;                     -- Hard error detected.


    -- System Interface

            USER_CLK          : in std_logic;                      -- System clock for all non-GTX Aurora Logic.
            RESET_SYMGEN      : in std_logic;                      -- Reset the SYM_GEN module.
            RESET             : in std_logic                       -- Reset the lane.

         );

end system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE;

architecture MAPPED of system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE is


    -- Wire Declarations --

    signal gen_sp_i              : std_logic;
    signal gen_spa_c             : std_logic;
    signal enable_err_detect_i : std_logic;
    signal hard_err_reset_i    : std_logic;
    signal tx_k_err_c            : std_logic_vector(1 downto 0);
    signal tx_data_i             : std_logic_vector(31 downto 0);
    signal tx_char_is_k_i        : std_logic_vector(3 downto 0);


    -- Component Declarations --

    component system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE

        port (

        -- GTX Interface

                GTX_TX_RESET        : out std_logic; -- Reset the TX side of the GTX.

        -- Symbol Generator Interface

                GEN_SP              : out std_logic; -- Generate SP symbol

        -- Error Detection Logic Interface

                ENABLE_ERR_DETECT : out std_logic; -- Turn on Soft Error detection.
                HARD_ERR_RESET    : in std_logic;  -- Reset lane due to hard error.

        -- Sideband Signals

                TX_ALIGNED          : in std_logic;  -- RX lane partner is aligned.

        -- Global Logic Interface

                LANE_UP             : out std_logic; -- Lane is initialized.


        -- System Interface

                USER_CLK            : in std_logic;  -- Clock for all non-GTX Aurora logic.
                RESET               : in std_logic   -- Reset Aurora Lane.

             );

    end component;


    component system_aurora_8b10b_0_0_SYM_GEN_4BYTE

        port (

        -- TX_LL Interface                                        -- See description for info about GEN_PAD and TX_PE_DATA_V.

                GEN_SCP      : in std_logic_vector(0 to 1);       -- Generate SCP.
                GEN_ECP      : in std_logic_vector(0 to 1);       -- Generate ECP.
                GEN_PAD      : in std_logic_vector(0 to 1);       -- Replace LSB with Pad character.
                TX_PE_DATA   : in std_logic_vector(0 to 31);      -- Data.  Transmitted when TX_PE_DATA_V is asserted.
                TX_PE_DATA_V : in std_logic_vector(0 to 1);       -- Transmit data.
                GEN_CC       : in std_logic;                      -- Generate Clock Correction symbols.

        -- Global Logic Interface                                 -- See description for info about GEN_K,GEN_R and GEN_A.

                GEN_A        : in std_logic;                      -- Generate A character for MSBYTE
                GEN_K        : in std_logic_vector(0 to 3);       -- Generate K character for selected bytes.
                GEN_R        : in std_logic_vector(0 to 3);       -- Generate R character for selected bytes.
                GEN_V        : in std_logic_vector(0 to 3);       -- Generate Ver data character on selected bytes.

        -- Lane Init SM Interface

                GEN_SP       : in std_logic;                      -- Generate SP pattern.
                GEN_SPA      : in std_logic;                      -- Generate SPA pattern.

        -- GTX Interface

                TX_CHAR_IS_K : out std_logic_vector(3 downto 0);  -- Transmit TX_DATA as a control character.
                TX_DATA      : out std_logic_vector(31 downto 0); -- Data to GTX for transmission to channel partner.

        -- System Interface

                USER_CLK     : in std_logic;                       -- Clock for all non-GTX Aurora Logic.
                RESET        : in std_logic
             );

    end component;


    component system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX

        port (

        -- Lane Init SM Interface

                ENABLE_ERR_DETECT : in std_logic;
                HARD_ERR_RESET    : out std_logic;

        -- Global Logic Interface

                HARD_ERR          : out std_logic;

        -- GTX Interface

                TX_K_ERR            : in std_logic_vector(1 downto 0);
                TX_BUF_ERR          : in std_logic;

        -- System Interface

                USER_CLK            : in std_logic

             );

    end component;


begin

-- Main Body of Code --

    -- Lane Initialization state machine --

    system_aurora_8b10b_0_0_tx_lane_init_simplex_sm_i : system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE

        port map (

        -- GTX Interface

                    GTX_TX_RESET        => GTX_TX_RESET,

        -- Symbol Generator Interface

                    GEN_SP              => gen_sp_i,

        -- Error Detection Logic Interface

                    HARD_ERR_RESET    => hard_err_reset_i,
                    ENABLE_ERR_DETECT => enable_err_detect_i,

        -- Sideband Signals

                    TX_ALIGNED          => TX_ALIGNED,

        -- Global Logic Interface

                    LANE_UP             => LANE_UP,


        -- System Interface

                    USER_CLK            => USER_CLK,
                    RESET               => RESET

                 );


    -- Symbol Generation module --

    -- Reorder TX_DATA and TX_CHAR_IS_K to handle GTX byte ordering.
    TX_DATA      <= tx_data_i(7 downto 0) & tx_data_i(15 downto 8) &
                    tx_data_i(23 downto 16) & tx_data_i(31 downto 24);

    TX_CHAR_IS_K <= tx_char_is_k_i(0) & tx_char_is_k_i(1) &
                    tx_char_is_k_i(2) & tx_char_is_k_i(3);

    -- The Simplex module does not use SPA, therefore gen_spa is tied low.

    gen_spa_c    <= '0';


    system_aurora_8b10b_0_0_sym_gen_4byte_i : system_aurora_8b10b_0_0_SYM_GEN_4BYTE

        port map (

        -- TX_LL Interface

                    GEN_SCP      => GEN_SCP,
                    GEN_ECP      => GEN_ECP,
                    GEN_PAD      => GEN_PAD,
                    TX_PE_DATA   => TX_PE_DATA,
                    TX_PE_DATA_V => TX_PE_DATA_V,
                    GEN_CC       => GEN_CC,

        -- Global Logic Interface

                    GEN_A        => GEN_A,
                    GEN_K        => GEN_K,
                    GEN_R        => GEN_R,
                    GEN_V        => GEN_V,

        -- Lane Init SM Interface

                    GEN_SP       => gen_sp_i,
                    GEN_SPA      => gen_spa_c,

        -- GTX Interface

                    TX_CHAR_IS_K => tx_char_is_k_i,
                    TX_DATA      => tx_data_i,

        -- System Interface

                    USER_CLK     => USER_CLK,
                    RESET        => RESET_SYMGEN

                 );


    -- Error Detection module --

    -- We tie off tx_k_err instead of connecting it to the GTX.  TX_K_ERR is considered
    -- an obsolete signal, and tests with deliberate errors to check far side error detection.

    tx_k_err_c <= "00";

    system_aurora_8b10b_0_0_tx_err_detect_simplex_i : system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX

        port map (

        -- Lane Init SM Interface

                    ENABLE_ERR_DETECT => enable_err_detect_i,
                    HARD_ERR_RESET    => hard_err_reset_i,

        -- Global Logic Interface

                    HARD_ERR          => HARD_ERR,

        -- GTX Interface

                    TX_K_ERR            => tx_k_err_c,
                    TX_BUF_ERR          => TX_BUF_ERR,

        -- System Interface

                    USER_CLK            => USER_CLK

                 );


end MAPPED;
