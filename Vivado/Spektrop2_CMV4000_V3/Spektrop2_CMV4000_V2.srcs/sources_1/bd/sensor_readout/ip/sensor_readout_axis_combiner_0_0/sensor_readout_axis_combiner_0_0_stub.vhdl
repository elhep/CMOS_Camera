-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Mar  7 07:38:27 2018
-- Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V3/Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ip/sensor_readout_axis_combiner_0_0/sensor_readout_axis_combiner_0_0_stub.vhdl
-- Design      : sensor_readout_axis_combiner_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sensor_readout_axis_combiner_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end sensor_readout_axis_combiner_0_0;

architecture stub of sensor_readout_axis_combiner_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid[1:0],s_axis_tready[1:0],s_axis_tdata[127:0],s_axis_tlast[1:0],s_axis_tuser[1:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[127:0],m_axis_tlast,m_axis_tuser[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_combiner_v1_1_14_top,Vivado 2017.4";
begin
end;
