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
--  TX_CHANNEL_ERR_DETECT_SIMPLEX
--
--
--  Description: the TX_CHANNEL_ERR_DETECT_SIMPLEX module monitors the error signals
--               from the Aurora Lanes in the channel.  If one or more errors
--               are detected, the error is reported as a channel error.  If
--               a hard error is detected, it sends a message to the channel
--               initialization state machine to reset the channel.
--
--               This module supports 1 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX is

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

end system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX;

architecture RTL of system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

    signal CHANNEL_HARD_ERR_Buffer : std_logic := '1';
    signal RESET_CHANNEL_Buffer      : std_logic := '1';

-- Internal Register Declarations --

signal hard_err_r : std_logic;
signal lane_up_r  : std_logic;

-- Wire Declarations --

    signal channel_hard_err_c : std_logic;
    signal reset_channel_c      : std_logic;

begin

    CHANNEL_HARD_ERR <= CHANNEL_HARD_ERR_Buffer;
    RESET_CHANNEL      <= RESET_CHANNEL_Buffer;

-- Main Body of Code --

    -- Register all of the incoming error signals.  This is neccessary for timing.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then
            hard_err_r <= HARD_ERR after DLY;
        end if;
    end process;


    -- Assert Channel hard error if any of the hard error signals are asserted.

    channel_hard_err_c <= hard_err_r;

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            CHANNEL_HARD_ERR_Buffer <= channel_hard_err_c after DLY;

        end if;

    end process;


    -- FF stage added for timing closure
    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            lane_up_r <= LANE_UP after DLY;

        end if;

    end process;

    -- "reset_channel_c" is asserted when any of the LANE_UP signals are low.

    reset_channel_c <= not lane_up_r;

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            RESET_CHANNEL_Buffer <= reset_channel_c or POWER_DOWN after DLY;

        end if;

    end process;

end RTL;
