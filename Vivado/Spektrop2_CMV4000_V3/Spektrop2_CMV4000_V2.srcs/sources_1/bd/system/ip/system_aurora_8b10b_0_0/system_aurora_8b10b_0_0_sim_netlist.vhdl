-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Mar  6 00:02:15 2018
-- Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V3/Spektrop2_CMV4000_V2.srcs/sources_1/bd/system/ip/system_aurora_8b10b_0_0/system_aurora_8b10b_0_0_sim_netlist.vhdl
-- Design      : system_aurora_8b10b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_AXI_TO_LL is
  port (
    idle_r_reg : out STD_LOGIC;
    sof_to_data_r_reg : out STD_LOGIC;
    new_pkt_r : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_AXI_TO_LL : entity is "system_aurora_8b10b_0_0_AXI_TO_LL";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_AXI_TO_LL;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_AXI_TO_LL is
  signal \^idle_r_reg\ : STD_LOGIC;
begin
  idle_r_reg <= \^idle_r_reg\;
new_pkt_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => new_pkt_r,
      Q => \^idle_r_reg\,
      R => '0'
    );
sof_to_eof_1_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^idle_r_reg\,
      I1 => S_AXI_TX_TVALID,
      I2 => tx_dst_rdy,
      O => sof_to_data_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_IDLE_AND_VER_GEN is
  port (
    \gen_v_r_reg[1]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_a_i : out STD_LOGIC;
    \gen_k_r_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_r_r_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gen_k_flop_0_i_0 : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    D0_out : in STD_LOGIC;
    gen_ver_i : in STD_LOGIC;
    tx_reset_simplex_r : in STD_LOGIC;
    SYSTEM_RESET_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_IDLE_AND_VER_GEN : entity is "system_aurora_8b10b_0_0_IDLE_AND_VER_GEN";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_IDLE_AND_VER_GEN;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_IDLE_AND_VER_GEN is
  signal D : STD_LOGIC;
  signal D0_in : STD_LOGIC;
  signal D1_in : STD_LOGIC;
  signal D1_out : STD_LOGIC;
  signal D2_out : STD_LOGIC;
  signal down_count_r : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \down_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \down_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \^gen_k_flop_0_i_0\ : STD_LOGIC;
  signal gen_k_flop_1_i_i_1_n_0 : STD_LOGIC;
  signal gen_k_flop_2_i_i_1_n_0 : STD_LOGIC;
  signal gen_k_flop_3_i_i_1_n_0 : STD_LOGIC;
  signal gen_r_flop_0_i_i_1_n_0 : STD_LOGIC;
  signal \lfsr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal prev_cycle_gen_ver_r : STD_LOGIC;
  signal ver_counter_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \down_count_r[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \down_count_r[1]_i_1\ : label is "soft_lutpair28";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_a_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_a_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_2_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_3_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_3_i : label is "FD";
  attribute SOFT_HLUTNM of gen_k_flop_3_i_i_1 : label is "soft_lutpair28";
  attribute BOX_TYPE of gen_r_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_2_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_3_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_3_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_2_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_3_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_3_i : label is "FD";
  attribute SOFT_HLUTNM of \lfsr_reg[3]_i_1\ : label is "soft_lutpair27";
  attribute BOX_TYPE of ver_counter_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_i : label is "SRL16";
  attribute srl_name : string;
  attribute srl_name of ver_counter_i : label is "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/idle_and_ver_gen_i/ver_counter_i ";
begin
  gen_k_flop_0_i_0 <= \^gen_k_flop_0_i_0\;
DID_VER_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => ver_counter_c,
      Q => \^gen_k_flop_0_i_0\,
      R => '0'
    );
\down_count_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D0_in,
      I1 => \lfsr_reg_reg_n_0_[3]\,
      O => \down_count_r[0]_i_1_n_0\
    );
\down_count_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \lfsr_reg_reg_n_0_[3]\,
      I1 => D0_in,
      O => \down_count_r[1]_i_1_n_0\
    );
\down_count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \down_count_r[0]_i_1_n_0\,
      Q => down_count_r(0),
      R => '0'
    );
\down_count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \down_count_r[1]_i_1_n_0\,
      Q => down_count_r(1),
      R => '0'
    );
\down_count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_3_i_i_1_n_0,
      Q => down_count_r(2),
      R => '0'
    );
\downcounter_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CCC2"
    )
        port map (
      I0 => down_count_r(0),
      I1 => \downcounter_r_reg_n_0_[0]\,
      I2 => \downcounter_r_reg_n_0_[2]\,
      I3 => \downcounter_r_reg_n_0_[1]\,
      I4 => tx_reset_simplex_r,
      I5 => SYSTEM_RESET_reg,
      O => \downcounter_r[0]_i_1_n_0\
    );
\downcounter_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F00E"
    )
        port map (
      I0 => down_count_r(1),
      I1 => \downcounter_r_reg_n_0_[0]\,
      I2 => \downcounter_r_reg_n_0_[2]\,
      I3 => \downcounter_r_reg_n_0_[1]\,
      I4 => tx_reset_simplex_r,
      I5 => SYSTEM_RESET_reg,
      O => \downcounter_r[1]_i_1_n_0\
    );
\downcounter_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003332"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => down_count_r(2),
      I4 => tx_reset_simplex_r,
      I5 => SYSTEM_RESET_reg,
      O => \downcounter_r[2]_i_1_n_0\
    );
\downcounter_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \downcounter_r[0]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[0]\,
      R => '0'
    );
\downcounter_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \downcounter_r[1]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[1]\,
      R => '0'
    );
\downcounter_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \downcounter_r[2]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[2]\,
      R => '0'
    );
gen_a_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D1_out,
      Q => gen_a_i,
      R => '0'
    );
gen_a_flop_0_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => \^gen_k_flop_0_i_0\,
      I4 => gen_ver_i,
      O => D1_out
    );
gen_k_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D2_out,
      Q => \gen_k_r_reg[0]\(3),
      R => '0'
    );
gen_k_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5D5D5D5D5D5C0"
    )
        port map (
      I0 => p_1_in,
      I1 => gen_ver_i,
      I2 => \^gen_k_flop_0_i_0\,
      I3 => \downcounter_r_reg_n_0_[1]\,
      I4 => \downcounter_r_reg_n_0_[2]\,
      I5 => \downcounter_r_reg_n_0_[0]\,
      O => D2_out
    );
gen_k_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_1_i_i_1_n_0,
      Q => \gen_k_r_reg[0]\(2),
      R => '0'
    );
gen_k_flop_1_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D1_in,
      O => gen_k_flop_1_i_i_1_n_0
    );
gen_k_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_2_i_i_1_n_0,
      Q => \gen_k_r_reg[0]\(1),
      R => '0'
    );
gen_k_flop_2_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D0_in,
      O => gen_k_flop_2_i_i_1_n_0
    );
gen_k_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_3_i_i_1_n_0,
      Q => \gen_k_r_reg[0]\(0),
      R => '0'
    );
gen_k_flop_3_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lfsr_reg_reg_n_0_[3]\,
      O => gen_k_flop_3_i_i_1_n_0
    );
gen_r_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_r_flop_0_i_i_1_n_0,
      Q => \gen_r_r_reg[0]\(3),
      R => '0'
    );
gen_r_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE00FE00FE00"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => p_1_in,
      I4 => gen_ver_i,
      I5 => \^gen_k_flop_0_i_0\,
      O => gen_r_flop_0_i_i_1_n_0
    );
gen_r_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D1_in,
      Q => \gen_r_r_reg[0]\(2),
      R => '0'
    );
gen_r_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D0_in,
      Q => \gen_r_r_reg[0]\(1),
      R => '0'
    );
gen_r_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \lfsr_reg_reg_n_0_[3]\,
      Q => \gen_r_r_reg[0]\(0),
      R => '0'
    );
gen_v_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D0_out,
      Q => \gen_v_r_reg[1]\(2),
      R => '0'
    );
gen_v_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D0_out,
      Q => \gen_v_r_reg[1]\(1),
      R => '0'
    );
gen_v_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D0_out,
      Q => \gen_v_r_reg[1]\(0),
      R => '0'
    );
\lfsr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"32CD"
    )
        port map (
      I0 => D0_in,
      I1 => \lfsr_reg_reg_n_0_[3]\,
      I2 => D1_in,
      I3 => p_1_in,
      O => p_4_out(0)
    );
\lfsr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D1_in,
      Q => p_1_in,
      R => '0'
    );
\lfsr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D0_in,
      Q => D1_in,
      R => '0'
    );
\lfsr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \lfsr_reg_reg_n_0_[3]\,
      Q => D0_in,
      R => '0'
    );
\lfsr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_4_out(0),
      Q => \lfsr_reg_reg_n_0_[3]\,
      R => '0'
    );
prev_cycle_gen_ver_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_ver_i,
      Q => prev_cycle_gen_ver_r,
      R => '0'
    );
ver_counter_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => D,
      Q => ver_counter_c
    );
ver_counter_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => prev_cycle_gen_ver_r,
      I1 => \^gen_k_flop_0_i_0\,
      I2 => gen_ver_i,
      O => D
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_STANDARD_CC_MODULE is
  port (
    DO_CC_I : out STD_LOGIC;
    SYSTEM_RESET_reg : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_STANDARD_CC_MODULE : entity is "system_aurora_8b10b_0_0_STANDARD_CC_MODULE";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_STANDARD_CC_MODULE;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_STANDARD_CC_MODULE is
  signal DO_CC_i_1_n_0 : STD_LOGIC;
  signal cc_count_r : STD_LOGIC_VECTOR ( 5 to 5 );
  signal cc_idle_count_done_c : STD_LOGIC;
  signal count_13d_flop_r_reg_r_n_0 : STD_LOGIC;
  signal \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\ : STD_LOGIC;
  signal count_13d_srl_r_reg_gate_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_0_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_1_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_2_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_3_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_4_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_5_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_6_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_7_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_8_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_9_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_n_0 : STD_LOGIC;
  signal count_16d_flop_r : STD_LOGIC;
  signal count_16d_flop_r_i_1_n_0 : STD_LOGIC;
  signal count_16d_srl_r0 : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal count_24d_flop_r : STD_LOGIC;
  signal count_24d_flop_r_i_1_n_0 : STD_LOGIC;
  signal count_24d_srl_r0 : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0\ : STD_LOGIC;
  signal \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0\ : STD_LOGIC;
  signal prepare_count_r_reg_gate_n_0 : STD_LOGIC;
  signal reset_r : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "U0/\standard_cc_module_i/count_13d_srl_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "U0/\standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 ";
  attribute srl_bus_name of \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1\ : label is "U0/\standard_cc_module_i/prepare_count_r_reg ";
  attribute srl_name of \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1\ : label is "U0/\standard_cc_module_i/prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 ";
begin
DO_CC_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => reset_r,
      I1 => p_3_out(2),
      I2 => p_2_in(1),
      I3 => p_2_in(0),
      I4 => cc_count_r(5),
      O => DO_CC_i_1_n_0
    );
DO_CC_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => DO_CC_i_1_n_0,
      Q => DO_CC_I,
      R => SYSTEM_RESET_reg
    );
\cc_count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_3_out(2),
      Q => p_2_in(1),
      R => SYSTEM_RESET_reg
    );
\cc_count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(0),
      R => SYSTEM_RESET_reg
    );
\cc_count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_2_in(0),
      Q => cc_count_r(5),
      R => SYSTEM_RESET_reg
    );
count_13d_flop_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => '1',
      Q => count_13d_flop_r_reg_r_n_0,
      R => SYSTEM_RESET_reg
    );
\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\,
      Q => \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      R => '0'
    );
\count_13d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_gate_n_0,
      Q => count_16d_srl_r0,
      R => SYSTEM_RESET_reg
    );
\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\,
      Q => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\
    );
\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_16d_srl_r0,
      I1 => reset_r,
      O => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\
    );
count_13d_srl_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      I1 => count_13d_srl_r_reg_r_9_n_0,
      O => count_13d_srl_r_reg_gate_n_0
    );
count_13d_srl_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_flop_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_0_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_0_n_0,
      Q => count_13d_srl_r_reg_r_1_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_1_n_0,
      Q => count_13d_srl_r_reg_r_2_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_2_n_0,
      Q => count_13d_srl_r_reg_r_3_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_3_n_0,
      Q => count_13d_srl_r_reg_r_4_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_4_n_0,
      Q => count_13d_srl_r_reg_r_5_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_5_n_0,
      Q => count_13d_srl_r_reg_r_6_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_6_n_0,
      Q => count_13d_srl_r_reg_r_7_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_7_n_0,
      Q => count_13d_srl_r_reg_r_8_n_0,
      R => SYSTEM_RESET_reg
    );
count_13d_srl_r_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_8_n_0,
      Q => count_13d_srl_r_reg_r_9_n_0,
      R => SYSTEM_RESET_reg
    );
count_16d_flop_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => count_16d_srl_r0,
      I2 => reset_r,
      I3 => count_16d_flop_r,
      O => count_16d_flop_r_i_1_n_0
    );
count_16d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_16d_flop_r_i_1_n_0,
      Q => count_16d_flop_r,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => count_16d_flop_r,
      Q => \count_16d_srl_r_reg_n_0_[0]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[9]\,
      Q => \count_16d_srl_r_reg_n_0_[10]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[10]\,
      Q => \count_16d_srl_r_reg_n_0_[11]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[11]\,
      Q => \count_16d_srl_r_reg_n_0_[12]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[12]\,
      Q => \count_16d_srl_r_reg_n_0_[13]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[13]\,
      Q => \count_16d_srl_r_reg_n_0_[14]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[0]\,
      Q => \count_16d_srl_r_reg_n_0_[1]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[1]\,
      Q => \count_16d_srl_r_reg_n_0_[2]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[2]\,
      Q => \count_16d_srl_r_reg_n_0_[3]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[3]\,
      Q => \count_16d_srl_r_reg_n_0_[4]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[4]\,
      Q => \count_16d_srl_r_reg_n_0_[5]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[5]\,
      Q => \count_16d_srl_r_reg_n_0_[6]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[6]\,
      Q => \count_16d_srl_r_reg_n_0_[7]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[7]\,
      Q => \count_16d_srl_r_reg_n_0_[8]\,
      R => SYSTEM_RESET_reg
    );
\count_16d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[8]\,
      Q => \count_16d_srl_r_reg_n_0_[9]\,
      R => SYSTEM_RESET_reg
    );
count_24d_flop_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF80"
    )
        port map (
      I0 => \count_24d_srl_r_reg_n_0_[10]\,
      I1 => \count_16d_srl_r_reg_n_0_[14]\,
      I2 => count_16d_srl_r0,
      I3 => reset_r,
      I4 => count_24d_flop_r,
      O => count_24d_flop_r_i_1_n_0
    );
count_24d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_24d_flop_r_i_1_n_0,
      Q => count_24d_flop_r,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => count_16d_srl_r0,
      O => count_24d_srl_r0
    );
\count_24d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => count_24d_flop_r,
      Q => \count_24d_srl_r_reg_n_0_[0]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[9]\,
      Q => \count_24d_srl_r_reg_n_0_[10]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[0]\,
      Q => \count_24d_srl_r_reg_n_0_[1]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[1]\,
      Q => \count_24d_srl_r_reg_n_0_[2]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[2]\,
      Q => \count_24d_srl_r_reg_n_0_[3]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[3]\,
      Q => \count_24d_srl_r_reg_n_0_[4]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[4]\,
      Q => \count_24d_srl_r_reg_n_0_[5]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[5]\,
      Q => \count_24d_srl_r_reg_n_0_[6]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[6]\,
      Q => \count_24d_srl_r_reg_n_0_[7]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[7]\,
      Q => \count_24d_srl_r_reg_n_0_[8]\,
      R => SYSTEM_RESET_reg
    );
\count_24d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[8]\,
      Q => \count_24d_srl_r_reg_n_0_[9]\,
      R => SYSTEM_RESET_reg
    );
\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => cc_idle_count_done_c,
      Q => \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0\
    );
\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \count_24d_srl_r_reg_n_0_[10]\,
      I1 => \count_16d_srl_r_reg_n_0_[14]\,
      I2 => count_16d_srl_r0,
      O => cc_idle_count_done_c
    );
\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0\,
      Q => \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0\,
      R => '0'
    );
\prepare_count_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => prepare_count_r_reg_gate_n_0,
      Q => p_3_out(2),
      R => SYSTEM_RESET_reg
    );
prepare_count_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0\,
      I1 => count_13d_srl_r_reg_r_2_n_0,
      O => prepare_count_r_reg_gate_n_0
    );
reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => SYSTEM_RESET_reg,
      Q => reset_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_SYM_GEN_4BYTE is
  port (
    TXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GEN_SP : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    GEN_ECP_Buffer : in STD_LOGIC;
    GEN_SCP_Buffer : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_PAD_Buffer_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_v_flop_1_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_r_flop_0_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gen_k_flop_0_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_SYM_GEN_4BYTE : entity is "system_aurora_8b10b_0_0_SYM_GEN_4BYTE";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_SYM_GEN_4BYTE;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_SYM_GEN_4BYTE is
  signal \^txdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \TX_CHAR_IS_K_Buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal TX_CHAR_IS_K_Buffer_reg0 : STD_LOGIC;
  signal TX_CHAR_IS_K_Buffer_reg03_out : STD_LOGIC;
  signal TX_CHAR_IS_K_Buffer_reg08_out : STD_LOGIC;
  signal \TX_DATA_Buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[0]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[12]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[16]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[17]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[18]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[18]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[19]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[20]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[20]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[21]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[22]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[23]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[23]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[23]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[23]_i_4_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[24]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[25]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[26]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[27]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[28]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[29]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[30]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[30]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[30]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[31]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[31]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[4]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[6]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[7]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[7]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal TX_DATA_Buffer_reg0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gen_a_r : STD_LOGIC;
  signal gen_cc_r : STD_LOGIC;
  signal \gen_ecp_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_k_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pad_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_r_r_reg_n_0_[3]\ : STD_LOGIC;
  signal gen_sp_r : STD_LOGIC;
  signal \gen_v_r_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in11_in : STD_LOGIC;
  signal p_1_in16_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \tx_pe_data_v_r_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K_Buffer[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K_Buffer[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K_Buffer[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[12]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[15]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[16]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[19]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[20]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[23]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[23]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[25]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[4]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[7]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[8]_i_1\ : label is "soft_lutpair22";
begin
  TXDATA(31 downto 0) <= \^txdata\(31 downto 0);
\TX_CHAR_IS_K_Buffer[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF0B"
    )
        port map (
      I0 => \gen_pad_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => \gen_v_r_reg_n_0_[3]\,
      I3 => gen_cc_r,
      I4 => gen_sp_r,
      O => TX_CHAR_IS_K_Buffer_reg0
    );
\TX_CHAR_IS_K_Buffer[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F1"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => gen_cc_r,
      I3 => gen_sp_r,
      O => TX_CHAR_IS_K_Buffer_reg03_out
    );
\TX_CHAR_IS_K_Buffer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF000B"
    )
        port map (
      I0 => p_0_in12_in,
      I1 => p_1_in11_in,
      I2 => gen_sp_r,
      I3 => p_1_in5_in,
      I4 => gen_cc_r,
      O => TX_CHAR_IS_K_Buffer_reg08_out
    );
\TX_CHAR_IS_K_Buffer[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => gen_cc_r,
      I1 => p_1_in11_in,
      O => \TX_CHAR_IS_K_Buffer[3]_i_1_n_0\
    );
\TX_CHAR_IS_K_Buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => TX_CHAR_IS_K_Buffer_reg0,
      Q => TXCHARISK(3),
      R => '0'
    );
\TX_CHAR_IS_K_Buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => TX_CHAR_IS_K_Buffer_reg03_out,
      Q => TXCHARISK(2),
      R => '0'
    );
\TX_CHAR_IS_K_Buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => TX_CHAR_IS_K_Buffer_reg08_out,
      Q => TXCHARISK(1),
      R => '0'
    );
\TX_CHAR_IS_K_Buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \TX_CHAR_IS_K_Buffer[3]_i_1_n_0\,
      Q => TXCHARISK(0),
      R => '0'
    );
\TX_DATA_Buffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \TX_DATA_Buffer[0]_i_2_n_0\,
      I1 => TX_DATA_Buffer_reg0,
      I2 => \^txdata\(24),
      O => \TX_DATA_Buffer[0]_i_1_n_0\
    );
\TX_DATA_Buffer[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044E4"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => gen_cc_r,
      I2 => \tx_pe_data_r_reg_n_0_[31]\,
      I3 => \gen_pad_r_reg_n_0_[1]\,
      I4 => \gen_ecp_r_reg_n_0_[1]\,
      O => \TX_DATA_Buffer[0]_i_2_n_0\
    );
\TX_DATA_Buffer[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBB88B888"
    )
        port map (
      I0 => data0(2),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => p_0_in4_in,
      I3 => \TX_DATA_Buffer[12]_i_2_n_0\,
      I4 => p_0_in,
      I5 => gen_cc_r,
      O => \TX_DATA_Buffer[10]_i_1_n_0\
    );
\TX_DATA_Buffer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => data0(3),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => gen_cc_r,
      O => \TX_DATA_Buffer[11]_i_1_n_0\
    );
\TX_DATA_Buffer[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBB88B888"
    )
        port map (
      I0 => data0(4),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => p_0_in4_in,
      I3 => \TX_DATA_Buffer[12]_i_2_n_0\,
      I4 => p_0_in,
      I5 => gen_cc_r,
      O => \TX_DATA_Buffer[12]_i_1_n_0\
    );
\TX_DATA_Buffer[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => p_1_in,
      I1 => gen_cc_r,
      I2 => gen_sp_r,
      O => \TX_DATA_Buffer[12]_i_2_n_0\
    );
\TX_DATA_Buffer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(5),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => \TX_DATA_Buffer[15]_i_3_n_0\,
      O => \TX_DATA_Buffer[13]_i_1_n_0\
    );
\TX_DATA_Buffer[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBB88BBBBBB8B"
    )
        port map (
      I0 => data0(6),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => p_0_in4_in,
      I3 => p_1_in,
      I4 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I5 => p_0_in,
      O => \TX_DATA_Buffer[14]_i_1_n_0\
    );
\TX_DATA_Buffer[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => p_0_in,
      I2 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I3 => p_1_in,
      I4 => p_0_in4_in,
      I5 => \gen_ecp_r_reg_n_0_[1]\,
      O => \TX_DATA_Buffer[15]_i_1_n_0\
    );
\TX_DATA_Buffer[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(7),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => \TX_DATA_Buffer[15]_i_3_n_0\,
      O => \TX_DATA_Buffer[15]_i_2_n_0\
    );
\TX_DATA_Buffer[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFEF"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_1_in,
      I2 => p_0_in,
      I3 => gen_cc_r,
      I4 => gen_sp_r,
      O => \TX_DATA_Buffer[15]_i_3_n_0\
    );
\TX_DATA_Buffer[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F0"
    )
        port map (
      I0 => p_0_in12_in,
      I1 => \tx_pe_data_r_reg_n_0_[15]\,
      I2 => gen_cc_r,
      I3 => p_1_in11_in,
      O => \TX_DATA_Buffer[16]_i_1_n_0\
    );
\TX_DATA_Buffer[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2F2F20"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[14]\,
      I1 => p_0_in12_in,
      I2 => p_1_in11_in,
      I3 => gen_sp_r,
      I4 => gen_cc_r,
      O => \TX_DATA_Buffer[17]_i_1_n_0\
    );
\TX_DATA_Buffer[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \TX_DATA_Buffer[18]_i_2_n_0\,
      I1 => \TX_DATA_Buffer[23]_i_1_n_0\,
      I2 => \^txdata\(10),
      O => \TX_DATA_Buffer[18]_i_1_n_0\
    );
\TX_DATA_Buffer[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE2"
    )
        port map (
      I0 => \TX_DATA_Buffer[20]_i_2_n_0\,
      I1 => p_1_in11_in,
      I2 => p_0_in12_in,
      I3 => \tx_pe_data_r_reg_n_0_[13]\,
      I4 => p_1_in16_in,
      O => \TX_DATA_Buffer[18]_i_2_n_0\
    );
\TX_DATA_Buffer[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[12]\,
      I1 => p_0_in12_in,
      I2 => p_1_in11_in,
      I3 => gen_cc_r,
      O => \TX_DATA_Buffer[19]_i_1_n_0\
    );
\TX_DATA_Buffer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2F2F20"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[30]\,
      I1 => \gen_pad_r_reg_n_0_[1]\,
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => gen_sp_r,
      I4 => gen_cc_r,
      O => \TX_DATA_Buffer[1]_i_1_n_0\
    );
\TX_DATA_Buffer[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[11]\,
      I1 => p_0_in12_in,
      I2 => p_1_in11_in,
      I3 => \TX_DATA_Buffer[20]_i_2_n_0\,
      O => \TX_DATA_Buffer[20]_i_1_n_0\
    );
\TX_DATA_Buffer[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0302"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => gen_sp_r,
      I2 => p_1_in5_in,
      I3 => p_0_in6_in,
      I4 => gen_cc_r,
      O => \TX_DATA_Buffer[20]_i_2_n_0\
    );
\TX_DATA_Buffer[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[10]\,
      I1 => p_0_in12_in,
      I2 => p_1_in11_in,
      I3 => \TX_DATA_Buffer[23]_i_4_n_0\,
      O => \TX_DATA_Buffer[21]_i_1_n_0\
    );
\TX_DATA_Buffer[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F20202F2F202F"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[9]\,
      I1 => p_0_in12_in,
      I2 => p_1_in11_in,
      I3 => p_0_in8_in,
      I4 => \TX_DATA_Buffer[23]_i_3_n_0\,
      I5 => p_0_in6_in,
      O => \TX_DATA_Buffer[22]_i_1_n_0\
    );
\TX_DATA_Buffer[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => p_0_in6_in,
      I2 => \TX_DATA_Buffer[23]_i_3_n_0\,
      I3 => p_0_in8_in,
      I4 => p_1_in16_in,
      O => \TX_DATA_Buffer[23]_i_1_n_0\
    );
\TX_DATA_Buffer[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[8]\,
      I1 => p_0_in12_in,
      I2 => p_1_in11_in,
      I3 => \TX_DATA_Buffer[23]_i_4_n_0\,
      O => \TX_DATA_Buffer[23]_i_2_n_0\
    );
\TX_DATA_Buffer[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_1_in5_in,
      I1 => gen_sp_r,
      I2 => gen_cc_r,
      O => \TX_DATA_Buffer[23]_i_3_n_0\
    );
\TX_DATA_Buffer[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFEF"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_1_in5_in,
      I2 => p_0_in6_in,
      I3 => gen_cc_r,
      I4 => gen_sp_r,
      O => \TX_DATA_Buffer[23]_i_4_n_0\
    );
\TX_DATA_Buffer[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[7]\,
      I1 => p_1_in11_in,
      I2 => gen_cc_r,
      O => \TX_DATA_Buffer[24]_i_1_n_0\
    );
\TX_DATA_Buffer[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[6]\,
      I1 => p_1_in11_in,
      I2 => gen_cc_r,
      O => \TX_DATA_Buffer[25]_i_1_n_0\
    );
\TX_DATA_Buffer[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[5]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I4 => gen_a_r,
      I5 => p_0_in14_in,
      O => \TX_DATA_Buffer[26]_i_1_n_0\
    );
\TX_DATA_Buffer[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[4]\,
      I1 => p_1_in11_in,
      I2 => gen_cc_r,
      O => \TX_DATA_Buffer[27]_i_1_n_0\
    );
\TX_DATA_Buffer[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[3]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I4 => gen_a_r,
      I5 => p_0_in14_in,
      O => \TX_DATA_Buffer[28]_i_1_n_0\
    );
\TX_DATA_Buffer[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBBBBBBB"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[2]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I4 => gen_a_r,
      I5 => p_0_in14_in,
      O => \TX_DATA_Buffer[29]_i_1_n_0\
    );
\TX_DATA_Buffer[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[29]\,
      I1 => \gen_pad_r_reg_n_0_[1]\,
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => \TX_DATA_Buffer[4]_i_2_n_0\,
      O => \TX_DATA_Buffer[2]_i_1_n_0\
    );
\TX_DATA_Buffer[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBB88B888"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[1]\,
      I1 => p_1_in11_in,
      I2 => p_0_in14_in,
      I3 => \TX_DATA_Buffer[30]_i_2_n_0\,
      I4 => p_0_in16_in,
      I5 => \TX_DATA_Buffer[30]_i_3_n_0\,
      O => \TX_DATA_Buffer[30]_i_1_n_0\
    );
\TX_DATA_Buffer[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => gen_sp_r,
      I1 => gen_a_r,
      I2 => gen_cc_r,
      O => \TX_DATA_Buffer[30]_i_2_n_0\
    );
\TX_DATA_Buffer[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_sp_r,
      O => \TX_DATA_Buffer[30]_i_3_n_0\
    );
\TX_DATA_Buffer[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => gen_sp_r,
      I1 => gen_cc_r,
      I2 => p_1_in11_in,
      I3 => p_0_in16_in,
      I4 => gen_a_r,
      I5 => p_0_in14_in,
      O => \TX_DATA_Buffer[31]_i_1_n_0\
    );
\TX_DATA_Buffer[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8888BBBBB8BB"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[0]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => p_0_in14_in,
      I4 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I5 => gen_a_r,
      O => \TX_DATA_Buffer[31]_i_2_n_0\
    );
\TX_DATA_Buffer[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gen_sp_r,
      I1 => gen_cc_r,
      O => \TX_DATA_Buffer[31]_i_3_n_0\
    );
\TX_DATA_Buffer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[28]\,
      I1 => \gen_pad_r_reg_n_0_[1]\,
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => gen_cc_r,
      O => \TX_DATA_Buffer[3]_i_1_n_0\
    );
\TX_DATA_Buffer[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[27]\,
      I1 => \gen_pad_r_reg_n_0_[1]\,
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => \TX_DATA_Buffer[4]_i_2_n_0\,
      O => \TX_DATA_Buffer[4]_i_1_n_0\
    );
\TX_DATA_Buffer[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0302"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[3]\,
      I1 => \gen_v_r_reg_n_0_[3]\,
      I2 => gen_sp_r,
      I3 => \gen_r_r_reg_n_0_[3]\,
      I4 => gen_cc_r,
      O => \TX_DATA_Buffer[4]_i_2_n_0\
    );
\TX_DATA_Buffer[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[26]\,
      I1 => \gen_pad_r_reg_n_0_[1]\,
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => \TX_DATA_Buffer[7]_i_3_n_0\,
      O => \TX_DATA_Buffer[5]_i_1_n_0\
    );
\TX_DATA_Buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F20202F2F202F"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[25]\,
      I1 => \gen_pad_r_reg_n_0_[1]\,
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => \gen_k_r_reg_n_0_[3]\,
      I4 => \TX_DATA_Buffer[6]_i_2_n_0\,
      I5 => \gen_r_r_reg_n_0_[3]\,
      O => \TX_DATA_Buffer[6]_i_1_n_0\
    );
\TX_DATA_Buffer[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_sp_r,
      I2 => \gen_v_r_reg_n_0_[3]\,
      O => \TX_DATA_Buffer[6]_i_2_n_0\
    );
\TX_DATA_Buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => \gen_r_r_reg_n_0_[3]\,
      I2 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I3 => \gen_v_r_reg_n_0_[3]\,
      I4 => \gen_k_r_reg_n_0_[3]\,
      I5 => \gen_ecp_r_reg_n_0_[1]\,
      O => TX_DATA_Buffer_reg0
    );
\TX_DATA_Buffer[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[24]\,
      I1 => \gen_pad_r_reg_n_0_[1]\,
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => \TX_DATA_Buffer[7]_i_3_n_0\,
      O => \TX_DATA_Buffer[7]_i_2_n_0\
    );
\TX_DATA_Buffer[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFEF"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[3]\,
      I1 => \gen_v_r_reg_n_0_[3]\,
      I2 => \gen_r_r_reg_n_0_[3]\,
      I3 => gen_cc_r,
      I4 => gen_sp_r,
      O => \TX_DATA_Buffer[7]_i_3_n_0\
    );
\TX_DATA_Buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(0),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => gen_cc_r,
      O => \TX_DATA_Buffer[8]_i_1_n_0\
    );
\TX_DATA_Buffer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \TX_DATA_Buffer[31]_i_3_n_0\,
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => data0(1),
      I3 => \gen_ecp_r_reg_n_0_[1]\,
      I4 => \TX_DATA_Buffer[15]_i_1_n_0\,
      I5 => \^txdata\(17),
      O => \TX_DATA_Buffer[9]_i_1_n_0\
    );
\TX_DATA_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \TX_DATA_Buffer[0]_i_1_n_0\,
      Q => \^txdata\(24),
      R => '0'
    );
\TX_DATA_Buffer_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[10]_i_1_n_0\,
      Q => \^txdata\(18),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[11]_i_1_n_0\,
      Q => \^txdata\(19),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[12]_i_1_n_0\,
      Q => \^txdata\(20),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[13]_i_1_n_0\,
      Q => \^txdata\(21),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[14]_i_1_n_0\,
      Q => \^txdata\(22),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[15]_i_2_n_0\,
      Q => \^txdata\(23),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[23]_i_1_n_0\,
      D => \TX_DATA_Buffer[16]_i_1_n_0\,
      Q => \^txdata\(8),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[23]_i_1_n_0\,
      D => \TX_DATA_Buffer[17]_i_1_n_0\,
      Q => \^txdata\(9),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \TX_DATA_Buffer[18]_i_1_n_0\,
      Q => \^txdata\(10),
      R => '0'
    );
\TX_DATA_Buffer_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[23]_i_1_n_0\,
      D => \TX_DATA_Buffer[19]_i_1_n_0\,
      Q => \^txdata\(11),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[1]_i_1_n_0\,
      Q => \^txdata\(25),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[23]_i_1_n_0\,
      D => \TX_DATA_Buffer[20]_i_1_n_0\,
      Q => \^txdata\(12),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[23]_i_1_n_0\,
      D => \TX_DATA_Buffer[21]_i_1_n_0\,
      Q => \^txdata\(13),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[23]_i_1_n_0\,
      D => \TX_DATA_Buffer[22]_i_1_n_0\,
      Q => \^txdata\(14),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[23]_i_1_n_0\,
      D => \TX_DATA_Buffer[23]_i_2_n_0\,
      Q => \^txdata\(15),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[24]_i_1_n_0\,
      Q => \^txdata\(0),
      R => p_1_in16_in
    );
\TX_DATA_Buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[25]_i_1_n_0\,
      Q => \^txdata\(1),
      R => p_1_in16_in
    );
\TX_DATA_Buffer_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[26]_i_1_n_0\,
      Q => \^txdata\(2),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[27]_i_1_n_0\,
      Q => \^txdata\(3),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[28]_i_1_n_0\,
      Q => \^txdata\(4),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[29]_i_1_n_0\,
      Q => \^txdata\(5),
      R => p_1_in16_in
    );
\TX_DATA_Buffer_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[2]_i_1_n_0\,
      Q => \^txdata\(26),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[30]_i_1_n_0\,
      Q => \^txdata\(6),
      S => p_1_in16_in
    );
\TX_DATA_Buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[31]_i_1_n_0\,
      D => \TX_DATA_Buffer[31]_i_2_n_0\,
      Q => \^txdata\(7),
      R => p_1_in16_in
    );
\TX_DATA_Buffer_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[3]_i_1_n_0\,
      Q => \^txdata\(27),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[4]_i_1_n_0\,
      Q => \^txdata\(28),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[5]_i_1_n_0\,
      Q => \^txdata\(29),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[6]_i_1_n_0\,
      Q => \^txdata\(30),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[7]_i_2_n_0\,
      Q => \^txdata\(31),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[8]_i_1_n_0\,
      Q => \^txdata\(16),
      S => \gen_ecp_r_reg_n_0_[1]\
    );
\TX_DATA_Buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \TX_DATA_Buffer[9]_i_1_n_0\,
      Q => \^txdata\(17),
      R => '0'
    );
gen_a_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_a_i,
      Q => gen_a_r,
      R => '0'
    );
gen_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_cc_i,
      Q => gen_cc_r,
      R => '0'
    );
\gen_ecp_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_ECP_Buffer,
      Q => \gen_ecp_r_reg_n_0_[1]\,
      R => '0'
    );
\gen_k_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_0_i(3),
      Q => p_0_in16_in,
      R => '0'
    );
\gen_k_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_0_i(2),
      Q => p_0_in8_in,
      R => '0'
    );
\gen_k_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_0_i(1),
      Q => p_0_in4_in,
      R => '0'
    );
\gen_k_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_0_i(0),
      Q => \gen_k_r_reg_n_0_[3]\,
      R => '0'
    );
\gen_pad_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \GEN_PAD_Buffer_reg[0]\(1),
      Q => p_0_in12_in,
      R => '0'
    );
\gen_pad_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \GEN_PAD_Buffer_reg[0]\(0),
      Q => \gen_pad_r_reg_n_0_[1]\,
      R => '0'
    );
\gen_r_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_r_flop_0_i(3),
      Q => p_0_in14_in,
      R => '0'
    );
\gen_r_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_r_flop_0_i(2),
      Q => p_0_in6_in,
      R => '0'
    );
\gen_r_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_r_flop_0_i(1),
      Q => p_0_in,
      R => '0'
    );
\gen_r_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_r_flop_0_i(0),
      Q => \gen_r_r_reg_n_0_[3]\,
      R => '0'
    );
\gen_scp_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_SCP_Buffer,
      Q => p_1_in16_in,
      R => '0'
    );
gen_sp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_SP,
      Q => gen_sp_r,
      R => '0'
    );
\gen_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_v_flop_1_i(2),
      Q => p_1_in5_in,
      R => '0'
    );
\gen_v_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_v_flop_1_i(1),
      Q => p_1_in,
      R => '0'
    );
\gen_v_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_v_flop_1_i(0),
      Q => \gen_v_r_reg_n_0_[3]\,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(31),
      Q => \tx_pe_data_r_reg_n_0_[0]\,
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(21),
      Q => \tx_pe_data_r_reg_n_0_[10]\,
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(20),
      Q => \tx_pe_data_r_reg_n_0_[11]\,
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(19),
      Q => \tx_pe_data_r_reg_n_0_[12]\,
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(18),
      Q => \tx_pe_data_r_reg_n_0_[13]\,
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(17),
      Q => \tx_pe_data_r_reg_n_0_[14]\,
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(16),
      Q => \tx_pe_data_r_reg_n_0_[15]\,
      R => '0'
    );
\tx_pe_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(15),
      Q => data0(7),
      R => '0'
    );
\tx_pe_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(14),
      Q => data0(6),
      R => '0'
    );
\tx_pe_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(13),
      Q => data0(5),
      R => '0'
    );
\tx_pe_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(12),
      Q => data0(4),
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(30),
      Q => \tx_pe_data_r_reg_n_0_[1]\,
      R => '0'
    );
\tx_pe_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(11),
      Q => data0(3),
      R => '0'
    );
\tx_pe_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(10),
      Q => data0(2),
      R => '0'
    );
\tx_pe_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(9),
      Q => data0(1),
      R => '0'
    );
\tx_pe_data_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(8),
      Q => data0(0),
      R => '0'
    );
\tx_pe_data_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(7),
      Q => \tx_pe_data_r_reg_n_0_[24]\,
      R => '0'
    );
\tx_pe_data_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(6),
      Q => \tx_pe_data_r_reg_n_0_[25]\,
      R => '0'
    );
\tx_pe_data_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(5),
      Q => \tx_pe_data_r_reg_n_0_[26]\,
      R => '0'
    );
\tx_pe_data_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(4),
      Q => \tx_pe_data_r_reg_n_0_[27]\,
      R => '0'
    );
\tx_pe_data_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(3),
      Q => \tx_pe_data_r_reg_n_0_[28]\,
      R => '0'
    );
\tx_pe_data_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(2),
      Q => \tx_pe_data_r_reg_n_0_[29]\,
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(29),
      Q => \tx_pe_data_r_reg_n_0_[2]\,
      R => '0'
    );
\tx_pe_data_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(1),
      Q => \tx_pe_data_r_reg_n_0_[30]\,
      R => '0'
    );
\tx_pe_data_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(0),
      Q => \tx_pe_data_r_reg_n_0_[31]\,
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(28),
      Q => \tx_pe_data_r_reg_n_0_[3]\,
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(27),
      Q => \tx_pe_data_r_reg_n_0_[4]\,
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(26),
      Q => \tx_pe_data_r_reg_n_0_[5]\,
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(25),
      Q => \tx_pe_data_r_reg_n_0_[6]\,
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(24),
      Q => \tx_pe_data_r_reg_n_0_[7]\,
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(23),
      Q => \tx_pe_data_r_reg_n_0_[8]\,
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(22),
      Q => \tx_pe_data_r_reg_n_0_[9]\,
      R => '0'
    );
\tx_pe_data_v_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => D(1),
      Q => p_1_in11_in,
      R => '0'
    );
\tx_pe_data_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => D(0),
      Q => \tx_pe_data_v_r_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX is
  port (
    reset_channel_i : out STD_LOGIC;
    TX_HARD_ERR : out STD_LOGIC;
    tx_reset_simplex_r_reg : out STD_LOGIC;
    wait_for_lane_up_r0 : out STD_LOGIC;
    TX_LANE_UP : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    hard_err_flop_r_reg : in STD_LOGIC;
    \simplex_timer_r_reg[11]\ : in STD_LOGIC;
    tx_reset_simplex_r : in STD_LOGIC;
    \simplex_timer_r_reg[11]_0\ : in STD_LOGIC;
    \simplex_timer_r_reg[8]\ : in STD_LOGIC;
    simplex_timer_r_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    SYSTEM_RESET_reg : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX : entity is "system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX is
  signal RESET_CHANNEL_Buffer_i_1_n_0 : STD_LOGIC;
  signal \^tx_hard_err\ : STD_LOGIC;
  signal hard_err_r_reg_srl2_n_0 : STD_LOGIC;
  signal lane_up_r : STD_LOGIC;
  signal \^reset_channel_i\ : STD_LOGIC;
  signal tx_reset_simplex_r_i_3_n_0 : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of hard_err_r_reg_srl2 : label is "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/tx_channel_err_detect_simplex_i/hard_err_r_reg_srl2 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of tx_reset_simplex_r_i_3 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of wait_for_lane_up_r_i_1 : label is "soft_lutpair29";
begin
  TX_HARD_ERR <= \^tx_hard_err\;
  reset_channel_i <= \^reset_channel_i\;
CHANNEL_HARD_ERR_Buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => hard_err_r_reg_srl2_n_0,
      Q => \^tx_hard_err\,
      R => '0'
    );
RESET_CHANNEL_Buffer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => POWER_DOWN,
      I1 => lane_up_r,
      O => RESET_CHANNEL_Buffer_i_1_n_0
    );
RESET_CHANNEL_Buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => RESET_CHANNEL_Buffer_i_1_n_0,
      Q => \^reset_channel_i\,
      R => '0'
    );
hard_err_r_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => hard_err_flop_r_reg,
      Q => hard_err_r_reg_srl2_n_0
    );
lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => TX_LANE_UP,
      Q => lane_up_r,
      R => '0'
    );
tx_reset_simplex_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404040F040404000"
    )
        port map (
      I0 => \simplex_timer_r_reg[11]\,
      I1 => tx_reset_simplex_r,
      I2 => tx_reset_simplex_r_i_3_n_0,
      I3 => \simplex_timer_r_reg[11]_0\,
      I4 => \simplex_timer_r_reg[8]\,
      I5 => simplex_timer_r_reg(0),
      O => tx_reset_simplex_r_reg
    );
tx_reset_simplex_r_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_hard_err\,
      I1 => SYSTEM_RESET_reg,
      O => tx_reset_simplex_r_i_3_n_0
    );
wait_for_lane_up_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^reset_channel_i\,
      I1 => tx_reset_simplex_r,
      I2 => SYSTEM_RESET_reg,
      O => wait_for_lane_up_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX is
  port (
    TX_CHANNEL_UP : out STD_LOGIC;
    tx_reset_lanes_i : out STD_LOGIC;
    gen_ver_i : out STD_LOGIC;
    D0_out : out STD_LOGIC;
    in_frame_r_reg : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    tx_verify_simplex_r : in STD_LOGIC;
    wait_for_lane_up_r0 : in STD_LOGIC;
    SYSTEM_RESET_reg : in STD_LOGIC;
    tx_reset_simplex_r : in STD_LOGIC;
    reset_channel_i : in STD_LOGIC;
    DID_VER_Buffer_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX : entity is "system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX is
  signal D : STD_LOGIC;
  signal \^tx_channel_up\ : STD_LOGIC;
  signal \free_count_r[10]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[10]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[10]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[10]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[14]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[14]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[14]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[14]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[2]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[6]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[6]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[6]_i_5_n_0\ : STD_LOGIC;
  signal free_count_r_reg : STD_LOGIC_VECTOR ( 0 to 14 );
  signal \free_count_r_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[2]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal \^gen_ver_i\ : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_verify_c : STD_LOGIC;
  signal ready_r : STD_LOGIC;
  signal reset_lanes_flop_i_i_1_n_0 : STD_LOGIC;
  signal tx_verify_r : STD_LOGIC;
  signal verify_watchdog_r0 : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_2_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_3_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_4_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg_n_0_[15]\ : STD_LOGIC;
  signal wait_for_lane_up_r : STD_LOGIC;
  signal \NLW_free_count_r_reg[2]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_free_count_r_reg[2]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ready_r_i_1__0\ : label is "soft_lutpair30";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_lanes_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_lanes_flop_i : label is "FD";
  attribute BOX_TYPE of tx_channel_up_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of tx_channel_up_i : label is "FD";
  attribute SOFT_HLUTNM of verify_r_i_1 : label is "soft_lutpair30";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \verify_watchdog_r_reg[14]_srl15\ : label is "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/tx_channel_init_sm_simplex_i/verify_watchdog_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \verify_watchdog_r_reg[14]_srl15\ : label is "U0/\system_aurora_8b10b_0_0_tx_global_logic_simplex_i/tx_channel_init_sm_simplex_i/verify_watchdog_r_reg[14]_srl15 ";
begin
  TX_CHANNEL_UP <= \^tx_channel_up\;
  gen_ver_i <= \^gen_ver_i\;
GEN_ECP_Buffer_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_channel_up\,
      O => in_frame_r_reg
    );
\free_count_r[10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(7),
      O => \free_count_r[10]_i_2_n_0\
    );
\free_count_r[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(8),
      O => \free_count_r[10]_i_3_n_0\
    );
\free_count_r[10]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(9),
      O => \free_count_r[10]_i_4_n_0\
    );
\free_count_r[10]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(10),
      O => \free_count_r[10]_i_5_n_0\
    );
\free_count_r[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(11),
      O => \free_count_r[14]_i_2_n_0\
    );
\free_count_r[14]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(12),
      O => \free_count_r[14]_i_3_n_0\
    );
\free_count_r[14]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(13),
      O => \free_count_r[14]_i_4_n_0\
    );
\free_count_r[14]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(14),
      O => \free_count_r[14]_i_5_n_0\
    );
\free_count_r[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(0),
      O => \free_count_r[2]_i_2_n_0\
    );
\free_count_r[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(1),
      O => \free_count_r[2]_i_3_n_0\
    );
\free_count_r[2]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(2),
      O => \free_count_r[2]_i_4_n_0\
    );
\free_count_r[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(3),
      O => \free_count_r[6]_i_2_n_0\
    );
\free_count_r[6]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(4),
      O => \free_count_r[6]_i_3_n_0\
    );
\free_count_r[6]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(5),
      O => \free_count_r[6]_i_4_n_0\
    );
\free_count_r[6]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(6),
      O => \free_count_r[6]_i_5_n_0\
    );
\free_count_r_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[2]_i_1_n_5\,
      Q => free_count_r_reg(0),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[10]_i_1_n_7\,
      Q => free_count_r_reg(10),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[14]_i_1_n_0\,
      CO(3) => \free_count_r_reg[10]_i_1_n_0\,
      CO(2) => \free_count_r_reg[10]_i_1_n_1\,
      CO(1) => \free_count_r_reg[10]_i_1_n_2\,
      CO(0) => \free_count_r_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[10]_i_1_n_4\,
      O(2) => \free_count_r_reg[10]_i_1_n_5\,
      O(1) => \free_count_r_reg[10]_i_1_n_6\,
      O(0) => \free_count_r_reg[10]_i_1_n_7\,
      S(3) => \free_count_r[10]_i_2_n_0\,
      S(2) => \free_count_r[10]_i_3_n_0\,
      S(1) => \free_count_r[10]_i_4_n_0\,
      S(0) => \free_count_r[10]_i_5_n_0\
    );
\free_count_r_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[14]_i_1_n_4\,
      Q => free_count_r_reg(11),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[14]_i_1_n_5\,
      Q => free_count_r_reg(12),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[14]_i_1_n_6\,
      Q => free_count_r_reg(13),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[14]_i_1_n_7\,
      Q => free_count_r_reg(14),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \free_count_r_reg[14]_i_1_n_0\,
      CO(2) => \free_count_r_reg[14]_i_1_n_1\,
      CO(1) => \free_count_r_reg[14]_i_1_n_2\,
      CO(0) => \free_count_r_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[14]_i_1_n_4\,
      O(2) => \free_count_r_reg[14]_i_1_n_5\,
      O(1) => \free_count_r_reg[14]_i_1_n_6\,
      O(0) => \free_count_r_reg[14]_i_1_n_7\,
      S(3) => \free_count_r[14]_i_2_n_0\,
      S(2) => \free_count_r[14]_i_3_n_0\,
      S(1) => \free_count_r[14]_i_4_n_0\,
      S(0) => \free_count_r[14]_i_5_n_0\
    );
\free_count_r_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[2]_i_1_n_6\,
      Q => free_count_r_reg(1),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[2]_i_1_n_7\,
      Q => free_count_r_reg(2),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[6]_i_1_n_0\,
      CO(3 downto 2) => \NLW_free_count_r_reg[2]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \free_count_r_reg[2]_i_1_n_2\,
      CO(0) => \free_count_r_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3) => \NLW_free_count_r_reg[2]_i_1_O_UNCONNECTED\(3),
      O(2) => \free_count_r_reg[2]_i_1_n_5\,
      O(1) => \free_count_r_reg[2]_i_1_n_6\,
      O(0) => \free_count_r_reg[2]_i_1_n_7\,
      S(3) => '0',
      S(2) => \free_count_r[2]_i_2_n_0\,
      S(1) => \free_count_r[2]_i_3_n_0\,
      S(0) => \free_count_r[2]_i_4_n_0\
    );
\free_count_r_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[6]_i_1_n_4\,
      Q => free_count_r_reg(3),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[6]_i_1_n_5\,
      Q => free_count_r_reg(4),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[6]_i_1_n_6\,
      Q => free_count_r_reg(5),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[6]_i_1_n_7\,
      Q => free_count_r_reg(6),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[10]_i_1_n_0\,
      CO(3) => \free_count_r_reg[6]_i_1_n_0\,
      CO(2) => \free_count_r_reg[6]_i_1_n_1\,
      CO(1) => \free_count_r_reg[6]_i_1_n_2\,
      CO(0) => \free_count_r_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[6]_i_1_n_4\,
      O(2) => \free_count_r_reg[6]_i_1_n_5\,
      O(1) => \free_count_r_reg[6]_i_1_n_6\,
      O(0) => \free_count_r_reg[6]_i_1_n_7\,
      S(3) => \free_count_r[6]_i_2_n_0\,
      S(2) => \free_count_r[6]_i_3_n_0\,
      S(1) => \free_count_r[6]_i_4_n_0\,
      S(0) => \free_count_r[6]_i_5_n_0\
    );
\free_count_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[10]_i_1_n_4\,
      Q => free_count_r_reg(7),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[10]_i_1_n_5\,
      Q => free_count_r_reg(8),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[10]_i_1_n_6\,
      Q => free_count_r_reg(9),
      S => wait_for_lane_up_r0
    );
gen_v_flop_1_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => DID_VER_Buffer_reg,
      O => D0_out
    );
ready_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => ready_r,
      Q => D,
      R => '0'
    );
\ready_r_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => tx_verify_r,
      I1 => \^gen_ver_i\,
      I2 => ready_r,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_ready_c,
      Q => ready_r,
      R => wait_for_lane_up_r0
    );
reset_lanes_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => reset_lanes_flop_i_i_1_n_0,
      Q => tx_reset_lanes_i,
      R => '0'
    );
reset_lanes_flop_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEEFEEE"
    )
        port map (
      I0 => SYSTEM_RESET_reg,
      I1 => tx_reset_simplex_r,
      I2 => \^gen_ver_i\,
      I3 => \verify_watchdog_r_reg_n_0_[15]\,
      I4 => wait_for_lane_up_r,
      I5 => reset_channel_i,
      O => reset_lanes_flop_i_i_1_n_0
    );
tx_channel_up_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D,
      Q => \^tx_channel_up\,
      R => '0'
    );
tx_verify_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => tx_verify_simplex_r,
      Q => tx_verify_r,
      R => '0'
    );
verify_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => tx_verify_r,
      I1 => \^gen_ver_i\,
      I2 => wait_for_lane_up_r,
      O => next_verify_c
    );
verify_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_verify_c,
      Q => \^gen_ver_i\,
      R => wait_for_lane_up_r0
    );
\verify_watchdog_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => verify_watchdog_r0,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \verify_watchdog_r_reg[14]_srl15_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
        port map (
      I0 => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\,
      I1 => free_count_r_reg(14),
      I2 => free_count_r_reg(13),
      I3 => free_count_r_reg(12),
      I4 => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\,
      I5 => \^gen_ver_i\,
      O => verify_watchdog_r0
    );
\verify_watchdog_r_reg[14]_srl15_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => free_count_r_reg(3),
      I1 => free_count_r_reg(2),
      I2 => free_count_r_reg(1),
      I3 => free_count_r_reg(0),
      I4 => \verify_watchdog_r_reg[14]_srl15_i_4_n_0\,
      O => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => free_count_r_reg(8),
      I1 => free_count_r_reg(9),
      I2 => free_count_r_reg(10),
      I3 => free_count_r_reg(11),
      O => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => free_count_r_reg(4),
      I1 => free_count_r_reg(5),
      I2 => free_count_r_reg(6),
      I3 => free_count_r_reg(7),
      O => \verify_watchdog_r_reg[14]_srl15_i_4_n_0\
    );
\verify_watchdog_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => verify_watchdog_r0,
      D => \verify_watchdog_r_reg[14]_srl15_n_0\,
      Q => \verify_watchdog_r_reg_n_0_[15]\,
      R => '0'
    );
wait_for_lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => wait_for_lane_up_r0,
      Q => wait_for_lane_up_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CHANNEL_HARD_ERR_Buffer_reg : out STD_LOGIC;
    ENABLE_ERR_DETECT_Buffer_reg : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    tx_reset_lanes_i : in STD_LOGIC;
    ENABLE_ERR_DETECT : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX : entity is "system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX is
  signal hard_err_reset_i : STD_LOGIC;
begin
begin_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => hard_err_reset_i,
      I1 => tx_reset_lanes_i,
      O => SR(0)
    );
hard_err_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => ENABLE_ERR_DETECT_Buffer_reg,
      Q => hard_err_reset_i,
      R => '0'
    );
hard_err_r_reg_srl2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hard_err_reset_i,
      I1 => ENABLE_ERR_DETECT,
      O => CHANNEL_HARD_ERR_Buffer_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE is
  port (
    TX_LANE_UP : out STD_LOGIC;
    ENABLE_ERR_DETECT : out STD_LOGIC;
    GEN_SP : out STD_LOGIC;
    tx_reset_lanes_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_aligned_simplex_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE : entity is "system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE is
  signal D : STD_LOGIC;
  signal align_r : STD_LOGIC;
  signal begin_r : STD_LOGIC;
  signal \counter1_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[3]\ : STD_LOGIC;
  signal gtx_tx_reset_i : STD_LOGIC;
  signal next_align_c : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_rst_c : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal std_bool : STD_LOGIC;
  signal tx_aligned_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of align_r_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter1_r[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter1_r[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of gen_sp_r_i_1 : label is "soft_lutpair26";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of lane_up_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lane_up_flop_i : label is "FDR";
  attribute SOFT_HLUTNM of ready_r_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of rst_r_i_1 : label is "soft_lutpair24";
begin
ENABLE_ERR_DETECT_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => D,
      Q => ENABLE_ERR_DETECT,
      R => '0'
    );
align_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => gtx_tx_reset_i,
      I1 => std_bool,
      I2 => tx_aligned_r,
      I3 => align_r,
      O => next_align_c
    );
align_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_align_c,
      Q => align_r,
      R => SR(0)
    );
begin_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => SR(0),
      Q => begin_r,
      R => '0'
    );
\counter1_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => std_bool,
      I1 => \counter1_r_reg_n_0_[3]\,
      I2 => \counter1_r_reg_n_0_[2]\,
      I3 => \counter1_r_reg_n_0_[1]\,
      O => p_0_in(3)
    );
\counter1_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[1]\,
      I1 => \counter1_r_reg_n_0_[2]\,
      I2 => \counter1_r_reg_n_0_[3]\,
      O => p_0_in(2)
    );
\counter1_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[3]\,
      I1 => \counter1_r_reg_n_0_[2]\,
      O => p_0_in(1)
    );
\counter1_r[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[3]\,
      O => p_0_in(0)
    );
\counter1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(3),
      Q => std_bool,
      R => SR(0)
    );
\counter1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(2),
      Q => \counter1_r_reg_n_0_[1]\,
      R => SR(0)
    );
\counter1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(1),
      Q => \counter1_r_reg_n_0_[2]\,
      R => SR(0)
    );
\counter1_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(0),
      Q => \counter1_r_reg_n_0_[3]\,
      S => SR(0)
    );
gen_sp_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D,
      O => GEN_SP
    );
lane_up_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D,
      Q => TX_LANE_UP,
      R => tx_reset_lanes_i
    );
ready_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => tx_aligned_r,
      I1 => align_r,
      I2 => D,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_ready_c,
      Q => D,
      R => SR(0)
    );
rst_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => std_bool,
      I1 => gtx_tx_reset_i,
      I2 => begin_r,
      O => next_rst_c
    );
rst_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_rst_c,
      Q => gtx_tx_reset_i,
      R => SR(0)
    );
tx_aligned_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => tx_aligned_simplex_r,
      Q => tx_aligned_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_CONTROL is
  port (
    gen_cc_i : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    GEN_ECP_Buffer : out STD_LOGIC;
    GEN_SCP_Buffer : out STD_LOGIC;
    idle_r_reg_0 : out STD_LOGIC;
    pdu_ok_c : out STD_LOGIC;
    new_pkt_r : out STD_LOGIC;
    S_AXI_TX_TREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_frame_r_reg : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    tx_channel_up_i : in STD_LOGIC;
    DO_CC_I : in STD_LOGIC;
    S_AXI_TX_TLAST : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC;
    RESET_SYMGEN : in STD_LOGIC;
    TX_CHANNEL_UP : in STD_LOGIC;
    in_frame_r_reg_0 : in STD_LOGIC;
    new_pkt_r_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_CONTROL : entity is "system_aurora_8b10b_0_0_TX_LL_CONTROL";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_CONTROL;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_CONTROL is
  signal \^d_0\ : STD_LOGIC;
  signal GEN_ECP_Buffer0 : STD_LOGIC;
  signal GEN_SCP_Buffer0 : STD_LOGIC;
  signal TX_DST_RDY_N_Buffer_i_2_n_0 : STD_LOGIC;
  signal data_r : STD_LOGIC;
  signal data_to_eof_1_r : STD_LOGIC;
  signal data_to_eof_2_r : STD_LOGIC;
  signal idle_r : STD_LOGIC;
  signal \^idle_r_reg_0\ : STD_LOGIC;
  signal next_data_c : STD_LOGIC;
  signal next_data_to_eof_1_c : STD_LOGIC;
  signal next_idle_c : STD_LOGIC;
  signal next_sof_to_data_c : STD_LOGIC;
  signal next_sof_to_eof_1_c : STD_LOGIC;
  signal \^pdu_ok_c\ : STD_LOGIC;
  signal sof_to_data_r : STD_LOGIC;
  signal sof_to_eof_1_r : STD_LOGIC;
  signal sof_to_eof_2_r : STD_LOGIC;
  signal tx_dst_rdy_n_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GEN_ECP_Buffer_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of GEN_SCP_Buffer_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of data_r_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of data_to_eof_1_r_i_1 : label is "soft_lutpair32";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_cc_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_cc_flop_0_i : label is "FDR";
  attribute SOFT_HLUTNM of in_frame_r_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of sof_to_data_r_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of sof_to_eof_1_r_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tx_pe_data_v_r[1]_i_1\ : label is "soft_lutpair33";
begin
  D_0 <= \^d_0\;
  idle_r_reg_0 <= \^idle_r_reg_0\;
  pdu_ok_c <= \^pdu_ok_c\;
GEN_ECP_Buffer_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_to_eof_2_r,
      I1 => sof_to_eof_2_r,
      I2 => \^d_0\,
      O => GEN_ECP_Buffer0
    );
GEN_ECP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_ECP_Buffer0,
      Q => GEN_ECP_Buffer,
      R => tx_channel_up_i
    );
GEN_SCP_Buffer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => sof_to_data_r,
      I1 => \^d_0\,
      I2 => sof_to_eof_1_r,
      O => GEN_SCP_Buffer0
    );
GEN_SCP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_SCP_Buffer0,
      Q => GEN_SCP_Buffer,
      R => tx_channel_up_i
    );
S_AXI_TX_TREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      O => S_AXI_TX_TREADY
    );
TX_DST_RDY_N_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFF0"
    )
        port map (
      I0 => sof_to_eof_1_r,
      I1 => data_to_eof_1_r,
      I2 => DO_CC_I,
      I3 => next_sof_to_eof_1_c,
      I4 => \^d_0\,
      I5 => TX_DST_RDY_N_Buffer_i_2_n_0,
      O => tx_dst_rdy_n_c
    );
TX_DST_RDY_N_Buffer_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540000000000"
    )
        port map (
      I0 => \^d_0\,
      I1 => data_r,
      I2 => sof_to_data_r,
      I3 => S_AXI_TX_TLAST,
      I4 => \^idle_r_reg_0\,
      I5 => S_AXI_TX_TVALID,
      O => TX_DST_RDY_N_Buffer_i_2_n_0
    );
TX_DST_RDY_N_Buffer_reg: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_dst_rdy_n_c,
      Q => \^idle_r_reg_0\,
      S => tx_channel_up_i
    );
data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDFDF00"
    )
        port map (
      I0 => S_AXI_TX_TLAST,
      I1 => \^idle_r_reg_0\,
      I2 => S_AXI_TX_TVALID,
      I3 => sof_to_data_r,
      I4 => data_r,
      O => next_data_c
    );
data_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_data_c,
      Q => data_r,
      R => tx_channel_up_i
    );
data_to_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202000"
    )
        port map (
      I0 => S_AXI_TX_TLAST,
      I1 => \^idle_r_reg_0\,
      I2 => S_AXI_TX_TVALID,
      I3 => sof_to_data_r,
      I4 => data_r,
      O => next_data_to_eof_1_c
    );
data_to_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_data_to_eof_1_c,
      Q => data_to_eof_1_r,
      R => tx_channel_up_i
    );
data_to_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => data_to_eof_1_r,
      Q => data_to_eof_2_r,
      R => tx_channel_up_i
    );
do_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => DO_CC_I,
      Q => \^d_0\,
      R => '0'
    );
gen_cc_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \^d_0\,
      Q => gen_cc_i,
      R => '0'
    );
idle_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFB00"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      I1 => S_AXI_TX_TVALID,
      I2 => new_pkt_r_reg,
      I3 => sof_to_eof_2_r,
      I4 => data_to_eof_2_r,
      I5 => idle_r,
      O => next_idle_c
    );
idle_r_reg: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_idle_c,
      Q => idle_r,
      S => tx_channel_up_i
    );
in_frame_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDF0010"
    )
        port map (
      I0 => S_AXI_TX_TLAST,
      I1 => \^idle_r_reg_0\,
      I2 => S_AXI_TX_TVALID,
      I3 => new_pkt_r_reg,
      I4 => in_frame_r_reg_0,
      O => in_frame_r_reg
    );
new_pkt_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F70400000000"
    )
        port map (
      I0 => S_AXI_TX_TLAST,
      I1 => S_AXI_TX_TVALID,
      I2 => \^idle_r_reg_0\,
      I3 => new_pkt_r_reg,
      I4 => RESET_SYMGEN,
      I5 => TX_CHANNEL_UP,
      O => new_pkt_r
    );
sof_to_data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => S_AXI_TX_TLAST,
      I1 => new_pkt_r_reg_0,
      I2 => sof_to_eof_2_r,
      I3 => data_to_eof_2_r,
      I4 => idle_r,
      O => next_sof_to_data_c
    );
sof_to_data_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_sof_to_data_c,
      Q => sof_to_data_r,
      R => tx_channel_up_i
    );
sof_to_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => new_pkt_r_reg_0,
      I1 => S_AXI_TX_TLAST,
      I2 => sof_to_eof_2_r,
      I3 => data_to_eof_2_r,
      I4 => idle_r,
      O => next_sof_to_eof_1_c
    );
sof_to_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_sof_to_eof_1_c,
      Q => sof_to_eof_1_r,
      R => tx_channel_up_i
    );
sof_to_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => sof_to_eof_1_r,
      Q => sof_to_eof_2_r,
      R => tx_channel_up_i
    );
\storage_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d_0\,
      O => \^pdu_ok_c\
    );
\tx_pe_data_v_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \^idle_r_reg_0\,
      I1 => S_AXI_TX_TVALID,
      I2 => new_pkt_r_reg,
      I3 => in_frame_r_reg_0,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_DATAPATH is
  port (
    in_frame_r_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pad_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    tx_channel_up_i : in STD_LOGIC;
    TX_DST_RDY_N_Buffer_reg : in STD_LOGIC;
    S_AXI_TX_TKEEP : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_TX_TLAST : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    D_0 : in STD_LOGIC;
    S_AXI_TX_TDATA : in STD_LOGIC_VECTOR ( 0 to 31 );
    TX_DST_RDY_N_Buffer_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_DATAPATH : entity is "system_aurora_8b10b_0_0_TX_LL_DATAPATH";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_DATAPATH;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_DATAPATH is
  signal \gen_pad_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pad_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pad_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \^in_frame_r_reg_0\ : STD_LOGIC;
  signal storage_pad_r : STD_LOGIC;
  signal storage_pad_r0 : STD_LOGIC;
  signal storage_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal storage_v_r : STD_LOGIC;
  signal storage_v_r0 : STD_LOGIC;
  signal storage_v_r_i_2_n_0 : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \tx_pe_data_v_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_pe_data_v_r_reg_n_0_[1]\ : STD_LOGIC;
begin
  in_frame_r_reg_0 <= \^in_frame_r_reg_0\;
\GEN_PAD_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_pad_r_reg_n_0_[0]\,
      Q => \gen_pad_r_reg[0]_0\(1),
      R => D_0
    );
\GEN_PAD_Buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_pad_r_reg_n_0_[1]\,
      Q => \gen_pad_r_reg[0]_0\(0),
      R => D_0
    );
\TX_PE_DATA_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[0]\,
      Q => Q(31),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[10]\,
      Q => Q(21),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[11]\,
      Q => Q(20),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[12]\,
      Q => Q(19),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[13]\,
      Q => Q(18),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[14]\,
      Q => Q(17),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[15]\,
      Q => Q(16),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[16]\,
      Q => Q(15),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[17]\,
      Q => Q(14),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[18]\,
      Q => Q(13),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[19]\,
      Q => Q(12),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[1]\,
      Q => Q(30),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[20]\,
      Q => Q(11),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[21]\,
      Q => Q(10),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[22]\,
      Q => Q(9),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[23]\,
      Q => Q(8),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[24]\,
      Q => Q(7),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[25]\,
      Q => Q(6),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[26]\,
      Q => Q(5),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[27]\,
      Q => Q(4),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[28]\,
      Q => Q(3),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[29]\,
      Q => Q(2),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[2]\,
      Q => Q(29),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[30]\,
      Q => Q(1),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[31]\,
      Q => Q(0),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[3]\,
      Q => Q(28),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[4]\,
      Q => Q(27),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[5]\,
      Q => Q(26),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[6]\,
      Q => Q(25),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[7]\,
      Q => Q(24),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[8]\,
      Q => Q(23),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_r_reg_n_0_[9]\,
      Q => Q(22),
      R => '0'
    );
\TX_PE_DATA_V_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_v_r_reg_n_0_[0]\,
      Q => D(1),
      R => D_0
    );
\TX_PE_DATA_V_Buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \tx_pe_data_v_r_reg_n_0_[1]\,
      Q => D(0),
      R => D_0
    );
\gen_pad_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011600000000"
    )
        port map (
      I0 => S_AXI_TX_TKEEP(2),
      I1 => S_AXI_TX_TKEEP(1),
      I2 => S_AXI_TX_TKEEP(0),
      I3 => S_AXI_TX_TKEEP(3),
      I4 => storage_v_r_i_2_n_0,
      I5 => S_AXI_TX_TLAST,
      O => \gen_pad_r[1]_i_1_n_0\
    );
\gen_pad_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_pad_r,
      Q => \gen_pad_r_reg_n_0_[0]\,
      R => '0'
    );
\gen_pad_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => \gen_pad_r[1]_i_1_n_0\,
      Q => \gen_pad_r_reg_n_0_[1]\,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => TX_DST_RDY_N_Buffer_reg,
      Q => \^in_frame_r_reg_0\,
      R => tx_channel_up_i
    );
storage_pad_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000688000000000"
    )
        port map (
      I0 => S_AXI_TX_TKEEP(2),
      I1 => S_AXI_TX_TKEEP(1),
      I2 => S_AXI_TX_TKEEP(0),
      I3 => S_AXI_TX_TKEEP(3),
      I4 => storage_v_r_i_2_n_0,
      I5 => S_AXI_TX_TLAST,
      O => storage_pad_r0
    );
storage_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_pad_r0,
      Q => storage_pad_r,
      R => '0'
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(16),
      Q => storage_r(0),
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(26),
      Q => storage_r(10),
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(27),
      Q => storage_r(11),
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(28),
      Q => storage_r(12),
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(29),
      Q => storage_r(13),
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(30),
      Q => storage_r(14),
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(31),
      Q => storage_r(15),
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(17),
      Q => storage_r(1),
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(18),
      Q => storage_r(2),
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(19),
      Q => storage_r(3),
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(20),
      Q => storage_r(4),
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(21),
      Q => storage_r(5),
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(22),
      Q => storage_r(6),
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(23),
      Q => storage_r(7),
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(24),
      Q => storage_r(8),
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(25),
      Q => storage_r(9),
      R => '0'
    );
storage_v_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E881FFFF"
    )
        port map (
      I0 => S_AXI_TX_TKEEP(3),
      I1 => S_AXI_TX_TKEEP(0),
      I2 => S_AXI_TX_TKEEP(1),
      I3 => S_AXI_TX_TKEEP(2),
      I4 => S_AXI_TX_TLAST,
      I5 => storage_v_r_i_2_n_0,
      O => storage_v_r0
    );
storage_v_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \^in_frame_r_reg_0\,
      I1 => new_pkt_r_reg,
      I2 => S_AXI_TX_TVALID,
      I3 => tx_dst_rdy,
      O => storage_v_r_i_2_n_0
    );
storage_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_v_r0,
      Q => storage_v_r,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(0),
      Q => \tx_pe_data_r_reg_n_0_[0]\,
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(10),
      Q => \tx_pe_data_r_reg_n_0_[10]\,
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(11),
      Q => \tx_pe_data_r_reg_n_0_[11]\,
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(12),
      Q => \tx_pe_data_r_reg_n_0_[12]\,
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(13),
      Q => \tx_pe_data_r_reg_n_0_[13]\,
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(14),
      Q => \tx_pe_data_r_reg_n_0_[14]\,
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(15),
      Q => \tx_pe_data_r_reg_n_0_[15]\,
      R => '0'
    );
\tx_pe_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(0),
      Q => \tx_pe_data_r_reg_n_0_[16]\,
      R => '0'
    );
\tx_pe_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(1),
      Q => \tx_pe_data_r_reg_n_0_[17]\,
      R => '0'
    );
\tx_pe_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(2),
      Q => \tx_pe_data_r_reg_n_0_[18]\,
      R => '0'
    );
\tx_pe_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(3),
      Q => \tx_pe_data_r_reg_n_0_[19]\,
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(1),
      Q => \tx_pe_data_r_reg_n_0_[1]\,
      R => '0'
    );
\tx_pe_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(4),
      Q => \tx_pe_data_r_reg_n_0_[20]\,
      R => '0'
    );
\tx_pe_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(5),
      Q => \tx_pe_data_r_reg_n_0_[21]\,
      R => '0'
    );
\tx_pe_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(6),
      Q => \tx_pe_data_r_reg_n_0_[22]\,
      R => '0'
    );
\tx_pe_data_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(7),
      Q => \tx_pe_data_r_reg_n_0_[23]\,
      R => '0'
    );
\tx_pe_data_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(8),
      Q => \tx_pe_data_r_reg_n_0_[24]\,
      R => '0'
    );
\tx_pe_data_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(9),
      Q => \tx_pe_data_r_reg_n_0_[25]\,
      R => '0'
    );
\tx_pe_data_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(10),
      Q => \tx_pe_data_r_reg_n_0_[26]\,
      R => '0'
    );
\tx_pe_data_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(11),
      Q => \tx_pe_data_r_reg_n_0_[27]\,
      R => '0'
    );
\tx_pe_data_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(12),
      Q => \tx_pe_data_r_reg_n_0_[28]\,
      R => '0'
    );
\tx_pe_data_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(13),
      Q => \tx_pe_data_r_reg_n_0_[29]\,
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(2),
      Q => \tx_pe_data_r_reg_n_0_[2]\,
      R => '0'
    );
\tx_pe_data_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(14),
      Q => \tx_pe_data_r_reg_n_0_[30]\,
      R => '0'
    );
\tx_pe_data_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(15),
      Q => \tx_pe_data_r_reg_n_0_[31]\,
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(3),
      Q => \tx_pe_data_r_reg_n_0_[3]\,
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(4),
      Q => \tx_pe_data_r_reg_n_0_[4]\,
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(5),
      Q => \tx_pe_data_r_reg_n_0_[5]\,
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(6),
      Q => \tx_pe_data_r_reg_n_0_[6]\,
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(7),
      Q => \tx_pe_data_r_reg_n_0_[7]\,
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(8),
      Q => \tx_pe_data_r_reg_n_0_[8]\,
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(9),
      Q => \tx_pe_data_r_reg_n_0_[9]\,
      R => '0'
    );
\tx_pe_data_v_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_v_r,
      Q => \tx_pe_data_v_r_reg_n_0_[0]\,
      R => '0'
    );
\tx_pe_data_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => TX_DST_RDY_N_Buffer_reg_0(0),
      Q => \tx_pe_data_v_r_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync is
  port (
    \out\ : out STD_LOGIC;
    TX_SYSTEM_RESET : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync : entity is "system_aurora_8b10b_0_0_cdc_sync";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
begin
  \out\ <= s_level_out_d3;
  p_level_in_int <= TX_SYSTEM_RESET;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync_10 is
  port (
    \out\ : out STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync_10 : entity is "system_aurora_8b10b_0_0_cdc_sync";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync_10;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync_10 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
begin
  \out\ <= s_level_out_d3;
  p_level_in_int <= PLL_NOT_LOCKED;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    GT_RESET : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1\ is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
  AR(0) <= s_level_out_d2;
  p_level_in_int <= GT_RESET;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_2\ is
  port (
    \out\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    in0 : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    rxpmaresetdone_sss : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_2\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_2\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_2\ is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
  \out\ <= s_level_out_d2;
  p_level_in_int <= in0;
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rxpmaresetdone_sss,
      I1 => s_level_out_d2,
      O => \FSM_sequential_state_reg[0]\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_3\ is
  port (
    reset_time_out_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    quad1_common_lock_in : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_tx_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    pll_reset_asserted_reg : in STD_LOGIC;
    init_wait_done_reg : in STD_LOGIC;
    time_out_2ms_reg : in STD_LOGIC;
    \wait_time_cnt_reg[3]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_s3 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_3\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_3\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_3\ is
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal p_level_in_int : STD_LOGIC;
  signal reset_time_out_0 : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
  p_level_in_int <= quad1_common_lock_in;
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4A4F4F4F4A4A4A"
    )
        port map (
      I0 => \out\(3),
      I1 => \FSM_sequential_tx_state_reg[1]\,
      I2 => \FSM_sequential_tx_state_reg[0]\,
      I3 => \FSM_sequential_tx_state[3]_i_5_n_0\,
      I4 => \out\(1),
      I5 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0EFE0"
    )
        port map (
      I0 => time_out_2ms_reg,
      I1 => s_level_out_d2,
      I2 => \out\(0),
      I3 => \wait_time_cnt_reg[3]\,
      I4 => Q(0),
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => pll_reset_asserted_reg,
      I1 => s_level_out_d2,
      I2 => \out\(0),
      I3 => init_wait_done_reg,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reset_time_out_0,
      I1 => reset_time_out_i_3_n_0,
      I2 => reset_time_out,
      O => reset_time_out_reg
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F0F1F0F100F1000"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(1),
      I2 => \out\(3),
      I3 => \out\(0),
      I4 => init_wait_done_reg,
      I5 => reset_time_out_i_4_n_0,
      O => reset_time_out_0
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303030302020FFFC"
    )
        port map (
      I0 => s_level_out_d2,
      I1 => \out\(3),
      I2 => \out\(0),
      I3 => init_wait_done_reg,
      I4 => \out\(1),
      I5 => \out\(2),
      O => reset_time_out_i_3_n_0
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => s_level_out_d2,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => mmcm_lock_reclocked,
      O => reset_time_out_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_4\ is
  port (
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_4\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_4\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_4\ is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_6\ is
  port (
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mmcm_lock_count_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_6\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_6\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_6\ is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d2,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => \mmcm_lock_count_reg[7]\,
      I3 => Q(0),
      I4 => s_level_out_d2,
      O => mmcm_lock_reclocked_reg
    );
p_level_in_int_inferred_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PLL_NOT_LOCKED,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3\ is
  port (
    \out\ : out STD_LOGIC;
    run_phase_alignment_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
begin
  \out\ <= s_level_out_d3;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_11\ is
  port (
    \out\ : out STD_LOGIC;
    tx_lock_comb_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_11\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_11\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_11\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
begin
  \out\ <= s_level_out_d3;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_lock_comb_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_8\ is
  port (
    TX_RESETDONE_OUT : out STD_LOGIC;
    gt_txresetdone_r2_reg : out STD_LOGIC;
    tx_fsm_reset_done_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_8\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_8\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_8\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
begin
  TX_RESETDONE_OUT <= s_level_out_d3;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
gt_txresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d3,
      O => gt_txresetdone_r2_reg
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_9\ is
  port (
    \out\ : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_9\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_9\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_9\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
begin
  \out\ <= s_level_out_d3;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => '0',
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6\ is
  port (
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => '0',
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_0\ is
  port (
    \out\ : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_0\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_0\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_0\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
  \out\ <= s_level_out_d2;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => '0',
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_1\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_1\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_1\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
  AR(0) <= s_level_out_d2;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gt_common_reset_out,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_5\ is
  port (
    \out\ : out STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_5\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_5\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_5\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
  \out\ <= s_level_out_d2;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => txfsm_txresetdone_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_7\ is
  port (
    \out\ : out STD_LOGIC;
    time_out_wait_bypass : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_7\ : entity is "system_aurora_8b10b_0_0_cdc_sync";
end \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_7\;

architecture STRUCTURE of \system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_7\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_d1_system_aurora_8b10b_0_0_cdc_to : signal is "no";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
begin
  \out\ <= s_level_out_d2;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => time_out_wait_bypass,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_system_aurora_8b10b_0_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_system_aurora_8b10b_0_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_RESET_LOGIC is
  port (
    sys_reset_out : out STD_LOGIC;
    RESET_SYMGEN : out STD_LOGIC;
    \simplex_timer_r_reg[17]\ : out STD_LOGIC;
    tx_aligned_simplex_r_reg : out STD_LOGIC;
    tx_verify_simplex_r_reg : out STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    TX_LOCK : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : in STD_LOGIC;
    tx_reset_simplex_r : in STD_LOGIC;
    CHANNEL_HARD_ERR_Buffer_reg : in STD_LOGIC;
    tx_aligned_simplex_r : in STD_LOGIC;
    simplex_timer_r_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \simplex_timer_r_reg[2]\ : in STD_LOGIC;
    simplex_timer_r_reg_0_sp_1 : in STD_LOGIC;
    tx_verify_simplex_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_RESET_LOGIC : entity is "system_aurora_8b10b_0_0_RESET_LOGIC";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_RESET_LOGIC;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_RESET_LOGIC is
  signal \^reset_symgen\ : STD_LOGIC;
  signal SYSTEM_RESET0_n_0 : STD_LOGIC;
  signal gt_txresetdone_r : STD_LOGIC;
  signal gt_txresetdone_r2 : STD_LOGIC;
  signal gt_txresetdone_r3 : STD_LOGIC;
  signal pll_not_locked_sync : STD_LOGIC;
  signal scndry_out : STD_LOGIC;
  signal simplex_timer_r_reg_0_sn_1 : STD_LOGIC;
  signal \^sys_reset_out\ : STD_LOGIC;
  signal tx_lock_comb_r : STD_LOGIC;
  signal tx_lock_sync : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of new_pkt_r_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \simplex_timer_r[0]_i_1\ : label is "soft_lutpair0";
begin
  RESET_SYMGEN <= \^reset_symgen\;
  simplex_timer_r_reg_0_sn_1 <= simplex_timer_r_reg_0_sp_1;
  sys_reset_out <= \^sys_reset_out\;
SYSTEM_RESET0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => tx_lock_sync,
      I1 => pll_not_locked_sync,
      I2 => \out\,
      I3 => scndry_out,
      I4 => gt_txresetdone_r3,
      O => SYSTEM_RESET0_n_0
    );
SYSTEM_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => SYSTEM_RESET0_n_0,
      Q => \^sys_reset_out\,
      R => '0'
    );
gt_txresetdone_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => user_clk,
      CE => '1',
      CLR => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\,
      D => gt_txresetdone_r,
      Q => gt_txresetdone_r2
    );
gt_txresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gt_txresetdone_r2,
      Q => gt_txresetdone_r3,
      R => '0'
    );
gt_txresetdone_r_reg: unisim.vcomponents.FDCE
     port map (
      C => user_clk,
      CE => '1',
      CLR => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\,
      D => '1',
      Q => gt_txresetdone_r
    );
link_reset_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_9\
     port map (
      init_clk_in => init_clk_in,
      \out\ => scndry_out,
      user_clk => user_clk
    );
new_pkt_r_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sys_reset_out\,
      I1 => tx_reset_simplex_r,
      O => \^reset_symgen\
    );
pll_not_locked_cdc_sync: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync_10
     port map (
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      \out\ => pll_not_locked_sync,
      user_clk => user_clk
    );
\simplex_timer_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sys_reset_out\,
      I1 => CHANNEL_HARD_ERR_Buffer_reg,
      O => \simplex_timer_r_reg[17]\
    );
tx_aligned_simplex_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000ABAA"
    )
        port map (
      I0 => tx_aligned_simplex_r,
      I1 => simplex_timer_r_reg(0),
      I2 => \simplex_timer_r_reg[2]\,
      I3 => simplex_timer_r_reg_0_sn_1,
      I4 => \^reset_symgen\,
      I5 => CHANNEL_HARD_ERR_Buffer_reg,
      O => tx_aligned_simplex_r_reg
    );
tx_lock_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_11\
     port map (
      init_clk_in => init_clk_in,
      \out\ => tx_lock_sync,
      tx_lock_comb_r => tx_lock_comb_r,
      user_clk => user_clk
    );
tx_lock_comb_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => TX_LOCK,
      Q => tx_lock_comb_r,
      R => '0'
    );
tx_verify_simplex_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BAAA"
    )
        port map (
      I0 => tx_verify_simplex_r,
      I1 => \simplex_timer_r_reg[2]\,
      I2 => simplex_timer_r_reg(0),
      I3 => simplex_timer_r_reg_0_sn_1,
      I4 => \^reset_symgen\,
      I5 => CHANNEL_HARD_ERR_Buffer_reg,
      O => tx_verify_simplex_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE is
  port (
    TX_LANE_UP : out STD_LOGIC;
    TXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ENABLE_ERR_DETECT : out STD_LOGIC;
    CHANNEL_HARD_ERR_Buffer_reg : out STD_LOGIC;
    TXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_reset_lanes_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    tx_aligned_simplex_r : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    GEN_ECP_Buffer : in STD_LOGIC;
    GEN_SCP_Buffer : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    ENABLE_ERR_DETECT_Buffer_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_PAD_Buffer_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_v_flop_1_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_r_flop_0_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gen_k_flop_0_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE : entity is "system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE is
  signal \^enable_err_detect\ : STD_LOGIC;
  signal GEN_SP : STD_LOGIC;
  signal begin_r0 : STD_LOGIC;
begin
  ENABLE_ERR_DETECT <= \^enable_err_detect\;
system_aurora_8b10b_0_0_sym_gen_4byte_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_SYM_GEN_4BYTE
     port map (
      D(1 downto 0) => D(1 downto 0),
      GEN_ECP_Buffer => GEN_ECP_Buffer,
      \GEN_PAD_Buffer_reg[0]\(1 downto 0) => \GEN_PAD_Buffer_reg[0]\(1 downto 0),
      GEN_SCP_Buffer => GEN_SCP_Buffer,
      GEN_SP => GEN_SP,
      Q(31 downto 0) => Q(31 downto 0),
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_k_flop_0_i(3 downto 0) => gen_k_flop_0_i(3 downto 0),
      gen_r_flop_0_i(3 downto 0) => gen_r_flop_0_i(3 downto 0),
      gen_v_flop_1_i(2 downto 0) => gen_v_flop_1_i(2 downto 0),
      user_clk => user_clk
    );
system_aurora_8b10b_0_0_tx_err_detect_simplex_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_ERR_DETECT_SIMPLEX
     port map (
      CHANNEL_HARD_ERR_Buffer_reg => CHANNEL_HARD_ERR_Buffer_reg,
      ENABLE_ERR_DETECT => \^enable_err_detect\,
      ENABLE_ERR_DETECT_Buffer_reg => ENABLE_ERR_DETECT_Buffer_reg,
      SR(0) => begin_r0,
      tx_reset_lanes_i => tx_reset_lanes_i,
      user_clk => user_clk
    );
system_aurora_8b10b_0_0_tx_lane_init_simplex_sm_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LANE_INIT_SM_SIMPLEX_4BYTE
     port map (
      ENABLE_ERR_DETECT => \^enable_err_detect\,
      GEN_SP => GEN_SP,
      SR(0) => begin_r0,
      TX_LANE_UP => TX_LANE_UP,
      tx_aligned_simplex_r => tx_aligned_simplex_r,
      tx_reset_lanes_i => tx_reset_lanes_i,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX is
  port (
    TX_CHANNEL_UP : out STD_LOGIC;
    tx_reset_lanes_i : out STD_LOGIC;
    \gen_v_r_reg[1]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_a_i : out STD_LOGIC;
    \gen_k_r_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_r_r_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TX_HARD_ERR : out STD_LOGIC;
    tx_reset_simplex_r_reg : out STD_LOGIC;
    in_frame_r_reg : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    tx_verify_simplex_r : in STD_LOGIC;
    TX_LANE_UP : in STD_LOGIC;
    hard_err_flop_r_reg : in STD_LOGIC;
    \simplex_timer_r_reg[11]\ : in STD_LOGIC;
    tx_reset_simplex_r : in STD_LOGIC;
    \simplex_timer_r_reg[11]_0\ : in STD_LOGIC;
    \simplex_timer_r_reg[8]\ : in STD_LOGIC;
    simplex_timer_r_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    SYSTEM_RESET_reg : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX : entity is "system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX is
  signal D0_out : STD_LOGIC;
  signal gen_ver_i : STD_LOGIC;
  signal idle_and_ver_gen_i_n_12 : STD_LOGIC;
  signal reset_channel_i : STD_LOGIC;
  signal wait_for_lane_up_r0 : STD_LOGIC;
begin
idle_and_ver_gen_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_IDLE_AND_VER_GEN
     port map (
      D0_out => D0_out,
      SYSTEM_RESET_reg => SYSTEM_RESET_reg,
      gen_a_i => gen_a_i,
      gen_k_flop_0_i_0 => idle_and_ver_gen_i_n_12,
      \gen_k_r_reg[0]\(3 downto 0) => \gen_k_r_reg[0]\(3 downto 0),
      \gen_r_r_reg[0]\(3 downto 0) => \gen_r_r_reg[0]\(3 downto 0),
      \gen_v_r_reg[1]\(2 downto 0) => \gen_v_r_reg[1]\(2 downto 0),
      gen_ver_i => gen_ver_i,
      tx_reset_simplex_r => tx_reset_simplex_r,
      user_clk => user_clk
    );
tx_channel_err_detect_simplex_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_ERR_DETECT_SIMPLEX
     port map (
      POWER_DOWN => POWER_DOWN,
      SYSTEM_RESET_reg => SYSTEM_RESET_reg,
      TX_HARD_ERR => TX_HARD_ERR,
      TX_LANE_UP => TX_LANE_UP,
      hard_err_flop_r_reg => hard_err_flop_r_reg,
      reset_channel_i => reset_channel_i,
      simplex_timer_r_reg(0) => simplex_timer_r_reg(0),
      \simplex_timer_r_reg[11]\ => \simplex_timer_r_reg[11]\,
      \simplex_timer_r_reg[11]_0\ => \simplex_timer_r_reg[11]_0\,
      \simplex_timer_r_reg[8]\ => \simplex_timer_r_reg[8]\,
      tx_reset_simplex_r => tx_reset_simplex_r,
      tx_reset_simplex_r_reg => tx_reset_simplex_r_reg,
      user_clk => user_clk,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
tx_channel_init_sm_simplex_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_CHANNEL_INIT_SM_SIMPLEX
     port map (
      D0_out => D0_out,
      DID_VER_Buffer_reg => idle_and_ver_gen_i_n_12,
      SYSTEM_RESET_reg => SYSTEM_RESET_reg,
      TX_CHANNEL_UP => TX_CHANNEL_UP,
      gen_ver_i => gen_ver_i,
      in_frame_r_reg => in_frame_r_reg,
      reset_channel_i => reset_channel_i,
      tx_reset_lanes_i => tx_reset_lanes_i,
      tx_reset_simplex_r => tx_reset_simplex_r,
      tx_verify_simplex_r => tx_verify_simplex_r,
      user_clk => user_clk,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL is
  port (
    gen_cc_i : out STD_LOGIC;
    GEN_ECP_Buffer : out STD_LOGIC;
    GEN_SCP_Buffer : out STD_LOGIC;
    tx_dst_rdy : out STD_LOGIC;
    new_pkt_r : out STD_LOGIC;
    S_AXI_TX_TREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pad_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    user_clk : in STD_LOGIC;
    tx_channel_up_i : in STD_LOGIC;
    DO_CC_I : in STD_LOGIC;
    S_AXI_TX_TLAST : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC;
    RESET_SYMGEN : in STD_LOGIC;
    TX_CHANNEL_UP : in STD_LOGIC;
    S_AXI_TX_TKEEP : in STD_LOGIC_VECTOR ( 0 to 3 );
    new_pkt_r_reg_0 : in STD_LOGIC;
    S_AXI_TX_TDATA : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL : entity is "system_aurora_8b10b_0_0_TX_LL";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL is
  signal D_0 : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal pdu_ok_c : STD_LOGIC;
  signal \^tx_dst_rdy\ : STD_LOGIC;
  signal tx_ll_control_i_n_9 : STD_LOGIC;
  signal tx_ll_datapath_i_n_0 : STD_LOGIC;
begin
  tx_dst_rdy <= \^tx_dst_rdy\;
tx_ll_control_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_CONTROL
     port map (
      D(0) => p_12_in,
      DO_CC_I => DO_CC_I,
      D_0 => D_0,
      GEN_ECP_Buffer => GEN_ECP_Buffer,
      GEN_SCP_Buffer => GEN_SCP_Buffer,
      RESET_SYMGEN => RESET_SYMGEN,
      S_AXI_TX_TLAST => S_AXI_TX_TLAST,
      S_AXI_TX_TREADY => S_AXI_TX_TREADY,
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      TX_CHANNEL_UP => TX_CHANNEL_UP,
      gen_cc_i => gen_cc_i,
      idle_r_reg_0 => \^tx_dst_rdy\,
      in_frame_r_reg => tx_ll_control_i_n_9,
      in_frame_r_reg_0 => tx_ll_datapath_i_n_0,
      new_pkt_r => new_pkt_r,
      new_pkt_r_reg => new_pkt_r_reg,
      new_pkt_r_reg_0 => new_pkt_r_reg_0,
      pdu_ok_c => pdu_ok_c,
      tx_channel_up_i => tx_channel_up_i,
      user_clk => user_clk
    );
tx_ll_datapath_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL_DATAPATH
     port map (
      D(1 downto 0) => D(1 downto 0),
      D_0 => D_0,
      E(0) => pdu_ok_c,
      Q(31 downto 0) => Q(31 downto 0),
      S_AXI_TX_TDATA(0 to 31) => S_AXI_TX_TDATA(0 to 31),
      S_AXI_TX_TKEEP(0 to 3) => S_AXI_TX_TKEEP(0 to 3),
      S_AXI_TX_TLAST => S_AXI_TX_TLAST,
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      TX_DST_RDY_N_Buffer_reg => tx_ll_control_i_n_9,
      TX_DST_RDY_N_Buffer_reg_0(0) => p_12_in,
      \gen_pad_r_reg[0]_0\(1 downto 0) => \gen_pad_r_reg[0]\(1 downto 0),
      in_frame_r_reg_0 => tx_ll_datapath_i_n_0,
      new_pkt_r_reg => new_pkt_r_reg,
      tx_channel_up_i => tx_channel_up_i,
      tx_dst_rdy => \^tx_dst_rdy\,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gtrxreset_seq is
  port (
    GTRXRESET : out STD_LOGIC;
    in0 : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gtrxreset_o_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gtrxreset_seq : entity is "system_aurora_8b10b_0_0_gtrxreset_seq";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gtrxreset_seq;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gtrxreset_seq is
  signal \/FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal gtrxreset_f : STD_LOGIC;
  signal \gtrxreset_i__0\ : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal gtrxreset_ss : STD_LOGIC;
  signal rst_ss : STD_LOGIC;
  signal rxpmaresetdone_cdc_sync_n_1 : STD_LOGIC;
  signal rxpmaresetdone_ss : STD_LOGIC;
  signal rxpmaresetdone_sss : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,drp_rd:001,wait_rd_data:010,wr_16:011,wait_wr_done1:100,wait_pmareset:101,wr_20:110,wait_wr_done2:111";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,drp_rd:001,wait_rd_data:010,wr_16:011,wait_wr_done1:100,wait_pmareset:101,wr_20:110,wait_wr_done2:111";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,drp_rd:001,wait_rd_data:010,wr_16:011,wait_wr_done1:100,wait_pmareset:101,wr_20:110,wait_wr_done2:111";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
begin
\/FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040EBE87070EBE8"
    )
        port map (
      I0 => gtrxreset_o_reg_0,
      I1 => state(1),
      I2 => state(2),
      I3 => gtrxreset_ss,
      I4 => state(0),
      I5 => rxpmaresetdone_cdc_sync_n_1,
      O => \/FSM_sequential_state[0]_i_1_n_0\
    );
\/FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00FFFF44FF0000"
    )
        port map (
      I0 => rxpmaresetdone_ss,
      I1 => rxpmaresetdone_sss,
      I2 => gtrxreset_o_reg_0,
      I3 => state(2),
      I4 => state(0),
      I5 => state(1),
      O => \/FSM_sequential_state[1]_i_1_n_0\
    );
\/FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FC0"
    )
        port map (
      I0 => gtrxreset_o_reg_0,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      O => \/FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \/FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \/FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \/FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2)
    );
gtrxreset_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7366"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => gtrxreset_ss,
      I3 => state(0),
      O => \gtrxreset_i__0\
    );
gtrxreset_in_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_0\
     port map (
      drpclk_in => drpclk_in,
      init_clk_in => init_clk_in,
      \out\ => gtrxreset_f
    );
gtrxreset_o_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \gtrxreset_i__0\,
      Q => GTRXRESET
    );
gtrxreset_s_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => gtrxreset_f,
      Q => gtrxreset_s
    );
gtrxreset_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => gtrxreset_s,
      Q => gtrxreset_ss
    );
rst_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_1\
     port map (
      AR(0) => rst_ss,
      drpclk_in => drpclk_in,
      gt_common_reset_out => gt_common_reset_out,
      init_clk_in => init_clk_in
    );
rxpmaresetdone_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_2\
     port map (
      \FSM_sequential_state_reg[0]\ => rxpmaresetdone_cdc_sync_n_1,
      drpclk_in => drpclk_in,
      in0 => in0,
      \out\ => rxpmaresetdone_ss,
      rxpmaresetdone_sss => rxpmaresetdone_sss
    );
rxpmaresetdone_sss_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => rxpmaresetdone_ss,
      Q => rxpmaresetdone_sss
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_tx_startup_fsm is
  port (
    TX_RESETDONE_OUT : out STD_LOGIC;
    gt_tx_reset_i : out STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt_txuserrdy_i : out STD_LOGIC;
    gt_txresetdone_r2_reg : out STD_LOGIC;
    TX_LOCK : out STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    PLL_NOT_LOCKED : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_tx_startup_fsm : entity is "system_aurora_8b10b_0_0_tx_startup_fsm";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_tx_startup_fsm;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_tx_startup_fsm is
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal MMCM_RESET : STD_LOGIC;
  signal MMCM_RESET_i_1_n_0 : STD_LOGIC;
  signal PLL0_RESET_i_1_n_0 : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal \^tx_resetdone_out\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^gt_common_reset_out\ : STD_LOGIC;
  signal \^gt_tx_reset_i\ : STD_LOGIC;
  signal \^gt_txuserrdy_i\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_i_2_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal run_phase_alignment_int : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal scndry_out : STD_LOGIC;
  signal sync_PLL0LOCK_cdc_sync_n_0 : STD_LOGIC;
  signal sync_PLL0LOCK_cdc_sync_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_1 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
  signal time_out_500us_i_4_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_2_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of tx_state : signal is "yes";
  signal tx_state12_out : STD_LOGIC;
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_8_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \wait_time_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_9\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_tx_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001";
  attribute KEEP of \FSM_sequential_tx_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001";
  attribute KEEP of \FSM_sequential_tx_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "init:0000,assert_all_resets:0001,wait_for_pll_lock:0010,release_pll_reset:0011,wait_for_txoutclk:0100,release_mmcm_reset:0101,wait_for_txusrclk:0110,wait_reset_done:0111,do_phase_alignment:1000,reset_fsm_done:1001";
  attribute KEEP of \FSM_sequential_tx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of init_wait_done_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of time_out_2ms_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of time_out_500us_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of time_tlock_max_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wait_time_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4\ : label is "soft_lutpair8";
begin
  TX_RESETDONE_OUT <= \^tx_resetdone_out\;
  gt_common_reset_out <= \^gt_common_reset_out\;
  gt_tx_reset_i <= \^gt_tx_reset_i\;
  gt_txuserrdy_i <= \^gt_txuserrdy_i\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222220222220A0A"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B33BBBBBBBBBBBB"
    )
        port map (
      I0 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I1 => tx_state(0),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      I4 => tx_state(1),
      I5 => tx_state(2),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11110444"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state12_out,
      I3 => tx_state(2),
      I4 => tx_state(1),
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      I2 => mmcm_lock_reclocked,
      O => tx_state12_out
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111004055550040"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      I5 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      I3 => tx_state(1),
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(3),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(2),
      I4 => \wait_time_cnt_reg__0\(4),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \FSM_sequential_tx_state[3]_i_10_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00B00"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_7_n_0\,
      I1 => time_out_wait_bypass_s3,
      I2 => tx_state(2),
      I3 => tx_state(3),
      I4 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      I1 => tx_state(1),
      I2 => \FSM_sequential_tx_state[3]_i_9_n_0\,
      I3 => tx_state(0),
      I4 => \FSM_sequential_tx_state[3]_i_10_n_0\,
      I5 => \wait_time_cnt_reg__0\(6),
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(2),
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => tx_state(0),
      I1 => reset_time_out,
      I2 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => reset_time_out,
      I2 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => reset_time_out,
      I2 => time_tlock_max_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_9_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => tx_state(1),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => tx_state(2),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_1,
      D => \FSM_sequential_tx_state[3]_i_2_n_0\,
      Q => tx_state(3),
      R => AR(0)
    );
MMCM_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70004"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(3),
      I3 => tx_state(1),
      I4 => MMCM_RESET,
      O => MMCM_RESET_i_1_n_0
    );
MMCM_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => MMCM_RESET_i_1_n_0,
      Q => MMCM_RESET,
      R => AR(0)
    );
PLL0_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000100"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => tx_state(3),
      I2 => tx_state(2),
      I3 => tx_state(0),
      I4 => tx_state(1),
      I5 => \^gt_common_reset_out\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => PLL0_RESET_i_1_n_0,
      Q => \^gt_common_reset_out\,
      R => AR(0)
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^gt_txuserrdy_i\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt_txuserrdy_i\,
      R => AR(0)
    );
TX_LOCK_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => quad1_common_lock_in,
      I1 => MMCM_RESET,
      O => TX_LOCK
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(3),
      I3 => tx_state(1),
      I4 => \^gt_tx_reset_i\,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => \^gt_tx_reset_i\,
      R => AR(0)
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      O => p_0_in(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(2),
      O => p_0_in(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(2),
      O => p_0_in(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(2),
      I4 => \init_wait_count_reg__0\(0),
      I5 => \init_wait_count_reg__0\(1),
      O => init_wait_count
    );
\init_wait_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      I5 => \init_wait_count_reg__0\(4),
      O => p_0_in(5)
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \init_wait_count[0]_i_1_n_0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => p_0_in(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => p_0_in(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => p_0_in(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => p_0_in(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => p_0_in(5),
      Q => \init_wait_count_reg__0\(5)
    );
init_wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000004"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(2),
      I4 => init_wait_done_i_2_n_0,
      I5 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      O => init_wait_done_i_2_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => AR(0),
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__0\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \mmcm_lock_count[7]_i_2_n_0\,
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \mmcm_lock_count_reg__0\(3),
      I4 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count[7]_i_2_n_0\,
      I4 => \mmcm_lock_count_reg__0\(4),
      I5 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__0\(7)
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__0\(8)
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \mmcm_lock_count[9]_i_2_n_0\
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(6),
      I4 => \mmcm_lock_count[9]_i_4_n_0\,
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__0\(9)
    );
\mmcm_lock_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(4),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \mmcm_lock_count[9]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count[7]_i_2_n_0\,
      I4 => \mmcm_lock_count_reg__0\(4),
      I5 => \mmcm_lock_count_reg__0\(3),
      O => mmcm_lock_reclocked_i_2_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_mmcm_lock_reclocked_cdc_sync_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF00FF10"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => pll_reset_asserted_reg_n_0,
      I4 => tx_state(1),
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => AR(0)
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_PLL0LOCK_cdc_sync_n_0,
      Q => reset_time_out,
      R => AR(0)
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => run_phase_alignment_int,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int,
      R => AR(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => scndry_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_PLL0LOCK_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_3\
     port map (
      E(0) => sync_PLL0LOCK_cdc_sync_n_1,
      \FSM_sequential_tx_state_reg[0]\ => \FSM_sequential_tx_state[3]_i_4_n_0\,
      \FSM_sequential_tx_state_reg[1]\ => \FSM_sequential_tx_state[3]_i_3_n_0\,
      Q(0) => \wait_time_cnt_reg__0\(6),
      init_clk_in => init_clk_in,
      init_wait_done_reg => init_wait_done_reg_n_0,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => tx_state(3 downto 0),
      pll_reset_asserted_reg => pll_reset_asserted_reg_n_0,
      quad1_common_lock_in => quad1_common_lock_in,
      reset_time_out => reset_time_out,
      reset_time_out_reg => sync_PLL0LOCK_cdc_sync_n_0,
      time_out_2ms_reg => time_out_2ms_reg_n_0,
      txresetdone_s3 => txresetdone_s3,
      \wait_time_cnt_reg[3]\ => \FSM_sequential_tx_state[3]_i_10_n_0\
    );
sync_PLL1LOCK_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_4\
     port map (
      init_clk_in => init_clk_in
    );
sync_TXRESETDONE_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_5\
     port map (
      init_clk_in => init_clk_in,
      \out\ => txresetdone_s2,
      txfsm_txresetdone_r => txfsm_txresetdone_r,
      user_clk => user_clk
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1_6\
     port map (
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(9 downto 8),
      SR(0) => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      init_clk_in => init_clk_in,
      \mmcm_lock_count_reg[7]\ => mmcm_lock_reclocked_i_2_n_0,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
sync_run_phase_alignment_int_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3\
     port map (
      init_clk_in => init_clk_in,
      \out\ => scndry_out,
      run_phase_alignment_int => run_phase_alignment_int,
      user_clk => user_clk
    );
sync_time_out_wait_bypass_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6_7\
     port map (
      init_clk_in => init_clk_in,
      \out\ => time_out_wait_bypass_s2,
      time_out_wait_bypass => time_out_wait_bypass,
      user_clk => user_clk
    );
sync_tx_fsm_reset_done_int_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized3_8\
     port map (
      TX_RESETDONE_OUT => \^tx_resetdone_out\,
      gt_txresetdone_r2_reg => gt_txresetdone_r2_reg,
      init_clk_in => init_clk_in,
      tx_fsm_reset_done_int => tx_fsm_reset_done_int,
      user_clk => user_clk
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms,
      I2 => reset_time_out,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAAE"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_500us_i_3_n_0,
      I3 => time_tlock_max_i_3_n_0,
      I4 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(0),
      I5 => time_out_counter_reg(4),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7FFFF"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(14),
      I5 => time_out_500us_i_4_n_0,
      O => time_out_500us_i_3_n_0
    );
time_out_500us_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(12),
      O => time_out_500us_i_4_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_2ms,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \time_out_counter[0]_i_5_n_0\,
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(16),
      I4 => \time_out_counter[0]_i_6_n_0\,
      I5 => time_tlock_max_i_5_n_0,
      O => time_out_2ms
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(5),
      I4 => time_out_counter_reg(2),
      I5 => time_out_counter_reg(1),
      O => \time_out_counter[0]_i_5_n_0\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(6),
      O => \time_out_counter[0]_i_6_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => time_out_counter_reg(16)
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => time_out_wait_bypass_i_2_n_0,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4_n_0\,
      I1 => \wait_bypass_count[0]_i_5_n_0\,
      I2 => \wait_bypass_count[0]_i_6_n_0\,
      I3 => \wait_bypass_count[0]_i_7_n_0\,
      O => time_out_wait_bypass_i_2_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => time_tlock_max_i_2_n_0,
      I2 => time_tlock_max_i_3_n_0,
      I3 => time_tlock_max_i_4_n_0,
      I4 => time_tlock_max_i_5_n_0,
      I5 => reset_time_out,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(6),
      I4 => time_out_counter_reg(8),
      I5 => time_out_counter_reg(7),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(15),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(9),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(13),
      O => time_tlock_max_i_5_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => tx_fsm_reset_done_int,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => tx_fsm_reset_done_int,
      R => AR(0)
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \^tx_resetdone_out\,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4_n_0\,
      I1 => \wait_bypass_count[0]_i_5_n_0\,
      I2 => \wait_bypass_count[0]_i_6_n_0\,
      I3 => \wait_bypass_count[0]_i_7_n_0\,
      I4 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(11),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(6),
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_bypass_count_reg(1),
      I1 => wait_bypass_count_reg(5),
      I2 => wait_bypass_count_reg(15),
      I3 => wait_bypass_count_reg(13),
      O => \wait_bypass_count[0]_i_5_n_0\
    );
\wait_bypass_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      I1 => wait_bypass_count_reg(10),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(9),
      O => \wait_bypass_count[0]_i_6_n_0\
    );
\wait_bypass_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => wait_bypass_count_reg(12),
      I1 => wait_bypass_count_reg(8),
      I2 => wait_bypass_count_reg(2),
      I3 => wait_bypass_count_reg(14),
      O => \wait_bypass_count[0]_i_7_n_0\
    );
\wait_bypass_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      O => \wait_time_cnt[1]_i_1_n_0\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(2),
      O => wait_time_cnt0(2)
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(3),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(2),
      O => wait_time_cnt0(3)
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(0),
      I4 => \wait_time_cnt_reg__0\(3),
      O => \wait_time_cnt[4]_i_1_n_0\
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(5),
      I1 => \wait_time_cnt_reg__0\(3),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      I4 => \wait_time_cnt_reg__0\(2),
      I5 => \wait_time_cnt_reg__0\(4),
      O => wait_time_cnt0(5)
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1050"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(1),
      O => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \wait_time_cnt_reg__0\(3),
      I2 => \wait_time_cnt[6]_i_4_n_0\,
      I3 => \wait_time_cnt_reg__0\(4),
      I4 => \wait_time_cnt_reg__0\(5),
      O => \wait_time_cnt[6]_i_2_n_0\
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA9AA"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \wait_time_cnt_reg__0\(5),
      I2 => \wait_time_cnt_reg__0\(4),
      I3 => \wait_time_cnt[6]_i_4_n_0\,
      I4 => \wait_time_cnt_reg__0\(3),
      O => wait_time_cnt0(6)
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \wait_time_cnt_reg__0\(2),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(0),
      O => \wait_time_cnt[6]_i_4_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => wait_time_cnt0(0),
      Q => \wait_time_cnt_reg__0\(0),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => \wait_time_cnt_reg__0\(1),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => wait_time_cnt0(2),
      Q => \wait_time_cnt_reg__0\(2),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => wait_time_cnt0(3),
      Q => \wait_time_cnt_reg__0\(3),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => \wait_time_cnt[4]_i_1_n_0\,
      Q => \wait_time_cnt_reg__0\(4),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => wait_time_cnt0(5),
      Q => \wait_time_cnt_reg__0\(5),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2_n_0\,
      D => wait_time_cnt0(6),
      Q => \wait_time_cnt_reg__0\(6),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gt is
  port (
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    TXN : out STD_LOGIC;
    TXP : out STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    txfsm_txresetdone_r_reg : out STD_LOGIC;
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hard_err_flop_r_reg : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    DRPEN_IN : in STD_LOGIC;
    DRPWE_IN : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    ENABLE_ERR_DETECT : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gt : entity is "system_aurora_8b10b_0_0_gt";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gt;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gt is
  signal \^fsm_sequential_state_reg[2]\ : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal gtpe2_i_n_1 : STD_LOGIC;
  signal gtpe2_i_n_102 : STD_LOGIC;
  signal gtpe2_i_n_103 : STD_LOGIC;
  signal gtpe2_i_n_104 : STD_LOGIC;
  signal gtpe2_i_n_105 : STD_LOGIC;
  signal gtpe2_i_n_112 : STD_LOGIC;
  signal gtpe2_i_n_113 : STD_LOGIC;
  signal gtpe2_i_n_114 : STD_LOGIC;
  signal gtpe2_i_n_115 : STD_LOGIC;
  signal gtpe2_i_n_116 : STD_LOGIC;
  signal gtpe2_i_n_117 : STD_LOGIC;
  signal gtpe2_i_n_118 : STD_LOGIC;
  signal gtpe2_i_n_119 : STD_LOGIC;
  signal gtpe2_i_n_120 : STD_LOGIC;
  signal gtpe2_i_n_121 : STD_LOGIC;
  signal gtpe2_i_n_122 : STD_LOGIC;
  signal gtpe2_i_n_123 : STD_LOGIC;
  signal gtpe2_i_n_124 : STD_LOGIC;
  signal gtpe2_i_n_125 : STD_LOGIC;
  signal gtpe2_i_n_126 : STD_LOGIC;
  signal gtpe2_i_n_127 : STD_LOGIC;
  signal gtpe2_i_n_128 : STD_LOGIC;
  signal gtpe2_i_n_129 : STD_LOGIC;
  signal gtpe2_i_n_130 : STD_LOGIC;
  signal gtpe2_i_n_131 : STD_LOGIC;
  signal gtpe2_i_n_132 : STD_LOGIC;
  signal gtpe2_i_n_133 : STD_LOGIC;
  signal gtpe2_i_n_134 : STD_LOGIC;
  signal gtpe2_i_n_135 : STD_LOGIC;
  signal gtpe2_i_n_136 : STD_LOGIC;
  signal gtpe2_i_n_137 : STD_LOGIC;
  signal gtpe2_i_n_138 : STD_LOGIC;
  signal gtpe2_i_n_139 : STD_LOGIC;
  signal gtpe2_i_n_14 : STD_LOGIC;
  signal gtpe2_i_n_140 : STD_LOGIC;
  signal gtpe2_i_n_141 : STD_LOGIC;
  signal gtpe2_i_n_142 : STD_LOGIC;
  signal gtpe2_i_n_143 : STD_LOGIC;
  signal gtpe2_i_n_144 : STD_LOGIC;
  signal gtpe2_i_n_145 : STD_LOGIC;
  signal gtpe2_i_n_146 : STD_LOGIC;
  signal gtpe2_i_n_147 : STD_LOGIC;
  signal gtpe2_i_n_148 : STD_LOGIC;
  signal gtpe2_i_n_149 : STD_LOGIC;
  signal gtpe2_i_n_150 : STD_LOGIC;
  signal gtpe2_i_n_151 : STD_LOGIC;
  signal gtpe2_i_n_156 : STD_LOGIC;
  signal gtpe2_i_n_157 : STD_LOGIC;
  signal gtpe2_i_n_158 : STD_LOGIC;
  signal gtpe2_i_n_159 : STD_LOGIC;
  signal gtpe2_i_n_160 : STD_LOGIC;
  signal gtpe2_i_n_161 : STD_LOGIC;
  signal gtpe2_i_n_162 : STD_LOGIC;
  signal gtpe2_i_n_163 : STD_LOGIC;
  signal gtpe2_i_n_24 : STD_LOGIC;
  signal gtpe2_i_n_251 : STD_LOGIC;
  signal gtpe2_i_n_28 : STD_LOGIC;
  signal gtpe2_i_n_29 : STD_LOGIC;
  signal gtpe2_i_n_31 : STD_LOGIC;
  signal gtpe2_i_n_39 : STD_LOGIC;
  signal gtpe2_i_n_40 : STD_LOGIC;
  signal gtpe2_i_n_48 : STD_LOGIC;
  signal gtpe2_i_n_49 : STD_LOGIC;
  signal gtpe2_i_n_50 : STD_LOGIC;
  signal gtpe2_i_n_51 : STD_LOGIC;
  signal gtpe2_i_n_52 : STD_LOGIC;
  signal gtpe2_i_n_53 : STD_LOGIC;
  signal gtpe2_i_n_54 : STD_LOGIC;
  signal gtpe2_i_n_55 : STD_LOGIC;
  signal gtpe2_i_n_56 : STD_LOGIC;
  signal gtpe2_i_n_57 : STD_LOGIC;
  signal gtpe2_i_n_58 : STD_LOGIC;
  signal gtpe2_i_n_59 : STD_LOGIC;
  signal gtpe2_i_n_60 : STD_LOGIC;
  signal gtpe2_i_n_61 : STD_LOGIC;
  signal gtpe2_i_n_62 : STD_LOGIC;
  signal gtpe2_i_n_7 : STD_LOGIC;
  signal gtpe2_i_n_8 : STD_LOGIC;
  signal gtpe2_i_n_9 : STD_LOGIC;
  signal gtpe2_i_n_95 : STD_LOGIC;
  signal gtpe2_i_n_96 : STD_LOGIC;
  signal tx_buf_err_i : STD_LOGIC;
  signal NLW_gtpe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtpe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtpe2_i : label is "PRIMITIVE";
begin
  \FSM_sequential_state_reg[2]\ <= \^fsm_sequential_state_reg[2]\;
  gtpe2_i_n_251 <= 'Z';
gtpe2_i: unisim.vcomponents.GTPE2_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => B"00000000000000000000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CFOK_CFG => B"1001001000000000000000001000000111010000000",
      CFOK_CFG2 => B"0100000",
      CFOK_CFG3 => B"0100000",
      CFOK_CFG4 => '0',
      CFOK_CFG5 => B"00",
      CFOK_CFG6 => B"0000",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"0001",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"0000",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_COMMON_SWING => '0',
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 31,
      CLK_COR_MIN_LAT => 24,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0111110111",
      CLK_COR_SEQ_1_2 => B"0111110111",
      CLK_COR_SEQ_1_3 => B"0111110111",
      CLK_COR_SEQ_1_4 => B"0111110111",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 4,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"010",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CLKRSVD0_INVERTED => '0',
      IS_CLKRSVD1_INVERTED => '0',
      IS_DMONITORCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_SIGVALIDCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      LOOPBACK_CFG => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"3C",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_LOOPBACK_CFG => '0',
      PMA_RSV => X"00000333",
      PMA_RSV2 => X"00002040",
      PMA_RSV3 => B"00",
      PMA_RSV4 => B"0000",
      PMA_RSV5 => '0',
      PMA_RSV6 => '0',
      PMA_RSV7 => '0',
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0000107FE406001041010",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"001001",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPMRESET_TIME => B"0001111",
      RXLPM_BIAS_STARTUP_DISABLE => '0',
      RXLPM_CFG => B"0110",
      RXLPM_CFG1 => '0',
      RXLPM_CM_CFG => '0',
      RXLPM_GC_CFG => B"111100010",
      RXLPM_GC_CFG2 => B"001",
      RXLPM_HF_CFG => B"00001111110000",
      RXLPM_HF_CFG2 => B"01010",
      RXLPM_HF_CFG3 => B"0000",
      RXLPM_HOLD_DURING_EIDLE => '0',
      RXLPM_INCM_CFG => '1',
      RXLPM_IPCM_CFG => '0',
      RXLPM_LF_CFG => B"000000001111110000",
      RXLPM_LF_CFG2 => B"01010",
      RXLPM_OSINT_CFG => B"100",
      RXOOB_CFG => B"0000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOSCALRESET_TIMEOUT => B"00000",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"C00002",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"000",
      RXPI_CFG1 => '1',
      RXPI_CFG2 => '1',
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_BIAS_CFG => B"0000111100110011",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_EN => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_DATA_WIDTH => 40,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"00000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SATA_PLL_CFG => "VCO_3000MHZ",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "2.0",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOOB_CFG => '0',
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '0',
      TXPI_CFG4 => '0',
      TXPI_CFG5 => B"000",
      TXPI_GREY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"000",
      TXPMARESET_TIME => B"00001",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 5,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 40,
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0',
      USE_PCS_CLK_PHASE_SEL => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(14) => gtpe2_i_n_48,
      DMONITOROUT(13) => gtpe2_i_n_49,
      DMONITOROUT(12) => gtpe2_i_n_50,
      DMONITOROUT(11) => gtpe2_i_n_51,
      DMONITOROUT(10) => gtpe2_i_n_52,
      DMONITOROUT(9) => gtpe2_i_n_53,
      DMONITOROUT(8) => gtpe2_i_n_54,
      DMONITOROUT(7) => gtpe2_i_n_55,
      DMONITOROUT(6) => gtpe2_i_n_56,
      DMONITOROUT(5) => gtpe2_i_n_57,
      DMONITOROUT(4) => gtpe2_i_n_58,
      DMONITOROUT(3) => gtpe2_i_n_59,
      DMONITOROUT(2) => gtpe2_i_n_60,
      DMONITOROUT(1) => gtpe2_i_n_61,
      DMONITOROUT(0) => gtpe2_i_n_62,
      DRPADDR(8 downto 0) => DRPADDR_IN(8 downto 0),
      DRPCLK => drpclk_in,
      DRPDI(15 downto 0) => DRPDI_IN(15 downto 0),
      DRPDO(15 downto 0) => DRPDO_OUT(15 downto 0),
      DRPEN => DRPEN_IN,
      DRPRDY => \^fsm_sequential_state_reg[2]\,
      DRPWE => DRPWE_IN,
      EYESCANDATAERROR => gtpe2_i_n_1,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTPRXN => '0',
      GTPRXP => '0',
      GTPTXN => TXN,
      GTPTXP => TXP,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => GTRXRESET,
      GTTXRESET => gt_tx_reset_i,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15 downto 0) => NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtpe2_i_PHYSTATUS_UNCONNECTED,
      PLL0CLK => GT0_PLL0OUTCLK_IN,
      PLL0REFCLK => GT0_PLL0OUTREFCLK_IN,
      PLL1CLK => GT0_PLL1OUTCLK_IN,
      PLL1REFCLK => GT0_PLL1OUTREFCLK_IN,
      PMARSVDIN0 => '0',
      PMARSVDIN1 => '0',
      PMARSVDIN2 => '0',
      PMARSVDIN3 => '0',
      PMARSVDIN4 => '0',
      PMARSVDOUT0 => NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED,
      PMARSVDOUT1 => NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXADAPTSELTEST(13 downto 0) => B"00000000000000",
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => gtpe2_i_n_103,
      RXBUFSTATUS(1) => gtpe2_i_n_104,
      RXBUFSTATUS(0) => gtpe2_i_n_105,
      RXBYTEISALIGNED => gtpe2_i_n_7,
      RXBYTEREALIGN => gtpe2_i_n_8,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => gtpe2_i_n_9,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(3) => gtpe2_i_n_144,
      RXCHARISCOMMA(2) => gtpe2_i_n_145,
      RXCHARISCOMMA(1) => gtpe2_i_n_146,
      RXCHARISCOMMA(0) => gtpe2_i_n_147,
      RXCHARISK(3) => gtpe2_i_n_148,
      RXCHARISK(2) => gtpe2_i_n_149,
      RXCHARISK(1) => gtpe2_i_n_150,
      RXCHARISK(0) => gtpe2_i_n_151,
      RXCHBONDEN => '0',
      RXCHBONDI(3 downto 0) => B"0000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(3 downto 0) => NLW_gtpe2_i_RXCHBONDO_UNCONNECTED(3 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1) => gtpe2_i_n_95,
      RXCLKCORCNT(0) => gtpe2_i_n_96,
      RXCOMINITDET => NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtpe2_i_n_14,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(31) => gtpe2_i_n_112,
      RXDATA(30) => gtpe2_i_n_113,
      RXDATA(29) => gtpe2_i_n_114,
      RXDATA(28) => gtpe2_i_n_115,
      RXDATA(27) => gtpe2_i_n_116,
      RXDATA(26) => gtpe2_i_n_117,
      RXDATA(25) => gtpe2_i_n_118,
      RXDATA(24) => gtpe2_i_n_119,
      RXDATA(23) => gtpe2_i_n_120,
      RXDATA(22) => gtpe2_i_n_121,
      RXDATA(21) => gtpe2_i_n_122,
      RXDATA(20) => gtpe2_i_n_123,
      RXDATA(19) => gtpe2_i_n_124,
      RXDATA(18) => gtpe2_i_n_125,
      RXDATA(17) => gtpe2_i_n_126,
      RXDATA(16) => gtpe2_i_n_127,
      RXDATA(15) => gtpe2_i_n_128,
      RXDATA(14) => gtpe2_i_n_129,
      RXDATA(13) => gtpe2_i_n_130,
      RXDATA(12) => gtpe2_i_n_131,
      RXDATA(11) => gtpe2_i_n_132,
      RXDATA(10) => gtpe2_i_n_133,
      RXDATA(9) => gtpe2_i_n_134,
      RXDATA(8) => gtpe2_i_n_135,
      RXDATA(7) => gtpe2_i_n_136,
      RXDATA(6) => gtpe2_i_n_137,
      RXDATA(5) => gtpe2_i_n_138,
      RXDATA(4) => gtpe2_i_n_139,
      RXDATA(3) => gtpe2_i_n_140,
      RXDATA(2) => gtpe2_i_n_141,
      RXDATA(1) => gtpe2_i_n_142,
      RXDATA(0) => gtpe2_i_n_143,
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3) => gtpe2_i_n_156,
      RXDISPERR(2) => gtpe2_i_n_157,
      RXDISPERR(1) => gtpe2_i_n_158,
      RXDISPERR(0) => gtpe2_i_n_159,
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtpe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtpe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFOVRDEN => '0',
      RXLPMOSINTNTRLEN => '0',
      RXLPMRESET => '0',
      RXMCOMMAALIGNEN => '0',
      RXNOTINTABLE(3) => gtpe2_i_n_160,
      RXNOTINTABLE(2) => gtpe2_i_n_161,
      RXNOTINTABLE(1) => gtpe2_i_n_162,
      RXNOTINTABLE(0) => gtpe2_i_n_163,
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTCFG(3 downto 0) => B"0010",
      RXOSINTDONE => NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED,
      RXOSINTEN => '1',
      RXOSINTHOLD => '0',
      RXOSINTID0(3 downto 0) => B"0000",
      RXOSINTNTRLEN => '0',
      RXOSINTOVRDEN => '0',
      RXOSINTPD => '0',
      RXOSINTSTARTED => NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED,
      RXOSINTSTROBE => '0',
      RXOSINTSTROBEDONE => NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED,
      RXOSINTSTROBESTARTED => NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED,
      RXOSINTTESTOVRDEN => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtpe2_i_n_24,
      RXOUTCLKFABRIC => NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => '0',
      RXPCSRESET => '0',
      RXPD(1) => POWER_DOWN,
      RXPD(0) => POWER_DOWN,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPMARESETDONE => gtpe2_i_n_28,
      RXPOLARITY => '0',
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtpe2_i_n_29,
      RXPRBSSEL(2 downto 0) => B"000",
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtpe2_i_RXRATEDONE_UNCONNECTED,
      RXRATEMODE => '0',
      RXRESETDONE => gtpe2_i_n_31,
      RXSLIDE => '0',
      RXSTARTOFSEQ(1 downto 0) => NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED(1 downto 0),
      RXSTATUS(2 downto 0) => NLW_gtpe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYNCALLIN => '0',
      RXSYNCDONE => NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED,
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gtpe2_i_n_251,
      RXUSRCLK => sync_clk,
      RXUSRCLK2 => user_clk,
      RXVALID => NLW_gtpe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TX8B10BBYPASS(3 downto 0) => B"0000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => tx_buf_err_i,
      TXBUFSTATUS(0) => gtpe2_i_n_102,
      TXCHARDISPMODE(3 downto 0) => B"0000",
      TXCHARDISPVAL(3 downto 0) => B"0000",
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXCOMFINISH => NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => POWER_DOWN,
      TXGEARBOXREADY => NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => TX_OUT_CLK,
      TXOUTCLKFABRIC => gtpe2_i_n_39,
      TXOUTCLKPCS => gtpe2_i_n_40,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => '0',
      TXPD(1) => POWER_DOWN,
      TXPD(0) => POWER_DOWN,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPMARESETDONE => NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED,
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtpe2_i_TXRATEDONE_UNCONNECTED,
      TXRATEMODE => '0',
      TXRESETDONE => txfsm_txresetdone_r_reg,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED,
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt_txuserrdy_i,
      TXUSRCLK => sync_clk,
      TXUSRCLK2 => user_clk
    );
gtrxreset_seq_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gtrxreset_seq
     port map (
      GTRXRESET => GTRXRESET,
      drpclk_in => drpclk_in,
      gt_common_reset_out => gt_common_reset_out,
      gtrxreset_o_reg_0 => \^fsm_sequential_state_reg[2]\,
      in0 => gtpe2_i_n_28,
      init_clk_in => init_clk_in
    );
hard_err_flop_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_buf_err_i,
      I1 => ENABLE_ERR_DETECT,
      O => hard_err_flop_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_multi_gt is
  port (
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    TXN : out STD_LOGIC;
    TXP : out STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    txfsm_txresetdone_r_reg : out STD_LOGIC;
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hard_err_flop_r_reg : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    DRPEN_IN : in STD_LOGIC;
    DRPWE_IN : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    ENABLE_ERR_DETECT : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_multi_gt : entity is "system_aurora_8b10b_0_0_multi_gt";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_multi_gt;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_multi_gt is
begin
gt0_system_aurora_8b10b_0_0_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_gt
     port map (
      DRPADDR_IN(8 downto 0) => DRPADDR_IN(8 downto 0),
      DRPDI_IN(15 downto 0) => DRPDI_IN(15 downto 0),
      DRPDO_OUT(15 downto 0) => DRPDO_OUT(15 downto 0),
      DRPEN_IN => DRPEN_IN,
      DRPWE_IN => DRPWE_IN,
      ENABLE_ERR_DETECT => ENABLE_ERR_DETECT,
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_state_reg[2]\,
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      POWER_DOWN => POWER_DOWN,
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      TXN => TXN,
      TXP => TXP,
      TX_OUT_CLK => TX_OUT_CLK,
      drpclk_in => drpclk_in,
      gt_common_reset_out => gt_common_reset_out,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_flop_r_reg => hard_err_flop_r_reg,
      init_clk_in => init_clk_in,
      sync_clk => sync_clk,
      txfsm_txresetdone_r_reg => txfsm_txresetdone_r_reg,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_GT_WRAPPER is
  port (
    TX_RESETDONE_OUT : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    TXN : out STD_LOGIC;
    TXP : out STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt_common_reset_out : out STD_LOGIC;
    hard_err_flop_r_reg : out STD_LOGIC;
    gt_txresetdone_r2_reg : out STD_LOGIC;
    TX_LOCK : out STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    DRPEN_IN : in STD_LOGIC;
    DRPWE_IN : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    init_clk_in : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENABLE_ERR_DETECT : in STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_GT_WRAPPER : entity is "system_aurora_8b10b_0_0_GT_WRAPPER";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_GT_WRAPPER;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_GT_WRAPPER is
  signal gt0_txresetdone_r3_reg_srl3_n_0 : STD_LOGIC;
  signal \^gt_common_reset_out\ : STD_LOGIC;
  signal gt_tx_reset_i : STD_LOGIC;
  signal gt_txuserrdy_i : STD_LOGIC;
  signal system_aurora_8b10b_0_0_multi_gt_i_n_4 : STD_LOGIC;
  signal txfsm_txresetdone_r : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of gt0_txresetdone_r3_reg_srl3 : label is "U0/\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 ";
begin
  gt_common_reset_out <= \^gt_common_reset_out\;
gt0_txresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => system_aurora_8b10b_0_0_multi_gt_i_n_4,
      Q => gt0_txresetdone_r3_reg_srl3_n_0
    );
gt_txresetfsm_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_tx_startup_fsm
     port map (
      AR(0) => AR(0),
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      TX_LOCK => TX_LOCK,
      TX_RESETDONE_OUT => TX_RESETDONE_OUT,
      gt_common_reset_out => \^gt_common_reset_out\,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txresetdone_r2_reg => gt_txresetdone_r2_reg,
      gt_txuserrdy_i => gt_txuserrdy_i,
      init_clk_in => init_clk_in,
      quad1_common_lock_in => quad1_common_lock_in,
      txfsm_txresetdone_r => txfsm_txresetdone_r,
      user_clk => user_clk
    );
gtrxreset_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized6\
     port map (
      init_clk_in => init_clk_in,
      user_clk => user_clk
    );
system_aurora_8b10b_0_0_multi_gt_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_multi_gt
     port map (
      DRPADDR_IN(8 downto 0) => DRPADDR_IN(8 downto 0),
      DRPDI_IN(15 downto 0) => DRPDI_IN(15 downto 0),
      DRPDO_OUT(15 downto 0) => DRPDO_OUT(15 downto 0),
      DRPEN_IN => DRPEN_IN,
      DRPWE_IN => DRPWE_IN,
      ENABLE_ERR_DETECT => ENABLE_ERR_DETECT,
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_state_reg[2]\,
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      POWER_DOWN => POWER_DOWN,
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      TXN => TXN,
      TXP => TXP,
      TX_OUT_CLK => TX_OUT_CLK,
      drpclk_in => drpclk_in,
      gt_common_reset_out => \^gt_common_reset_out\,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_flop_r_reg => hard_err_flop_r_reg,
      init_clk_in => init_clk_in,
      sync_clk => sync_clk,
      txfsm_txresetdone_r_reg => system_aurora_8b10b_0_0_multi_gt_i_n_4,
      user_clk => user_clk
    );
txfsm_txresetdone_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gt0_txresetdone_r3_reg_srl3_n_0,
      Q => txfsm_txresetdone_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core is
  port (
    S_AXI_TX_TDATA : in STD_LOGIC_VECTOR ( 0 to 31 );
    S_AXI_TX_TKEEP : in STD_LOGIC_VECTOR ( 0 to 3 );
    S_AXI_TX_TVALID : in STD_LOGIC;
    S_AXI_TX_TREADY : out STD_LOGIC;
    S_AXI_TX_TLAST : in STD_LOGIC;
    TXP : out STD_LOGIC;
    TXN : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    TX_HARD_ERR : out STD_LOGIC;
    TX_CHANNEL_UP : out STD_LOGIC;
    TX_LANE_UP : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    TX_SYSTEM_RESET : in STD_LOGIC;
    TX_RESETDONE_OUT : out STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    GT_RESET : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DRPEN_IN : in STD_LOGIC;
    DRPRDY_OUT : out STD_LOGIC;
    DRPWE_IN : in STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    TX_LOCK : out STD_LOGIC;
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CC_FREQ_FACTOR : integer;
  attribute CC_FREQ_FACTOR of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core : entity is 12;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core : entity is "system_aurora_8b10b_0_0_core";
  attribute SIM_GTRESET_SPEEDUP : string;
  attribute SIM_GTRESET_SPEEDUP of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core : entity is "FALSE";
end system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core;

architecture STRUCTURE of system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core is
  signal DO_CC_I : STD_LOGIC;
  signal ENABLE_ERR_DETECT : STD_LOGIC;
  signal GEN_ECP_Buffer : STD_LOGIC;
  signal GEN_PAD_Buffer : STD_LOGIC_VECTOR ( 0 to 1 );
  signal GEN_SCP_Buffer : STD_LOGIC;
  signal RESET_SYMGEN : STD_LOGIC;
  signal TXCHARISK_IN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TXDATA_IN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^tx_channel_up\ : STD_LOGIC;
  signal \^tx_hard_err\ : STD_LOGIC;
  signal \^tx_lane_up\ : STD_LOGIC;
  signal \^tx_lock\ : STD_LOGIC;
  signal TX_PE_DATA_Buffer : STD_LOGIC_VECTOR ( 0 to 31 );
  signal TX_PE_DATA_V_Buffer : STD_LOGIC_VECTOR ( 0 to 1 );
  signal axi_to_ll_pdu_i_n_0 : STD_LOGIC;
  signal axi_to_ll_pdu_i_n_1 : STD_LOGIC;
  signal core_reset_logic_i_n_2 : STD_LOGIC;
  signal core_reset_logic_i_n_3 : STD_LOGIC;
  signal core_reset_logic_i_n_4 : STD_LOGIC;
  signal gen_a_i : STD_LOGIC;
  signal gen_cc_i : STD_LOGIC;
  signal gen_k_i : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gen_r_i : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gen_v_i : STD_LOGIC_VECTOR ( 1 to 3 );
  signal gt_reset_sync_init_clk : STD_LOGIC;
  signal gt_wrapper_i_n_22 : STD_LOGIC;
  signal gt_wrapper_i_n_23 : STD_LOGIC;
  signal new_pkt_r : STD_LOGIC;
  signal reset_sync_user_clk : STD_LOGIC;
  signal \simplex_timer_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \simplex_timer_r[0]_i_4_n_0\ : STD_LOGIC;
  signal simplex_timer_r_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \simplex_timer_r_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \simplex_timer_r_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \simplex_timer_r_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \simplex_timer_r_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \simplex_timer_r_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \simplex_timer_r_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \simplex_timer_r_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \simplex_timer_r_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \simplex_timer_r_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \simplex_timer_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \simplex_timer_r_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \simplex_timer_r_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \simplex_timer_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \simplex_timer_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^sys_reset_out\ : STD_LOGIC;
  signal system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i_n_6 : STD_LOGIC;
  signal system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_15 : STD_LOGIC;
  signal system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_16 : STD_LOGIC;
  signal tx_aligned_simplex_r : STD_LOGIC;
  signal tx_dst_rdy : STD_LOGIC;
  signal tx_reset_lanes_i : STD_LOGIC;
  signal tx_reset_simplex_r : STD_LOGIC;
  signal tx_reset_simplex_r_i_2_n_0 : STD_LOGIC;
  signal tx_reset_simplex_r_i_4_n_0 : STD_LOGIC;
  signal tx_reset_simplex_r_i_5_n_0 : STD_LOGIC;
  signal tx_reset_simplex_r_i_6_n_0 : STD_LOGIC;
  signal tx_reset_simplex_r_i_7_n_0 : STD_LOGIC;
  signal tx_reset_simplex_r_i_8_n_0 : STD_LOGIC;
  signal tx_verify_simplex_r : STD_LOGIC;
  signal tx_verify_simplex_r_i_2_n_0 : STD_LOGIC;
  signal tx_verify_simplex_r_i_3_n_0 : STD_LOGIC;
  signal tx_verify_simplex_r_i_4_n_0 : STD_LOGIC;
  signal tx_verify_simplex_r_i_5_n_0 : STD_LOGIC;
  signal \NLW_simplex_timer_r_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_simplex_timer_r_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of tx_reset_simplex_r_i_6 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of tx_verify_simplex_r_i_2 : label is "soft_lutpair35";
begin
  TX_CHANNEL_UP <= \^tx_channel_up\;
  TX_HARD_ERR <= \^tx_hard_err\;
  TX_LANE_UP <= \^tx_lane_up\;
  TX_LOCK <= \^tx_lock\;
  sys_reset_out <= \^sys_reset_out\;
axi_to_ll_pdu_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_AXI_TO_LL
     port map (
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      idle_r_reg => axi_to_ll_pdu_i_n_0,
      new_pkt_r => new_pkt_r,
      sof_to_data_r_reg => axi_to_ll_pdu_i_n_1,
      tx_dst_rdy => tx_dst_rdy,
      user_clk => user_clk
    );
core_reset_logic_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_RESET_LOGIC
     port map (
      CHANNEL_HARD_ERR_Buffer_reg => \^tx_hard_err\,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ => gt_wrapper_i_n_23,
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      RESET_SYMGEN => RESET_SYMGEN,
      TX_LOCK => \^tx_lock\,
      init_clk_in => init_clk_in,
      \out\ => reset_sync_user_clk,
      simplex_timer_r_reg(0) => simplex_timer_r_reg(9),
      \simplex_timer_r_reg[17]\ => core_reset_logic_i_n_2,
      \simplex_timer_r_reg[2]\ => tx_verify_simplex_r_i_2_n_0,
      simplex_timer_r_reg_0_sp_1 => tx_verify_simplex_r_i_3_n_0,
      sys_reset_out => \^sys_reset_out\,
      tx_aligned_simplex_r => tx_aligned_simplex_r,
      tx_aligned_simplex_r_reg => core_reset_logic_i_n_3,
      tx_reset_simplex_r => tx_reset_simplex_r,
      tx_verify_simplex_r => tx_verify_simplex_r,
      tx_verify_simplex_r_reg => core_reset_logic_i_n_4,
      user_clk => user_clk
    );
gt_reset_cdc_sync: entity work.\system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync__parameterized1\
     port map (
      AR(0) => gt_reset_sync_init_clk,
      GT_RESET => GT_RESET,
      init_clk_in => init_clk_in
    );
gt_wrapper_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_GT_WRAPPER
     port map (
      AR(0) => gt_reset_sync_init_clk,
      DRPADDR_IN(8 downto 0) => DRPADDR_IN(8 downto 0),
      DRPDI_IN(15 downto 0) => DRPDI_IN(15 downto 0),
      DRPDO_OUT(15 downto 0) => DRPDO_OUT(15 downto 0),
      DRPEN_IN => DRPEN_IN,
      DRPWE_IN => DRPWE_IN,
      ENABLE_ERR_DETECT => ENABLE_ERR_DETECT,
      \FSM_sequential_state_reg[2]\ => DRPRDY_OUT,
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      POWER_DOWN => POWER_DOWN,
      TXCHARISK(3 downto 0) => TXCHARISK_IN(3 downto 0),
      TXDATA(31 downto 0) => TXDATA_IN(31 downto 0),
      TXN => TXN,
      TXP => TXP,
      TX_LOCK => \^tx_lock\,
      TX_OUT_CLK => TX_OUT_CLK,
      TX_RESETDONE_OUT => TX_RESETDONE_OUT,
      drpclk_in => drpclk_in,
      gt_common_reset_out => gt_common_reset_out,
      gt_txresetdone_r2_reg => gt_wrapper_i_n_23,
      hard_err_flop_r_reg => gt_wrapper_i_n_22,
      init_clk_in => init_clk_in,
      quad1_common_lock_in => quad1_common_lock_in,
      sync_clk => sync_clk,
      user_clk => user_clk
    );
reset_sync_user_clk_cdc_sync: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_cdc_sync
     port map (
      TX_SYSTEM_RESET => TX_SYSTEM_RESET,
      \out\ => reset_sync_user_clk,
      user_clk => user_clk
    );
\simplex_timer_r[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_verify_simplex_r,
      O => \simplex_timer_r[0]_i_2_n_0\
    );
\simplex_timer_r[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => simplex_timer_r_reg(0),
      O => \simplex_timer_r[0]_i_4_n_0\
    );
\simplex_timer_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[0]_i_3_n_7\,
      Q => simplex_timer_r_reg(0),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \simplex_timer_r_reg[0]_i_3_n_0\,
      CO(2) => \simplex_timer_r_reg[0]_i_3_n_1\,
      CO(1) => \simplex_timer_r_reg[0]_i_3_n_2\,
      CO(0) => \simplex_timer_r_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \simplex_timer_r_reg[0]_i_3_n_4\,
      O(2) => \simplex_timer_r_reg[0]_i_3_n_5\,
      O(1) => \simplex_timer_r_reg[0]_i_3_n_6\,
      O(0) => \simplex_timer_r_reg[0]_i_3_n_7\,
      S(3 downto 1) => simplex_timer_r_reg(3 downto 1),
      S(0) => \simplex_timer_r[0]_i_4_n_0\
    );
\simplex_timer_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[8]_i_1_n_5\,
      Q => simplex_timer_r_reg(10),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[8]_i_1_n_4\,
      Q => simplex_timer_r_reg(11),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[12]_i_1_n_7\,
      Q => simplex_timer_r_reg(12),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \simplex_timer_r_reg[8]_i_1_n_0\,
      CO(3) => \simplex_timer_r_reg[12]_i_1_n_0\,
      CO(2) => \simplex_timer_r_reg[12]_i_1_n_1\,
      CO(1) => \simplex_timer_r_reg[12]_i_1_n_2\,
      CO(0) => \simplex_timer_r_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \simplex_timer_r_reg[12]_i_1_n_4\,
      O(2) => \simplex_timer_r_reg[12]_i_1_n_5\,
      O(1) => \simplex_timer_r_reg[12]_i_1_n_6\,
      O(0) => \simplex_timer_r_reg[12]_i_1_n_7\,
      S(3 downto 0) => simplex_timer_r_reg(15 downto 12)
    );
\simplex_timer_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[12]_i_1_n_6\,
      Q => simplex_timer_r_reg(13),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[12]_i_1_n_5\,
      Q => simplex_timer_r_reg(14),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[12]_i_1_n_4\,
      Q => simplex_timer_r_reg(15),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[16]_i_1_n_7\,
      Q => simplex_timer_r_reg(16),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \simplex_timer_r_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_simplex_timer_r_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \simplex_timer_r_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_simplex_timer_r_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \simplex_timer_r_reg[16]_i_1_n_6\,
      O(0) => \simplex_timer_r_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => simplex_timer_r_reg(17 downto 16)
    );
\simplex_timer_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[16]_i_1_n_6\,
      Q => simplex_timer_r_reg(17),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[0]_i_3_n_6\,
      Q => simplex_timer_r_reg(1),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[0]_i_3_n_5\,
      Q => simplex_timer_r_reg(2),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[0]_i_3_n_4\,
      Q => simplex_timer_r_reg(3),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[4]_i_1_n_7\,
      Q => simplex_timer_r_reg(4),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \simplex_timer_r_reg[0]_i_3_n_0\,
      CO(3) => \simplex_timer_r_reg[4]_i_1_n_0\,
      CO(2) => \simplex_timer_r_reg[4]_i_1_n_1\,
      CO(1) => \simplex_timer_r_reg[4]_i_1_n_2\,
      CO(0) => \simplex_timer_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \simplex_timer_r_reg[4]_i_1_n_4\,
      O(2) => \simplex_timer_r_reg[4]_i_1_n_5\,
      O(1) => \simplex_timer_r_reg[4]_i_1_n_6\,
      O(0) => \simplex_timer_r_reg[4]_i_1_n_7\,
      S(3 downto 0) => simplex_timer_r_reg(7 downto 4)
    );
\simplex_timer_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[4]_i_1_n_6\,
      Q => simplex_timer_r_reg(5),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[4]_i_1_n_5\,
      Q => simplex_timer_r_reg(6),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[4]_i_1_n_4\,
      Q => simplex_timer_r_reg(7),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[8]_i_1_n_7\,
      Q => simplex_timer_r_reg(8),
      R => core_reset_logic_i_n_2
    );
\simplex_timer_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \simplex_timer_r_reg[4]_i_1_n_0\,
      CO(3) => \simplex_timer_r_reg[8]_i_1_n_0\,
      CO(2) => \simplex_timer_r_reg[8]_i_1_n_1\,
      CO(1) => \simplex_timer_r_reg[8]_i_1_n_2\,
      CO(0) => \simplex_timer_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \simplex_timer_r_reg[8]_i_1_n_4\,
      O(2) => \simplex_timer_r_reg[8]_i_1_n_5\,
      O(1) => \simplex_timer_r_reg[8]_i_1_n_6\,
      O(0) => \simplex_timer_r_reg[8]_i_1_n_7\,
      S(3 downto 0) => simplex_timer_r_reg(11 downto 8)
    );
\simplex_timer_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \simplex_timer_r[0]_i_2_n_0\,
      D => \simplex_timer_r_reg[8]_i_1_n_6\,
      Q => simplex_timer_r_reg(9),
      R => core_reset_logic_i_n_2
    );
standard_cc_module_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_STANDARD_CC_MODULE
     port map (
      DO_CC_I => DO_CC_I,
      SYSTEM_RESET_reg => \^sys_reset_out\,
      user_clk => user_clk
    );
system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_AURORA_LANE_SIMPLEX_GTX_4BYTE
     port map (
      CHANNEL_HARD_ERR_Buffer_reg => system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i_n_6,
      D(1) => TX_PE_DATA_V_Buffer(0),
      D(0) => TX_PE_DATA_V_Buffer(1),
      ENABLE_ERR_DETECT => ENABLE_ERR_DETECT,
      ENABLE_ERR_DETECT_Buffer_reg => gt_wrapper_i_n_22,
      GEN_ECP_Buffer => GEN_ECP_Buffer,
      \GEN_PAD_Buffer_reg[0]\(1) => GEN_PAD_Buffer(0),
      \GEN_PAD_Buffer_reg[0]\(0) => GEN_PAD_Buffer(1),
      GEN_SCP_Buffer => GEN_SCP_Buffer,
      Q(31) => TX_PE_DATA_Buffer(0),
      Q(30) => TX_PE_DATA_Buffer(1),
      Q(29) => TX_PE_DATA_Buffer(2),
      Q(28) => TX_PE_DATA_Buffer(3),
      Q(27) => TX_PE_DATA_Buffer(4),
      Q(26) => TX_PE_DATA_Buffer(5),
      Q(25) => TX_PE_DATA_Buffer(6),
      Q(24) => TX_PE_DATA_Buffer(7),
      Q(23) => TX_PE_DATA_Buffer(8),
      Q(22) => TX_PE_DATA_Buffer(9),
      Q(21) => TX_PE_DATA_Buffer(10),
      Q(20) => TX_PE_DATA_Buffer(11),
      Q(19) => TX_PE_DATA_Buffer(12),
      Q(18) => TX_PE_DATA_Buffer(13),
      Q(17) => TX_PE_DATA_Buffer(14),
      Q(16) => TX_PE_DATA_Buffer(15),
      Q(15) => TX_PE_DATA_Buffer(16),
      Q(14) => TX_PE_DATA_Buffer(17),
      Q(13) => TX_PE_DATA_Buffer(18),
      Q(12) => TX_PE_DATA_Buffer(19),
      Q(11) => TX_PE_DATA_Buffer(20),
      Q(10) => TX_PE_DATA_Buffer(21),
      Q(9) => TX_PE_DATA_Buffer(22),
      Q(8) => TX_PE_DATA_Buffer(23),
      Q(7) => TX_PE_DATA_Buffer(24),
      Q(6) => TX_PE_DATA_Buffer(25),
      Q(5) => TX_PE_DATA_Buffer(26),
      Q(4) => TX_PE_DATA_Buffer(27),
      Q(3) => TX_PE_DATA_Buffer(28),
      Q(2) => TX_PE_DATA_Buffer(29),
      Q(1) => TX_PE_DATA_Buffer(30),
      Q(0) => TX_PE_DATA_Buffer(31),
      TXCHARISK(3 downto 0) => TXCHARISK_IN(3 downto 0),
      TXDATA(31 downto 0) => TXDATA_IN(31 downto 0),
      TX_LANE_UP => \^tx_lane_up\,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_k_flop_0_i(3) => gen_k_i(0),
      gen_k_flop_0_i(2) => gen_k_i(1),
      gen_k_flop_0_i(1) => gen_k_i(2),
      gen_k_flop_0_i(0) => gen_k_i(3),
      gen_r_flop_0_i(3) => gen_r_i(0),
      gen_r_flop_0_i(2) => gen_r_i(1),
      gen_r_flop_0_i(1) => gen_r_i(2),
      gen_r_flop_0_i(0) => gen_r_i(3),
      gen_v_flop_1_i(2) => gen_v_i(1),
      gen_v_flop_1_i(1) => gen_v_i(2),
      gen_v_flop_1_i(0) => gen_v_i(3),
      tx_aligned_simplex_r => tx_aligned_simplex_r,
      tx_reset_lanes_i => tx_reset_lanes_i,
      user_clk => user_clk
    );
system_aurora_8b10b_0_0_tx_global_logic_simplex_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_GLOBAL_LOGIC_SIMPLEX
     port map (
      POWER_DOWN => POWER_DOWN,
      SYSTEM_RESET_reg => \^sys_reset_out\,
      TX_CHANNEL_UP => \^tx_channel_up\,
      TX_HARD_ERR => \^tx_hard_err\,
      TX_LANE_UP => \^tx_lane_up\,
      gen_a_i => gen_a_i,
      \gen_k_r_reg[0]\(3) => gen_k_i(0),
      \gen_k_r_reg[0]\(2) => gen_k_i(1),
      \gen_k_r_reg[0]\(1) => gen_k_i(2),
      \gen_k_r_reg[0]\(0) => gen_k_i(3),
      \gen_r_r_reg[0]\(3) => gen_r_i(0),
      \gen_r_r_reg[0]\(2) => gen_r_i(1),
      \gen_r_r_reg[0]\(1) => gen_r_i(2),
      \gen_r_r_reg[0]\(0) => gen_r_i(3),
      \gen_v_r_reg[1]\(2) => gen_v_i(1),
      \gen_v_r_reg[1]\(1) => gen_v_i(2),
      \gen_v_r_reg[1]\(0) => gen_v_i(3),
      hard_err_flop_r_reg => system_aurora_8b10b_0_0_tx_aurora_lane_simplex_gtx_4byte_0_i_n_6,
      in_frame_r_reg => system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_16,
      simplex_timer_r_reg(0) => simplex_timer_r_reg(0),
      \simplex_timer_r_reg[11]\ => tx_reset_simplex_r_i_2_n_0,
      \simplex_timer_r_reg[11]_0\ => tx_reset_simplex_r_i_4_n_0,
      \simplex_timer_r_reg[8]\ => tx_reset_simplex_r_i_5_n_0,
      tx_reset_lanes_i => tx_reset_lanes_i,
      tx_reset_simplex_r => tx_reset_simplex_r,
      tx_reset_simplex_r_reg => system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_15,
      tx_verify_simplex_r => tx_verify_simplex_r,
      user_clk => user_clk
    );
system_aurora_8b10b_0_0_tx_ll_i: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_TX_LL
     port map (
      D(1) => TX_PE_DATA_V_Buffer(0),
      D(0) => TX_PE_DATA_V_Buffer(1),
      DO_CC_I => DO_CC_I,
      GEN_ECP_Buffer => GEN_ECP_Buffer,
      GEN_SCP_Buffer => GEN_SCP_Buffer,
      Q(31) => TX_PE_DATA_Buffer(0),
      Q(30) => TX_PE_DATA_Buffer(1),
      Q(29) => TX_PE_DATA_Buffer(2),
      Q(28) => TX_PE_DATA_Buffer(3),
      Q(27) => TX_PE_DATA_Buffer(4),
      Q(26) => TX_PE_DATA_Buffer(5),
      Q(25) => TX_PE_DATA_Buffer(6),
      Q(24) => TX_PE_DATA_Buffer(7),
      Q(23) => TX_PE_DATA_Buffer(8),
      Q(22) => TX_PE_DATA_Buffer(9),
      Q(21) => TX_PE_DATA_Buffer(10),
      Q(20) => TX_PE_DATA_Buffer(11),
      Q(19) => TX_PE_DATA_Buffer(12),
      Q(18) => TX_PE_DATA_Buffer(13),
      Q(17) => TX_PE_DATA_Buffer(14),
      Q(16) => TX_PE_DATA_Buffer(15),
      Q(15) => TX_PE_DATA_Buffer(16),
      Q(14) => TX_PE_DATA_Buffer(17),
      Q(13) => TX_PE_DATA_Buffer(18),
      Q(12) => TX_PE_DATA_Buffer(19),
      Q(11) => TX_PE_DATA_Buffer(20),
      Q(10) => TX_PE_DATA_Buffer(21),
      Q(9) => TX_PE_DATA_Buffer(22),
      Q(8) => TX_PE_DATA_Buffer(23),
      Q(7) => TX_PE_DATA_Buffer(24),
      Q(6) => TX_PE_DATA_Buffer(25),
      Q(5) => TX_PE_DATA_Buffer(26),
      Q(4) => TX_PE_DATA_Buffer(27),
      Q(3) => TX_PE_DATA_Buffer(28),
      Q(2) => TX_PE_DATA_Buffer(29),
      Q(1) => TX_PE_DATA_Buffer(30),
      Q(0) => TX_PE_DATA_Buffer(31),
      RESET_SYMGEN => RESET_SYMGEN,
      S_AXI_TX_TDATA(0 to 31) => S_AXI_TX_TDATA(0 to 31),
      S_AXI_TX_TKEEP(0 to 3) => S_AXI_TX_TKEEP(0 to 3),
      S_AXI_TX_TLAST => S_AXI_TX_TLAST,
      S_AXI_TX_TREADY => S_AXI_TX_TREADY,
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      TX_CHANNEL_UP => \^tx_channel_up\,
      gen_cc_i => gen_cc_i,
      \gen_pad_r_reg[0]\(1) => GEN_PAD_Buffer(0),
      \gen_pad_r_reg[0]\(0) => GEN_PAD_Buffer(1),
      new_pkt_r => new_pkt_r,
      new_pkt_r_reg => axi_to_ll_pdu_i_n_0,
      new_pkt_r_reg_0 => axi_to_ll_pdu_i_n_1,
      tx_channel_up_i => system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_16,
      tx_dst_rdy => tx_dst_rdy,
      user_clk => user_clk
    );
tx_aligned_simplex_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => core_reset_logic_i_n_3,
      Q => tx_aligned_simplex_r,
      R => '0'
    );
tx_reset_simplex_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => tx_verify_simplex_r_i_4_n_0,
      I1 => tx_reset_simplex_r_i_6_n_0,
      I2 => simplex_timer_r_reg(11),
      I3 => simplex_timer_r_reg(10),
      I4 => simplex_timer_r_reg(9),
      I5 => tx_reset_simplex_r_i_7_n_0,
      O => tx_reset_simplex_r_i_2_n_0
    );
tx_reset_simplex_r_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => tx_reset_simplex_r_i_8_n_0,
      I1 => simplex_timer_r_reg(11),
      I2 => simplex_timer_r_reg(10),
      I3 => simplex_timer_r_reg(9),
      I4 => tx_reset_simplex_r_i_7_n_0,
      O => tx_reset_simplex_r_i_4_n_0
    );
tx_reset_simplex_r_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => simplex_timer_r_reg(8),
      I1 => simplex_timer_r_reg(2),
      O => tx_reset_simplex_r_i_5_n_0
    );
tx_reset_simplex_r_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => simplex_timer_r_reg(0),
      I1 => simplex_timer_r_reg(1),
      I2 => simplex_timer_r_reg(2),
      I3 => simplex_timer_r_reg(8),
      I4 => simplex_timer_r_reg(3),
      O => tx_reset_simplex_r_i_6_n_0
    );
tx_reset_simplex_r_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => simplex_timer_r_reg(12),
      I1 => simplex_timer_r_reg(13),
      I2 => simplex_timer_r_reg(14),
      I3 => simplex_timer_r_reg(15),
      I4 => simplex_timer_r_reg(17),
      I5 => simplex_timer_r_reg(16),
      O => tx_reset_simplex_r_i_7_n_0
    );
tx_reset_simplex_r_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => simplex_timer_r_reg(4),
      I1 => simplex_timer_r_reg(7),
      I2 => simplex_timer_r_reg(5),
      I3 => simplex_timer_r_reg(6),
      I4 => simplex_timer_r_reg(3),
      I5 => simplex_timer_r_reg(1),
      O => tx_reset_simplex_r_i_8_n_0
    );
tx_reset_simplex_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => system_aurora_8b10b_0_0_tx_global_logic_simplex_i_n_15,
      Q => tx_reset_simplex_r,
      R => '0'
    );
tx_verify_simplex_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => simplex_timer_r_reg(2),
      I1 => simplex_timer_r_reg(1),
      I2 => simplex_timer_r_reg(3),
      O => tx_verify_simplex_r_i_2_n_0
    );
tx_verify_simplex_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => tx_verify_simplex_r_i_4_n_0,
      I1 => simplex_timer_r_reg(0),
      I2 => simplex_timer_r_reg(8),
      I3 => simplex_timer_r_reg(11),
      I4 => simplex_timer_r_reg(10),
      I5 => tx_verify_simplex_r_i_5_n_0,
      O => tx_verify_simplex_r_i_3_n_0
    );
tx_verify_simplex_r_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => simplex_timer_r_reg(4),
      I1 => simplex_timer_r_reg(7),
      I2 => simplex_timer_r_reg(5),
      I3 => simplex_timer_r_reg(6),
      O => tx_verify_simplex_r_i_4_n_0
    );
tx_verify_simplex_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => simplex_timer_r_reg(13),
      I1 => simplex_timer_r_reg(12),
      I2 => simplex_timer_r_reg(14),
      I3 => simplex_timer_r_reg(15),
      I4 => simplex_timer_r_reg(16),
      I5 => simplex_timer_r_reg(17),
      O => tx_verify_simplex_r_i_5_n_0
    );
tx_verify_simplex_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => core_reset_logic_i_n_4,
      Q => tx_verify_simplex_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_aurora_8b10b_0_0 is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tlast : in STD_LOGIC;
    txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_refclk1 : in STD_LOGIC;
    tx_hard_err : out STD_LOGIC;
    tx_lane_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_channel_up : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    tx_system_reset : in STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt_reset : in STD_LOGIC;
    tx_lock : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    pll_not_locked : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_aurora_8b10b_0_0 : entity is true;
end system_aurora_8b10b_0_0;

architecture STRUCTURE of system_aurora_8b10b_0_0 is
  signal NLW_U0_DRPRDY_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_DRPDO_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CC_FREQ_FACTOR : integer;
  attribute CC_FREQ_FACTOR of U0 : label is 12;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of U0 : label is 0;
  attribute SIM_GTRESET_SPEEDUP : string;
  attribute SIM_GTRESET_SPEEDUP of U0 : label is "FALSE";
begin
U0: entity work.system_aurora_8b10b_0_0_system_aurora_8b10b_0_0_core
     port map (
      DRPADDR_IN(8 downto 0) => B"000000000",
      DRPDI_IN(15 downto 0) => B"0000000000000000",
      DRPDO_OUT(15 downto 0) => NLW_U0_DRPDO_OUT_UNCONNECTED(15 downto 0),
      DRPEN_IN => '0',
      DRPRDY_OUT => NLW_U0_DRPRDY_OUT_UNCONNECTED,
      DRPWE_IN => '0',
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      GT_RESET => gt_reset,
      LOOPBACK(2 downto 0) => loopback(2 downto 0),
      PLL_NOT_LOCKED => pll_not_locked,
      POWER_DOWN => power_down,
      S_AXI_TX_TDATA(0 to 31) => s_axi_tx_tdata(0 to 31),
      S_AXI_TX_TKEEP(0 to 3) => s_axi_tx_tkeep(0 to 3),
      S_AXI_TX_TLAST => s_axi_tx_tlast,
      S_AXI_TX_TREADY => s_axi_tx_tready,
      S_AXI_TX_TVALID => s_axi_tx_tvalid,
      TXN => txn(0),
      TXP => txp(0),
      TX_CHANNEL_UP => tx_channel_up,
      TX_HARD_ERR => tx_hard_err,
      TX_LANE_UP => tx_lane_up(0),
      TX_LOCK => tx_lock,
      TX_OUT_CLK => tx_out_clk,
      TX_RESETDONE_OUT => tx_resetdone_out,
      TX_SYSTEM_RESET => tx_system_reset,
      drpclk_in => drpclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt_common_reset_out => gt_common_reset_out,
      gt_refclk1 => gt_refclk1,
      init_clk_in => init_clk_in,
      quad1_common_lock_in => quad1_common_lock_in,
      sync_clk => sync_clk,
      sys_reset_out => sys_reset_out,
      user_clk => user_clk
    );
end STRUCTURE;
