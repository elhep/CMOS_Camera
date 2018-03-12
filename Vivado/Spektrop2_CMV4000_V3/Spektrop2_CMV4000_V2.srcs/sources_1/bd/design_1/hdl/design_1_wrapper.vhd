--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sun Mar 11 11:43:19 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_0_tlast : out STD_LOGIC;
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    axis_enable_0 : in STD_LOGIC;
    vid_io_in_0_active_video : in STD_LOGIC;
    vid_io_in_0_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    vid_io_in_0_field : in STD_LOGIC;
    vid_io_in_0_hblank : in STD_LOGIC;
    vid_io_in_0_hsync : in STD_LOGIC;
    vid_io_in_0_vblank : in STD_LOGIC;
    vid_io_in_0_vsync : in STD_LOGIC;
    vid_io_in_1_active_video : in STD_LOGIC;
    vid_io_in_1_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    vid_io_in_1_field : in STD_LOGIC;
    vid_io_in_1_hblank : in STD_LOGIC;
    vid_io_in_1_hsync : in STD_LOGIC;
    vid_io_in_1_vblank : in STD_LOGIC;
    vid_io_in_1_vsync : in STD_LOGIC;
    vid_io_in_ce_0 : in STD_LOGIC;
    vid_io_in_clk_0 : in STD_LOGIC;
    vid_io_in_reset_0 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    vid_io_in_0_active_video : in STD_LOGIC;
    vid_io_in_0_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    vid_io_in_0_field : in STD_LOGIC;
    vid_io_in_0_hblank : in STD_LOGIC;
    vid_io_in_0_hsync : in STD_LOGIC;
    vid_io_in_0_vblank : in STD_LOGIC;
    vid_io_in_0_vsync : in STD_LOGIC;
    vid_io_in_1_active_video : in STD_LOGIC;
    vid_io_in_1_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    vid_io_in_1_field : in STD_LOGIC;
    vid_io_in_1_hblank : in STD_LOGIC;
    vid_io_in_1_hsync : in STD_LOGIC;
    vid_io_in_1_vblank : in STD_LOGIC;
    vid_io_in_1_vsync : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_0_tlast : out STD_LOGIC;
    vid_io_in_clk_0 : in STD_LOGIC;
    vid_io_in_ce_0 : in STD_LOGIC;
    vid_io_in_reset_0 : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    axis_enable_0 : in STD_LOGIC;
    aclk_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      M_AXIS_0_tdata(31 downto 0) => M_AXIS_0_tdata(31 downto 0),
      M_AXIS_0_tlast => M_AXIS_0_tlast,
      M_AXIS_0_tready => M_AXIS_0_tready,
      M_AXIS_0_tvalid => M_AXIS_0_tvalid,
      aclk_0 => aclk_0,
      aclken_0 => aclken_0,
      aresetn_0 => aresetn_0,
      axis_enable_0 => axis_enable_0,
      vid_io_in_0_active_video => vid_io_in_0_active_video,
      vid_io_in_0_data(95 downto 0) => vid_io_in_0_data(95 downto 0),
      vid_io_in_0_field => vid_io_in_0_field,
      vid_io_in_0_hblank => vid_io_in_0_hblank,
      vid_io_in_0_hsync => vid_io_in_0_hsync,
      vid_io_in_0_vblank => vid_io_in_0_vblank,
      vid_io_in_0_vsync => vid_io_in_0_vsync,
      vid_io_in_1_active_video => vid_io_in_1_active_video,
      vid_io_in_1_data(95 downto 0) => vid_io_in_1_data(95 downto 0),
      vid_io_in_1_field => vid_io_in_1_field,
      vid_io_in_1_hblank => vid_io_in_1_hblank,
      vid_io_in_1_hsync => vid_io_in_1_hsync,
      vid_io_in_1_vblank => vid_io_in_1_vblank,
      vid_io_in_1_vsync => vid_io_in_1_vsync,
      vid_io_in_ce_0 => vid_io_in_ce_0,
      vid_io_in_clk_0 => vid_io_in_clk_0,
      vid_io_in_reset_0 => vid_io_in_reset_0
    );
end STRUCTURE;
