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
--  TX_ERR_DETECT_SIMPLEX
--
--
--
--  Description : The TX_ERR_DETECT_SIMPLEX module monitors the V5 to detect hard
--                errors.  All errors are reported to the Global Logic Interface.
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use WORK.AURORA_PKG.all;

entity system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX is

    port (

    -- Lane Init SM Interface

            ENABLE_ERR_DETECT : in std_logic;
            HARD_ERR_RESET    : out std_logic;

    -- Global Logic Interface

            HARD_ERR          : out std_logic;

    -- V5 Interface

            TX_K_ERR            : in std_logic_vector(1 downto 0);
            TX_BUF_ERR          : in std_logic;

    -- System Interface

            USER_CLK            : in std_logic

         );

end system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX;

architecture RTL of system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

    signal HARD_ERR_RESET_Buffer : std_logic;
    signal HARD_ERR_Buffer       : std_logic;

-- Internal Register Declarations --

    signal hard_err_flop_r : std_logic;  -- Traveling flop for timing.

begin

    HARD_ERR_RESET <= HARD_ERR_RESET_Buffer;
    HARD_ERR       <= HARD_ERR_Buffer;

-- Main Body of Code --

    -- Detect Hard Errors

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (ENABLE_ERR_DETECT = '1') then

                hard_err_flop_r <= std_bool(TX_K_ERR /= "00") or
                                     TX_BUF_ERR;
                HARD_ERR_Buffer <= hard_err_flop_r after DLY;

            else

                hard_err_flop_r <= '0' after DLY;
                HARD_ERR_Buffer <= '0' after DLY;

            end if;

        end if;

    end process;


    -- Assert hard error reset when there is a hard error.  This assignment
    -- just renames the two fanout branches of the hard error signal.

    HARD_ERR_RESET_Buffer <= hard_err_flop_r;

end RTL;
