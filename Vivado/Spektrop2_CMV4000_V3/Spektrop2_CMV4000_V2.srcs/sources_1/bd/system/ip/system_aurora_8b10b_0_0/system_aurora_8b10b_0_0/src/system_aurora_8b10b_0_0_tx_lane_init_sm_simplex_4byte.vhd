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
--  TX_LANE_INIT_SM_SIMPLEX_4BYTE
--
--
--
--  Description: This logic manages the initialization of the GTX in simplex
--               4-byte mode.  It consists of a small state machine, counters
--               for tracking the progress of initializtion, and some
--               additional support logic.
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use WORK.AURORA_PKG.all;

-- synthesis translate_off
library UNISIM;
use UNISIM.all;
-- synthesis translate_on

entity system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE is

    port (

    -- GTX Interface

            GTX_TX_RESET        : out std_logic;  -- Reset the TX side of the GTX.

    -- Symbol Generator Interface

            GEN_SP              : out std_logic;  -- Generate SP symbol

    -- Error Detection Logic Interface

            ENABLE_ERR_DETECT : out std_logic;  -- Turn on Soft Error detection.
            HARD_ERR_RESET    : in std_logic;   -- Reset lane due to hard error.

    -- Sideband Signals
            TX_ALIGNED          : in std_logic;   -- RX lane partner is aligned

    -- Global Logic Interface

            LANE_UP             : out std_logic;  -- Lane is initialized.


    -- System Interface

            USER_CLK            : in std_logic;   -- Clock for all non-GTX Aurora logic.
            RESET               : in std_logic    -- Reset Aurora Lane.

         );

end system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE;

architecture RTL of system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations

    signal GTX_TX_RESET_Buffer        : std_logic;
    signal GEN_SP_Buffer              : std_logic;
    signal ENABLE_ERR_DETECT_Buffer : std_logic;
    signal LANE_UP_Buffer             : std_logic;

-- Internal Register Declarations
    -- counter1 is intitialized to ensure that the counter comes up at some value other than X.
    -- We have tried different initial values and it does not matter what the value is, as long
    -- as it is not X since X breaks the state machine
    signal counter1_r                 : unsigned(0 to 3) := "0001";

-- Registering sideband signal follows.  This signal is
-- set to '1' for simulation.  We know that the circuit
-- will work if it is '1' at start-up so we test for
-- the worst case.

    signal tx_aligned_r               : std_logic := '1';

-- FSM states, encoded for one-hot implementation

   signal begin_r                     : std_logic;  -- Starting State
   signal rst_r                       : std_logic;  -- Reset GTXs
   signal align_r                     : std_logic;  -- Align SERDES
   signal ready_r                     : std_logic;  -- Lane ready for Bonding/Verification

-- Wire Declarations

    signal send_sp_c                  : std_logic;
    signal count_8d_done_r            : std_logic;

    signal next_begin_c               : std_logic;
    signal next_rst_c                 : std_logic;
    signal next_align_c               : std_logic;
    signal next_ready_c               : std_logic;

    component FDR

        port (
                D : in std_logic;
                C : in std_logic;
                R : in std_logic;
                Q : out std_logic
             );

    end component;

begin

    GTX_TX_RESET        <=  GTX_TX_RESET_Buffer;
    GEN_SP              <=  GEN_SP_Buffer;
    ENABLE_ERR_DETECT <=  ENABLE_ERR_DETECT_Buffer;
    LANE_UP             <=  LANE_UP_Buffer;

-- Main Body of Code

    -- Main state machine for managing initialization --

    -- State registers

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if ((RESET or HARD_ERR_RESET ) = '1') then
               
                begin_r <= '1' after DLY;
                rst_r   <= '0' after DLY;
                align_r <= '0' after DLY;
                ready_r <= '0' after DLY;

            else

                begin_r <= next_begin_c after DLY;
                rst_r   <= next_rst_c after DLY;
                align_r <= next_align_c after DLY;
                ready_r <= next_ready_c after DLY;

            end if;

        end if;

    end process;


    -- Next state logic
   
    next_begin_c <= '0';
    next_rst_c   <= begin_r or
                    (rst_r and not count_8d_done_r);
    next_align_c <= (rst_r and count_8d_done_r) or
                    (align_r and not tx_aligned_r);

    next_ready_c <= (align_r and tx_aligned_r) or
                    ready_r;


   -- Registering the Align sideband input

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            tx_aligned_r <= TX_ALIGNED;

        end if;

    end process;


    -- Output Logic

    -- Hold TX_RESET to GTX when in the RST state.

    GTX_TX_RESET_Buffer <= rst_r;

    -- LANE_UP is asserted when in the READY state.  The FDR flop is
    -- instantiated to ensure that the LANE_UP signal is initialised
    -- to '0' at start-up.

    lane_up_flop_i : FDR

    port map (
                D => ready_r,
                C => USER_CLK,
                R => RESET,
                Q => LANE_UP_Buffer
             );


    -- ENABLE_ERR_DETECT is asserted when in the ACK or READY states.
    -- Asserting it earlier will result in too many false errors.  After
    -- it is asserted, higher level modules can respond to Hard Errors
    -- by resetting the Aurora Lane.  We register the signal before it
    -- leaves the lane_init_sm submodule.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            ENABLE_ERR_DETECT_Buffer <=  ready_r after DLY;

        end if;

    end process;


    -- The Aurora Lane should transmit SP sequences when not ready.

    send_sp_c <= not ready_r;


    -- Transmission Logic for SP sequences --

    -- Request transmission of the commas needed for the SP and SPA sequences.
    -- These commas are sent on the MSByte of the lane on all odd bytes.

    GEN_SP_Buffer <= send_sp_c;


    -- Counter 1, for reset cycles, align cycles and realign cycles --
    -- Core of the counter

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if ((RESET = '1') or (HARD_ERR_RESET = '1')) then

                counter1_r <= "0001" after DLY;

            else

                counter1_r <= counter1_r + "0001" after DLY;

            end if;

        end if;

    end process;


    -- Assert count_8d_done_r when bit 4 in the register first goes high.

    count_8d_done_r <= std_bool(counter1_r(0) = '1');

end RTL;
