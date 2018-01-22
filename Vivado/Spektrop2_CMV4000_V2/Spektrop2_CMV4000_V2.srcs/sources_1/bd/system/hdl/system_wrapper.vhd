--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Jan 22 01:27:40 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    M_AXI_GP0_0_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_arready : in STD_LOGIC;
    M_AXI_GP0_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_arvalid : out STD_LOGIC;
    M_AXI_GP0_0_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_awready : in STD_LOGIC;
    M_AXI_GP0_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_awvalid : out STD_LOGIC;
    M_AXI_GP0_0_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_bready : out STD_LOGIC;
    M_AXI_GP0_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_bvalid : in STD_LOGIC;
    M_AXI_GP0_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_0_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_rlast : in STD_LOGIC;
    M_AXI_GP0_0_rready : out STD_LOGIC;
    M_AXI_GP0_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_rvalid : in STD_LOGIC;
    M_AXI_GP0_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_0_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_wlast : out STD_LOGIC;
    M_AXI_GP0_0_wready : in STD_LOGIC;
    M_AXI_GP0_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_wvalid : out STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    M_AXI_GP0_0_arvalid : out STD_LOGIC;
    M_AXI_GP0_0_awvalid : out STD_LOGIC;
    M_AXI_GP0_0_bready : out STD_LOGIC;
    M_AXI_GP0_0_rready : out STD_LOGIC;
    M_AXI_GP0_0_wlast : out STD_LOGIC;
    M_AXI_GP0_0_wvalid : out STD_LOGIC;
    M_AXI_GP0_0_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_0_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_0_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_0_arready : in STD_LOGIC;
    M_AXI_GP0_0_awready : in STD_LOGIC;
    M_AXI_GP0_0_bvalid : in STD_LOGIC;
    M_AXI_GP0_0_rlast : in STD_LOGIC;
    M_AXI_GP0_0_rvalid : in STD_LOGIC;
    M_AXI_GP0_0_wready : in STD_LOGIC;
    M_AXI_GP0_0_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system;
begin
system_i: component system
     port map (
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      M_AXI_GP0_0_araddr(31 downto 0) => M_AXI_GP0_0_araddr(31 downto 0),
      M_AXI_GP0_0_arburst(1 downto 0) => M_AXI_GP0_0_arburst(1 downto 0),
      M_AXI_GP0_0_arcache(3 downto 0) => M_AXI_GP0_0_arcache(3 downto 0),
      M_AXI_GP0_0_arid(11 downto 0) => M_AXI_GP0_0_arid(11 downto 0),
      M_AXI_GP0_0_arlen(3 downto 0) => M_AXI_GP0_0_arlen(3 downto 0),
      M_AXI_GP0_0_arlock(1 downto 0) => M_AXI_GP0_0_arlock(1 downto 0),
      M_AXI_GP0_0_arprot(2 downto 0) => M_AXI_GP0_0_arprot(2 downto 0),
      M_AXI_GP0_0_arqos(3 downto 0) => M_AXI_GP0_0_arqos(3 downto 0),
      M_AXI_GP0_0_arready => M_AXI_GP0_0_arready,
      M_AXI_GP0_0_arsize(2 downto 0) => M_AXI_GP0_0_arsize(2 downto 0),
      M_AXI_GP0_0_arvalid => M_AXI_GP0_0_arvalid,
      M_AXI_GP0_0_awaddr(31 downto 0) => M_AXI_GP0_0_awaddr(31 downto 0),
      M_AXI_GP0_0_awburst(1 downto 0) => M_AXI_GP0_0_awburst(1 downto 0),
      M_AXI_GP0_0_awcache(3 downto 0) => M_AXI_GP0_0_awcache(3 downto 0),
      M_AXI_GP0_0_awid(11 downto 0) => M_AXI_GP0_0_awid(11 downto 0),
      M_AXI_GP0_0_awlen(3 downto 0) => M_AXI_GP0_0_awlen(3 downto 0),
      M_AXI_GP0_0_awlock(1 downto 0) => M_AXI_GP0_0_awlock(1 downto 0),
      M_AXI_GP0_0_awprot(2 downto 0) => M_AXI_GP0_0_awprot(2 downto 0),
      M_AXI_GP0_0_awqos(3 downto 0) => M_AXI_GP0_0_awqos(3 downto 0),
      M_AXI_GP0_0_awready => M_AXI_GP0_0_awready,
      M_AXI_GP0_0_awsize(2 downto 0) => M_AXI_GP0_0_awsize(2 downto 0),
      M_AXI_GP0_0_awvalid => M_AXI_GP0_0_awvalid,
      M_AXI_GP0_0_bid(11 downto 0) => M_AXI_GP0_0_bid(11 downto 0),
      M_AXI_GP0_0_bready => M_AXI_GP0_0_bready,
      M_AXI_GP0_0_bresp(1 downto 0) => M_AXI_GP0_0_bresp(1 downto 0),
      M_AXI_GP0_0_bvalid => M_AXI_GP0_0_bvalid,
      M_AXI_GP0_0_rdata(31 downto 0) => M_AXI_GP0_0_rdata(31 downto 0),
      M_AXI_GP0_0_rid(11 downto 0) => M_AXI_GP0_0_rid(11 downto 0),
      M_AXI_GP0_0_rlast => M_AXI_GP0_0_rlast,
      M_AXI_GP0_0_rready => M_AXI_GP0_0_rready,
      M_AXI_GP0_0_rresp(1 downto 0) => M_AXI_GP0_0_rresp(1 downto 0),
      M_AXI_GP0_0_rvalid => M_AXI_GP0_0_rvalid,
      M_AXI_GP0_0_wdata(31 downto 0) => M_AXI_GP0_0_wdata(31 downto 0),
      M_AXI_GP0_0_wid(11 downto 0) => M_AXI_GP0_0_wid(11 downto 0),
      M_AXI_GP0_0_wlast => M_AXI_GP0_0_wlast,
      M_AXI_GP0_0_wready => M_AXI_GP0_0_wready,
      M_AXI_GP0_0_wstrb(3 downto 0) => M_AXI_GP0_0_wstrb(3 downto 0),
      M_AXI_GP0_0_wvalid => M_AXI_GP0_0_wvalid
    );
end STRUCTURE;
