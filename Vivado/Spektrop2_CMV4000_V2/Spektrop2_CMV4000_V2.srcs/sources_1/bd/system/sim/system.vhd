--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Jan 22 01:27:40 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_processing_system7_0_0 is
  port (
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_ARREADY : out STD_LOGIC;
    S_AXI_GP0_AWREADY : out STD_LOGIC;
    S_AXI_GP0_BVALID : out STD_LOGIC;
    S_AXI_GP0_RLAST : out STD_LOGIC;
    S_AXI_GP0_RVALID : out STD_LOGIC;
    S_AXI_GP0_WREADY : out STD_LOGIC;
    S_AXI_GP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_ACLK : in STD_LOGIC;
    S_AXI_GP0_ARVALID : in STD_LOGIC;
    S_AXI_GP0_AWVALID : in STD_LOGIC;
    S_AXI_GP0_BREADY : in STD_LOGIC;
    S_AXI_GP0_RREADY : in STD_LOGIC;
    S_AXI_GP0_WLAST : in STD_LOGIC;
    S_AXI_GP0_WVALID : in STD_LOGIC;
    S_AXI_GP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component system_processing_system7_0_0;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_GP0_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_GP0_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_GP0_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_GP0_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_GP0_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_GP0_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_GP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_GP0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_GP0_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_S_AXI_GP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_GP0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 BREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 BVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 RLAST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 RREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 RVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 WLAST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 WREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 WVALID";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_mio : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARADDR";
  attribute X_INTERFACE_PARAMETER of M_AXI_GP0_0_araddr : signal is "XIL_INTERFACENAME M_AXI_GP0_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 12, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 4, PHASE 0.000, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARBURST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARCACHE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARLEN";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARLOCK";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARPROT";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARQOS";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 ARSIZE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWBURST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWCACHE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWLEN";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWLOCK";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWQOS";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 AWSIZE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 BID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 BRESP";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 RDATA";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 RID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 RRESP";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 WDATA";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_wid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 WID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_0_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0_0 WSTRB";
begin
  M_AXI_GP0_0_araddr(31 downto 0) <= processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0);
  M_AXI_GP0_0_arburst(1 downto 0) <= processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0);
  M_AXI_GP0_0_arcache(3 downto 0) <= processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0);
  M_AXI_GP0_0_arid(11 downto 0) <= processing_system7_0_M_AXI_GP0_ARID(11 downto 0);
  M_AXI_GP0_0_arlen(3 downto 0) <= processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0);
  M_AXI_GP0_0_arlock(1 downto 0) <= processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0);
  M_AXI_GP0_0_arprot(2 downto 0) <= processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0);
  M_AXI_GP0_0_arqos(3 downto 0) <= processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0);
  M_AXI_GP0_0_arsize(2 downto 0) <= processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0);
  M_AXI_GP0_0_arvalid <= processing_system7_0_M_AXI_GP0_ARVALID;
  M_AXI_GP0_0_awaddr(31 downto 0) <= processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0);
  M_AXI_GP0_0_awburst(1 downto 0) <= processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0);
  M_AXI_GP0_0_awcache(3 downto 0) <= processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0);
  M_AXI_GP0_0_awid(11 downto 0) <= processing_system7_0_M_AXI_GP0_AWID(11 downto 0);
  M_AXI_GP0_0_awlen(3 downto 0) <= processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0);
  M_AXI_GP0_0_awlock(1 downto 0) <= processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0);
  M_AXI_GP0_0_awprot(2 downto 0) <= processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0);
  M_AXI_GP0_0_awqos(3 downto 0) <= processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0);
  M_AXI_GP0_0_awsize(2 downto 0) <= processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0);
  M_AXI_GP0_0_awvalid <= processing_system7_0_M_AXI_GP0_AWVALID;
  M_AXI_GP0_0_bready <= processing_system7_0_M_AXI_GP0_BREADY;
  M_AXI_GP0_0_rready <= processing_system7_0_M_AXI_GP0_RREADY;
  M_AXI_GP0_0_wdata(31 downto 0) <= processing_system7_0_M_AXI_GP0_WDATA(31 downto 0);
  M_AXI_GP0_0_wid(11 downto 0) <= processing_system7_0_M_AXI_GP0_WID(11 downto 0);
  M_AXI_GP0_0_wlast <= processing_system7_0_M_AXI_GP0_WLAST;
  M_AXI_GP0_0_wstrb(3 downto 0) <= processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0);
  M_AXI_GP0_0_wvalid <= processing_system7_0_M_AXI_GP0_WVALID;
  processing_system7_0_M_AXI_GP0_ARREADY <= M_AXI_GP0_0_arready;
  processing_system7_0_M_AXI_GP0_AWREADY <= M_AXI_GP0_0_awready;
  processing_system7_0_M_AXI_GP0_BID(11 downto 0) <= M_AXI_GP0_0_bid(11 downto 0);
  processing_system7_0_M_AXI_GP0_BRESP(1 downto 0) <= M_AXI_GP0_0_bresp(1 downto 0);
  processing_system7_0_M_AXI_GP0_BVALID <= M_AXI_GP0_0_bvalid;
  processing_system7_0_M_AXI_GP0_RDATA(31 downto 0) <= M_AXI_GP0_0_rdata(31 downto 0);
  processing_system7_0_M_AXI_GP0_RID(11 downto 0) <= M_AXI_GP0_0_rid(11 downto 0);
  processing_system7_0_M_AXI_GP0_RLAST <= M_AXI_GP0_0_rlast;
  processing_system7_0_M_AXI_GP0_RRESP(1 downto 0) <= M_AXI_GP0_0_rresp(1 downto 0);
  processing_system7_0_M_AXI_GP0_RVALID <= M_AXI_GP0_0_rvalid;
  processing_system7_0_M_AXI_GP0_WREADY <= M_AXI_GP0_0_wready;
processing_system7_0: component system_processing_system7_0_0
     port map (
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_GP0_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_GP0_ARBURST(1 downto 0) => B"01",
      S_AXI_GP0_ARCACHE(3 downto 0) => B"0011",
      S_AXI_GP0_ARID(5 downto 0) => B"000000",
      S_AXI_GP0_ARLEN(3 downto 0) => B"0000",
      S_AXI_GP0_ARLOCK(1 downto 0) => B"00",
      S_AXI_GP0_ARPROT(2 downto 0) => B"000",
      S_AXI_GP0_ARQOS(3 downto 0) => B"0000",
      S_AXI_GP0_ARREADY => NLW_processing_system7_0_S_AXI_GP0_ARREADY_UNCONNECTED,
      S_AXI_GP0_ARSIZE(2 downto 0) => B"010",
      S_AXI_GP0_ARVALID => '0',
      S_AXI_GP0_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_GP0_AWBURST(1 downto 0) => B"01",
      S_AXI_GP0_AWCACHE(3 downto 0) => B"0011",
      S_AXI_GP0_AWID(5 downto 0) => B"000000",
      S_AXI_GP0_AWLEN(3 downto 0) => B"0000",
      S_AXI_GP0_AWLOCK(1 downto 0) => B"00",
      S_AXI_GP0_AWPROT(2 downto 0) => B"000",
      S_AXI_GP0_AWQOS(3 downto 0) => B"0000",
      S_AXI_GP0_AWREADY => NLW_processing_system7_0_S_AXI_GP0_AWREADY_UNCONNECTED,
      S_AXI_GP0_AWSIZE(2 downto 0) => B"010",
      S_AXI_GP0_AWVALID => '0',
      S_AXI_GP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_GP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_GP0_BREADY => '0',
      S_AXI_GP0_BRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_GP0_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_GP0_BVALID => NLW_processing_system7_0_S_AXI_GP0_BVALID_UNCONNECTED,
      S_AXI_GP0_RDATA(31 downto 0) => NLW_processing_system7_0_S_AXI_GP0_RDATA_UNCONNECTED(31 downto 0),
      S_AXI_GP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_GP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_GP0_RLAST => NLW_processing_system7_0_S_AXI_GP0_RLAST_UNCONNECTED,
      S_AXI_GP0_RREADY => '0',
      S_AXI_GP0_RRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_GP0_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_GP0_RVALID => NLW_processing_system7_0_S_AXI_GP0_RVALID_UNCONNECTED,
      S_AXI_GP0_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_GP0_WID(5 downto 0) => B"000000",
      S_AXI_GP0_WLAST => '0',
      S_AXI_GP0_WREADY => NLW_processing_system7_0_S_AXI_GP0_WREADY_UNCONNECTED,
      S_AXI_GP0_WSTRB(3 downto 0) => B"1111",
      S_AXI_GP0_WVALID => '0'
    );
end STRUCTURE;
