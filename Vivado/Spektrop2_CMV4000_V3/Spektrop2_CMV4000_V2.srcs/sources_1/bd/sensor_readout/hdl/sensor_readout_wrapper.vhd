--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Wed Mar  7 07:39:45 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target sensor_readout_wrapper.bd
--Design      : sensor_readout_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sensor_readout_wrapper is
  port (
    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_0_tlast : out STD_LOGIC;
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    axis_enable_0 : in STD_LOGIC;
    fid_0 : out STD_LOGIC;
    fid_1 : out STD_LOGIC;
    overflow_0 : out STD_LOGIC;
    overflow_1 : out STD_LOGIC;
    underflow_0 : out STD_LOGIC;
    underflow_1 : out STD_LOGIC;
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
    vid_io_in_reset_0 : in STD_LOGIC;
    vtiming_out_0_active_video : out STD_LOGIC;
    vtiming_out_0_field : out STD_LOGIC;
    vtiming_out_0_hblank : out STD_LOGIC;
    vtiming_out_0_hsync : out STD_LOGIC;
    vtiming_out_0_vblank : out STD_LOGIC;
    vtiming_out_0_vsync : out STD_LOGIC;
    vtiming_out_1_active_video : out STD_LOGIC;
    vtiming_out_1_field : out STD_LOGIC;
    vtiming_out_1_hblank : out STD_LOGIC;
    vtiming_out_1_hsync : out STD_LOGIC;
    vtiming_out_1_vblank : out STD_LOGIC;
    vtiming_out_1_vsync : out STD_LOGIC
  );
end sensor_readout_wrapper;

architecture STRUCTURE of sensor_readout_wrapper is
  component sensor_readout is
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
    vid_io_in_ce_0 : in STD_LOGIC;
    vid_io_in_reset_0 : in STD_LOGIC;
    vid_io_in_clk_0 : in STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn_0 : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    axis_enable_0 : in STD_LOGIC;
    fid_0 : out STD_LOGIC;
    overflow_0 : out STD_LOGIC;
    underflow_0 : out STD_LOGIC;
    vtiming_out_0_active_video : out STD_LOGIC;
    vtiming_out_0_field : out STD_LOGIC;
    vtiming_out_0_hblank : out STD_LOGIC;
    vtiming_out_0_hsync : out STD_LOGIC;
    vtiming_out_0_vblank : out STD_LOGIC;
    vtiming_out_0_vsync : out STD_LOGIC;
    overflow_1 : out STD_LOGIC;
    fid_1 : out STD_LOGIC;
    underflow_1 : out STD_LOGIC;
    vtiming_out_1_active_video : out STD_LOGIC;
    vtiming_out_1_field : out STD_LOGIC;
    vtiming_out_1_hblank : out STD_LOGIC;
    vtiming_out_1_hsync : out STD_LOGIC;
    vtiming_out_1_vblank : out STD_LOGIC;
    vtiming_out_1_vsync : out STD_LOGIC;
    M_AXIS_0_tlast : out STD_LOGIC
  );
  end component sensor_readout;
begin
sensor_readout_i: component sensor_readout
     port map (
      M_AXIS_0_tdata(31 downto 0) => M_AXIS_0_tdata(31 downto 0),
      M_AXIS_0_tlast => M_AXIS_0_tlast,
      M_AXIS_0_tready => M_AXIS_0_tready,
      M_AXIS_0_tvalid => M_AXIS_0_tvalid,
      aclk_0 => aclk_0,
      aclken_0 => aclken_0,
      aresetn_0 => aresetn_0,
      axis_enable_0 => axis_enable_0,
      fid_0 => fid_0,
      fid_1 => fid_1,
      overflow_0 => overflow_0,
      overflow_1 => overflow_1,
      underflow_0 => underflow_0,
      underflow_1 => underflow_1,
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
      vid_io_in_reset_0 => vid_io_in_reset_0,
      vtiming_out_0_active_video => vtiming_out_0_active_video,
      vtiming_out_0_field => vtiming_out_0_field,
      vtiming_out_0_hblank => vtiming_out_0_hblank,
      vtiming_out_0_hsync => vtiming_out_0_hsync,
      vtiming_out_0_vblank => vtiming_out_0_vblank,
      vtiming_out_0_vsync => vtiming_out_0_vsync,
      vtiming_out_1_active_video => vtiming_out_1_active_video,
      vtiming_out_1_field => vtiming_out_1_field,
      vtiming_out_1_hblank => vtiming_out_1_hblank,
      vtiming_out_1_hsync => vtiming_out_1_hsync,
      vtiming_out_1_vblank => vtiming_out_1_vblank,
      vtiming_out_1_vsync => vtiming_out_1_vsync
    );
end STRUCTURE;
