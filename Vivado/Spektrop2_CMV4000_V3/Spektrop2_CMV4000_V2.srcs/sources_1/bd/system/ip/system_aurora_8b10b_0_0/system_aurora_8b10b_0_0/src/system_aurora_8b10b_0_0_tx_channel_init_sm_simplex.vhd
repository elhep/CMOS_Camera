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
--  TX_CHANNEL_INIT_SM_SIMPLEX
--
--
--
--  Description: the TX_CHANNEL_INIT_SM_SIMPLEX module is a state machine for managing channel
--               bonding and verification.
--
--               The channel init state machine is reset until the lane up signals
--               of all the lanes that constitute the channel are asserted.  It then
--               requests channel bonding until the lanes have been bonded and
--               checks to make sure the bonding was successful.  Channel bonding is
--               skipped if there is only one lane in the channel.  If bonding is
--               unsuccessful, the lanes are reset.The RX side indicates that bonding is complete
--               using the sideband signal TX_BONDED.
--
--               After the bonding phase is complete, the state machine sends
--               verification sequences through the channel until it is clear that
--               the channel is ready to be used.  If verification is successful,
--               the CHANNEL_UP signal is asserted.  If it is unsuccessful, the
--               lanes are reset. Verification is complete when the RX lane partner asserts the
--               sideband TX_VERIFIED signal.
--
--
--               After CHANNEL_UP goes high, the state machine is quiescent, and will
--               reset only if one of the lanes goes down, a hard error is detected, or
--               a general reset is requested.
--
--               This module supports 1 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use WORK.AURORA_PKG.all;

-- synthesis translate_off

library UNISIM;
use UNISIM.all;

-- synthesis translate_on

entity system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX is

    generic (
                 WATCHDOG_TIMEOUT   : integer := 15
            );

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

end system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX;

architecture RTL of system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

signal RESET_LANES_Buffer  : std_logic;
    signal CHANNEL_UP_Buffer   : std_logic;
    signal GEN_VER_Buffer      : std_logic;

-- Internal Register Declarations --

    signal reset_w                 : std_logic;
    signal free_count_done_w       : std_logic;
    signal verify_watchdog_r       : std_logic_vector(0 to 15);

    signal tx_verify_r             : std_logic := '1';
    signal free_count_r            : std_logic_vector(0 to WATCHDOG_TIMEOUT-1);   

    -- State registers

    signal wait_for_lane_up_r      : std_logic;
    signal verify_r                : std_logic;
    signal ready_r                 : std_logic;

    -- FF for timing closure
    signal ready_r2                : std_logic;

-- Wire Declarations --

    signal verify_watchdog_done_r  : std_logic;
    signal reset_lanes_c           : std_logic;

    -- Next state signals

    signal next_verify_c           : std_logic;
    signal next_ready_c            : std_logic;

    -- VHDL utility signals

    signal  tied_to_vcc        : std_logic;
    signal  tied_to_gnd        : std_logic;

-- Component Declarations

    component FD

    -- synthesis translate_off

        generic (INIT : bit := '0');

    -- synthesis translate_on

        port (

                Q : out std_ulogic;
                C : in  std_ulogic;
                D : in  std_ulogic

             );

    end component;

begin

    RESET_LANES  <= RESET_LANES_Buffer;
    CHANNEL_UP   <= CHANNEL_UP_Buffer;
    GEN_VER      <= GEN_VER_Buffer;

    tied_to_vcc  <= '1';
    tied_to_gnd  <= '0';

    reset_w      <= RESET or RESET_CHANNEL;

-- Main Body of Code --

    -- Main state machine for bonding and verification --

    -- State registers

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if ((RESET or RESET_CHANNEL) = '1') then

                wait_for_lane_up_r <= '1' after DLY;
                verify_r           <= '0' after DLY;
                ready_r            <= '0' after DLY;

            else

                wait_for_lane_up_r <= '0' after DLY;
                verify_r           <= next_verify_c after DLY;
                ready_r            <= next_ready_c after DLY;

            end if;

        end if;

    end process;


    -- Next state logic

    next_verify_c       <= wait_for_lane_up_r or
                           (verify_r and not tx_verify_r);

    next_ready_c        <= (verify_r and tx_verify_r) or
                           ready_r;


    -- Output Logic
    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

          ready_r2 <= ready_r after DLY;

        end if;

    end process;

    -- Channel up is high as long as the Global Logic is in the ready state.

    tx_channel_up_i : FD

        port map (
                    D => ready_r2,
                    C => USER_CLK,
                    Q => CHANNEL_UP_Buffer
                 );

   -- Register Sideband signals

    process (USER_CLK)
    begin
        if (USER_CLK 'event and USER_CLK = '1') then
          tx_verify_r <= TX_VERIFY after DLY;
        end if;
    end process;


    -- Generate the Verification sequence when in the verify state.

    GEN_VER_Buffer <= verify_r;


    -- Channel Reset --

    -- Some problems during channel bonding and verification require the lanes to
    -- be reset.  When this happens, we assert the Reset Lanes signal, which gets
    -- sent to all Aurora Lanes.  When the Aurora Lanes reset, their LANE_UP signals
    -- go down.  This causes the Channel Error Detector to assert the Reset Channel
    -- signal.

    reset_lanes_c <= (verify_r and verify_watchdog_done_r) or
                     (RESET_CHANNEL and not wait_for_lane_up_r) or
                     RESET;

    reset_lanes_flop_i : FD

    -- synthesis translate_off

        generic map (INIT => '1')

    -- synthesis translate_on

        port map (

                    D => reset_lanes_c,
                    C => USER_CLK,
                    Q => RESET_LANES_Buffer

                 );


    -- Watchdog timers --

    process (USER_CLK)
    begin
      if (USER_CLK 'event and USER_CLK = '1') then
        if ((RESET or RESET_CHANNEL) = '1') then
          free_count_r <= (others => '1') after DLY;
        else 
          free_count_r <= free_count_r - '1' after DLY;
        end if;
      end if;
    end process;


   free_count_done_w <= (std_bool(free_count_r = 0));

    -- We use the free running count as a CE for the verify watchdog.  The
    -- count runs continuously so the watchdog will vary between a count of 4096
    -- and 3840 cycles - acceptable for this application.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if ((free_count_done_w or not verify_r) = '1') then

                verify_watchdog_r <= verify_r & verify_watchdog_r(0 to 14) after DLY;

            end if;

        end if;

    end process;


    verify_watchdog_done_r <= verify_watchdog_r(15);


end RTL;
