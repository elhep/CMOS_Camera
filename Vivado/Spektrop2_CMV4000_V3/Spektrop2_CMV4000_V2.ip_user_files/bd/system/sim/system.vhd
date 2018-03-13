--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Tue Mar 13 02:20:09 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1H7AUOX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1H7AUOX;

architecture STRUCTURE of m00_couplers_imp_1H7AUOX is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_4Y7TYO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_4Y7TYO;

architecture STRUCTURE of m01_couplers_imp_4Y7TYO is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_FKL2TE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_FKL2TE;

architecture STRUCTURE of m02_couplers_imp_FKL2TE is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_11SE3QO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_11SE3QO;

architecture STRUCTURE of s00_couplers_imp_11SE3QO is
  component system_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ps7_0_axi_periph_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end system_ps7_0_axi_periph_1;

architecture STRUCTURE of system_ps7_0_axi_periph_1 is
  component system_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps7_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1H7AUOX
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_4Y7TYO
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_FKL2TE
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_11SE3QO
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component system_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
  port (
    FCLK_100M_CLK : out STD_LOGIC;
    FCLK_50M_CLK : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GT_SERIAL_TX_0_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_TX_0_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    I2C_scl_i : in STD_LOGIC;
    I2C_scl_o : out STD_LOGIC;
    I2C_scl_t : out STD_LOGIC;
    I2C_sda_i : in STD_LOGIC;
    I2C_sda_o : out STD_LOGIC;
    I2C_sda_t : out STD_LOGIC;
    SPI0_io0_i : in STD_LOGIC;
    SPI0_io0_o : out STD_LOGIC;
    SPI0_io0_t : out STD_LOGIC;
    SPI0_io1_i : in STD_LOGIC;
    SPI0_io1_o : out STD_LOGIC;
    SPI0_io1_t : out STD_LOGIC;
    SPI0_sck_i : in STD_LOGIC;
    SPI0_sck_o : out STD_LOGIC;
    SPI0_sck_t : out STD_LOGIC;
    SPI0_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI0_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI0_ss_t : out STD_LOGIC;
    SPI1_io0_i : in STD_LOGIC;
    SPI1_io0_o : out STD_LOGIC;
    SPI1_io0_t : out STD_LOGIC;
    SPI1_io1_i : in STD_LOGIC;
    SPI1_io1_o : out STD_LOGIC;
    SPI1_io1_t : out STD_LOGIC;
    SPI1_sck_i : in STD_LOGIC;
    SPI1_sck_o : out STD_LOGIC;
    SPI1_sck_t : out STD_LOGIC;
    SPI1_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI1_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI1_ss_t : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    axis_enable : in STD_LOGIC;
    control_reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gt_refclk1_0 : in STD_LOGIC;
    gt_reset_0 : in STD_LOGIC;
    resetn_rtl : in STD_LOGIC;
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
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=20,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=1,da_clkrst_cnt=8,da_ps7_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_processing_system7_0_0 is
  port (
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    UART1_TX : out STD_LOGIC;
    UART1_RX : in STD_LOGIC;
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
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component system_processing_system7_0_0;
  component system_register_0_0 is
  port (
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component system_register_0_0;
  component system_rst_ps7_0_50M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_rst_ps7_0_50M_1;
  component system_axi_quad_spi_0_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component system_axi_quad_spi_0_0;
  component system_axi_quad_spi_0_1 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component system_axi_quad_spi_0_1;
  component system_v_vid_in_axi4s_0_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component system_v_vid_in_axi4s_0_0;
  component system_v_vid_in_axi4s_0_1 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component system_v_vid_in_axi4s_0_1;
  component system_aurora_8b10b_0_0 is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    tx_hard_err : out STD_LOGIC;
    tx_channel_up : out STD_LOGIC;
    tx_lane_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_system_reset : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    drpclk_in : in STD_LOGIC;
    power_down : in STD_LOGIC;
    tx_lock : out STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    pll_not_locked : in STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC
  );
  end component system_aurora_8b10b_0_0;
  component system_rst_aurora_8b10b_0_156M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_rst_aurora_8b10b_0_156M_0;
  component system_axis_dwidth_converter_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component system_axis_dwidth_converter_0_1;
  component system_axis_dwidth_converter_0_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component system_axis_dwidth_converter_0_2;
  component system_axis_combiner_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component system_axis_combiner_0_0;
  component system_ila_0_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_ila_0_2;
  signal aclken_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal aurora_8b10b_0_GT_SERIAL_TX_TXN : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aurora_8b10b_0_GT_SERIAL_TX_TXP : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aurora_8b10b_0_tx_channel_up : STD_LOGIC;
  signal aurora_8b10b_0_tx_hard_err : STD_LOGIC;
  signal aurora_8b10b_0_tx_lane_up : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aurora_8b10b_0_tx_lock : STD_LOGIC;
  signal aurora_8b10b_0_tx_out_clk : STD_LOGIC;
  signal aurora_8b10b_0_tx_resetdone_out : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_0_SPI_0_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_0_SPI_0_SS_T : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SS_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_1_SPI_0_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_1_SPI_0_SS_T : STD_LOGIC;
  signal axis_combiner_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_combiner_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_combiner_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_combiner_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_dwidth_converter_1_M_AXIS_TLAST : STD_LOGIC;
  signal axis_dwidth_converter_1_M_AXIS_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal axis_dwidth_converter_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_enable_0_1 : STD_LOGIC;
  signal gt_refclk1_0_1 : STD_LOGIC;
  signal gt_reset_0_1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_T : STD_LOGIC;
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
  signal processing_system7_0_UART_1_RxD : STD_LOGIC;
  signal processing_system7_0_UART_1_TxD : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal register_0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset_rtl_0_1 : STD_LOGIC;
  signal rst_aurora_8b10b_0_156M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_50M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_vid_in_axi4s_0_video_out_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal v_vid_in_axi4s_0_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TREADY : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TVALID : STD_LOGIC;
  signal v_vid_in_axi4s_1_video_out_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal v_vid_in_axi4s_1_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_1_video_out_TREADY : STD_LOGIC;
  signal v_vid_in_axi4s_1_video_out_TVALID : STD_LOGIC;
  signal vid_io_in_0_1_ACTIVE_VIDEO : STD_LOGIC;
  signal vid_io_in_0_1_DATA : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal vid_io_in_0_1_FIELD : STD_LOGIC;
  signal vid_io_in_0_1_HBLANK : STD_LOGIC;
  signal vid_io_in_0_1_HSYNC : STD_LOGIC;
  signal vid_io_in_0_1_VBLANK : STD_LOGIC;
  signal vid_io_in_0_1_VSYNC : STD_LOGIC;
  signal vid_io_in_1_1_ACTIVE_VIDEO : STD_LOGIC;
  signal vid_io_in_1_1_DATA : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal vid_io_in_1_1_FIELD : STD_LOGIC;
  signal vid_io_in_1_1_HBLANK : STD_LOGIC;
  signal vid_io_in_1_1_HSYNC : STD_LOGIC;
  signal vid_io_in_1_1_VBLANK : STD_LOGIC;
  signal vid_io_in_1_1_VSYNC : STD_LOGIC;
  signal vid_io_in_ce_0_1 : STD_LOGIC;
  signal vid_io_in_clk_0_1 : STD_LOGIC;
  signal vid_io_in_reset_0_1 : STD_LOGIC;
  signal NLW_aurora_8b10b_0_gt_common_reset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_aurora_8b10b_0_sys_reset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_1_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
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
  signal NLW_rst_aurora_8b10b_0_156M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_aurora_8b10b_0_156M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_aurora_8b10b_0_156M_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_aurora_8b10b_0_156M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_vid_in_axi4s_0_fid_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_m_axis_video_tuser_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_active_video_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_hsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_vsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_fid_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_m_axis_video_tuser_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_vtd_active_video_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_vtd_hsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_vtd_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_1_vtd_vsync_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of FCLK_100M_CLK : signal is "xilinx.com:signal:clock:1.0 CLK.FCLK_100M_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FCLK_100M_CLK : signal is "XIL_INTERFACENAME CLK.FCLK_100M_CLK, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of FCLK_50M_CLK : signal is "xilinx.com:signal:clock:1.0 CLK.FCLK_50M_CLK CLK";
  attribute X_INTERFACE_PARAMETER of FCLK_50M_CLK : signal is "XIL_INTERFACENAME CLK.FCLK_50M_CLK, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 50000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of I2C_scl_i : signal is "xilinx.com:interface:iic:1.0 I2C SCL_I";
  attribute X_INTERFACE_INFO of I2C_scl_o : signal is "xilinx.com:interface:iic:1.0 I2C SCL_O";
  attribute X_INTERFACE_INFO of I2C_scl_t : signal is "xilinx.com:interface:iic:1.0 I2C SCL_T";
  attribute X_INTERFACE_INFO of I2C_sda_i : signal is "xilinx.com:interface:iic:1.0 I2C SDA_I";
  attribute X_INTERFACE_INFO of I2C_sda_o : signal is "xilinx.com:interface:iic:1.0 I2C SDA_O";
  attribute X_INTERFACE_INFO of I2C_sda_t : signal is "xilinx.com:interface:iic:1.0 I2C SDA_T";
  attribute X_INTERFACE_INFO of SPI0_io0_i : signal is "xilinx.com:interface:spi:1.0 SPI0 IO0_I";
  attribute X_INTERFACE_INFO of SPI0_io0_o : signal is "xilinx.com:interface:spi:1.0 SPI0 IO0_O";
  attribute X_INTERFACE_INFO of SPI0_io0_t : signal is "xilinx.com:interface:spi:1.0 SPI0 IO0_T";
  attribute X_INTERFACE_INFO of SPI0_io1_i : signal is "xilinx.com:interface:spi:1.0 SPI0 IO1_I";
  attribute X_INTERFACE_INFO of SPI0_io1_o : signal is "xilinx.com:interface:spi:1.0 SPI0 IO1_O";
  attribute X_INTERFACE_INFO of SPI0_io1_t : signal is "xilinx.com:interface:spi:1.0 SPI0 IO1_T";
  attribute X_INTERFACE_INFO of SPI0_sck_i : signal is "xilinx.com:interface:spi:1.0 SPI0 SCK_I";
  attribute X_INTERFACE_INFO of SPI0_sck_o : signal is "xilinx.com:interface:spi:1.0 SPI0 SCK_O";
  attribute X_INTERFACE_INFO of SPI0_sck_t : signal is "xilinx.com:interface:spi:1.0 SPI0 SCK_T";
  attribute X_INTERFACE_INFO of SPI0_ss_t : signal is "xilinx.com:interface:spi:1.0 SPI0 SS_T";
  attribute X_INTERFACE_INFO of SPI1_io0_i : signal is "xilinx.com:interface:spi:1.0 SPI1 IO0_I";
  attribute X_INTERFACE_INFO of SPI1_io0_o : signal is "xilinx.com:interface:spi:1.0 SPI1 IO0_O";
  attribute X_INTERFACE_INFO of SPI1_io0_t : signal is "xilinx.com:interface:spi:1.0 SPI1 IO0_T";
  attribute X_INTERFACE_INFO of SPI1_io1_i : signal is "xilinx.com:interface:spi:1.0 SPI1 IO1_I";
  attribute X_INTERFACE_INFO of SPI1_io1_o : signal is "xilinx.com:interface:spi:1.0 SPI1 IO1_O";
  attribute X_INTERFACE_INFO of SPI1_io1_t : signal is "xilinx.com:interface:spi:1.0 SPI1 IO1_T";
  attribute X_INTERFACE_INFO of SPI1_sck_i : signal is "xilinx.com:interface:spi:1.0 SPI1 SCK_I";
  attribute X_INTERFACE_INFO of SPI1_sck_o : signal is "xilinx.com:interface:spi:1.0 SPI1 SCK_O";
  attribute X_INTERFACE_INFO of SPI1_sck_t : signal is "xilinx.com:interface:spi:1.0 SPI1 SCK_T";
  attribute X_INTERFACE_INFO of SPI1_ss_t : signal is "xilinx.com:interface:spi:1.0 SPI1 SS_T";
  attribute X_INTERFACE_INFO of UART_rxd : signal is "xilinx.com:interface:uart:1.0 UART RxD";
  attribute X_INTERFACE_INFO of UART_txd : signal is "xilinx.com:interface:uart:1.0 UART TxD";
  attribute X_INTERFACE_INFO of aclken : signal is "xilinx.com:signal:clockenable:1.0 CE.ACLKEN CE";
  attribute X_INTERFACE_PARAMETER of aclken : signal is "XIL_INTERFACENAME CE.ACLKEN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of gt_refclk1_0 : signal is "xilinx.com:signal:clock:1.0 CLK.GT_REFCLK1_0 CLK";
  attribute X_INTERFACE_PARAMETER of gt_refclk1_0 : signal is "XIL_INTERFACENAME CLK.GT_REFCLK1_0, CLK_DOMAIN system_gt_refclk1_0, FREQ_HZ 125000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of gt_reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.GT_RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of gt_reset_0 : signal is "XIL_INTERFACENAME RST.GT_RESET_0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of resetn_rtl : signal is "xilinx.com:signal:reset:1.0 RST.RESETN_RTL RST";
  attribute X_INTERFACE_PARAMETER of resetn_rtl : signal is "XIL_INTERFACENAME RST.RESETN_RTL, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of vid_io_in_0_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_io_in_0_field : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 FIELD";
  attribute X_INTERFACE_INFO of vid_io_in_0_hblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 HBLANK";
  attribute X_INTERFACE_INFO of vid_io_in_0_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 HSYNC";
  attribute X_INTERFACE_INFO of vid_io_in_0_vblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 VBLANK";
  attribute X_INTERFACE_INFO of vid_io_in_0_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 VSYNC";
  attribute X_INTERFACE_INFO of vid_io_in_1_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_io_in_1_field : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 FIELD";
  attribute X_INTERFACE_INFO of vid_io_in_1_hblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 HBLANK";
  attribute X_INTERFACE_INFO of vid_io_in_1_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 HSYNC";
  attribute X_INTERFACE_INFO of vid_io_in_1_vblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 VBLANK";
  attribute X_INTERFACE_INFO of vid_io_in_1_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 VSYNC";
  attribute X_INTERFACE_INFO of vid_io_in_ce : signal is "xilinx.com:signal:clockenable:1.0 CE.VID_IO_IN_CE CE";
  attribute X_INTERFACE_PARAMETER of vid_io_in_ce : signal is "XIL_INTERFACENAME CE.VID_IO_IN_CE, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of vid_io_in_clk : signal is "xilinx.com:signal:clock:1.0 CLK.VID_IO_IN_CLK CLK";
  attribute X_INTERFACE_PARAMETER of vid_io_in_clk : signal is "XIL_INTERFACENAME CLK.VID_IO_IN_CLK, CLK_DOMAIN system_vid_io_in_clk_0, FREQ_HZ 74250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of vid_io_in_reset : signal is "xilinx.com:signal:reset:1.0 RST.VID_IO_IN_RESET RST";
  attribute X_INTERFACE_PARAMETER of vid_io_in_reset : signal is "XIL_INTERFACENAME RST.VID_IO_IN_RESET, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_PARAMETER of FIXED_IO_mio : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of GT_SERIAL_TX_0_txn : signal is "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_TX_0 TXN";
  attribute X_INTERFACE_INFO of GT_SERIAL_TX_0_txp : signal is "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_TX_0 TXP";
  attribute X_INTERFACE_INFO of SPI0_ss_i : signal is "xilinx.com:interface:spi:1.0 SPI0 SS_I";
  attribute X_INTERFACE_INFO of SPI0_ss_o : signal is "xilinx.com:interface:spi:1.0 SPI0 SS_O";
  attribute X_INTERFACE_INFO of SPI1_ss_i : signal is "xilinx.com:interface:spi:1.0 SPI1 SS_I";
  attribute X_INTERFACE_INFO of SPI1_ss_o : signal is "xilinx.com:interface:spi:1.0 SPI1 SS_O";
  attribute X_INTERFACE_INFO of vid_io_in_0_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 DATA";
  attribute X_INTERFACE_INFO of vid_io_in_1_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 DATA";
begin
  FCLK_100M_CLK <= processing_system7_0_FCLK_CLK1;
  FCLK_50M_CLK <= processing_system7_0_FCLK_CLK0;
  GT_SERIAL_TX_0_txn(0) <= aurora_8b10b_0_GT_SERIAL_TX_TXN(0);
  GT_SERIAL_TX_0_txp(0) <= aurora_8b10b_0_GT_SERIAL_TX_TXP(0);
  I2C_scl_o <= processing_system7_0_IIC_0_SCL_O;
  I2C_scl_t <= processing_system7_0_IIC_0_SCL_T;
  I2C_sda_o <= processing_system7_0_IIC_0_SDA_O;
  I2C_sda_t <= processing_system7_0_IIC_0_SDA_T;
  SPI0_io0_o <= axi_quad_spi_0_SPI_0_IO0_O;
  SPI0_io0_t <= axi_quad_spi_0_SPI_0_IO0_T;
  SPI0_io1_o <= axi_quad_spi_0_SPI_0_IO1_O;
  SPI0_io1_t <= axi_quad_spi_0_SPI_0_IO1_T;
  SPI0_sck_o <= axi_quad_spi_0_SPI_0_SCK_O;
  SPI0_sck_t <= axi_quad_spi_0_SPI_0_SCK_T;
  SPI0_ss_o(0) <= axi_quad_spi_0_SPI_0_SS_O(0);
  SPI0_ss_t <= axi_quad_spi_0_SPI_0_SS_T;
  SPI1_io0_o <= axi_quad_spi_1_SPI_0_IO0_O;
  SPI1_io0_t <= axi_quad_spi_1_SPI_0_IO0_T;
  SPI1_io1_o <= axi_quad_spi_1_SPI_0_IO1_O;
  SPI1_io1_t <= axi_quad_spi_1_SPI_0_IO1_T;
  SPI1_sck_o <= axi_quad_spi_1_SPI_0_SCK_O;
  SPI1_sck_t <= axi_quad_spi_1_SPI_0_SCK_T;
  SPI1_ss_o(0) <= axi_quad_spi_1_SPI_0_SS_O(0);
  SPI1_ss_t <= axi_quad_spi_1_SPI_0_SS_T;
  UART_txd <= processing_system7_0_UART_1_TxD;
  aclken_1 <= aclken;
  aresetn_0_1 <= aresetn;
  axi_quad_spi_0_SPI_0_IO0_I <= SPI0_io0_i;
  axi_quad_spi_0_SPI_0_IO1_I <= SPI0_io1_i;
  axi_quad_spi_0_SPI_0_SCK_I <= SPI0_sck_i;
  axi_quad_spi_0_SPI_0_SS_I(0) <= SPI0_ss_i(0);
  axi_quad_spi_1_SPI_0_IO0_I <= SPI1_io0_i;
  axi_quad_spi_1_SPI_0_IO1_I <= SPI1_io1_i;
  axi_quad_spi_1_SPI_0_SCK_I <= SPI1_sck_i;
  axi_quad_spi_1_SPI_0_SS_I(0) <= SPI1_ss_i(0);
  axis_enable_0_1 <= axis_enable;
  control_reg0_o(31 downto 0) <= register_0_data(31 downto 0);
  gt_refclk1_0_1 <= gt_refclk1_0;
  gt_reset_0_1 <= gt_reset_0;
  processing_system7_0_IIC_0_SCL_I <= I2C_scl_i;
  processing_system7_0_IIC_0_SDA_I <= I2C_sda_i;
  processing_system7_0_UART_1_RxD <= UART_rxd;
  reset_rtl_0_1 <= resetn_rtl;
  vid_io_in_0_1_ACTIVE_VIDEO <= vid_io_in_0_active_video;
  vid_io_in_0_1_DATA(95 downto 0) <= vid_io_in_0_data(95 downto 0);
  vid_io_in_0_1_FIELD <= vid_io_in_0_field;
  vid_io_in_0_1_HBLANK <= vid_io_in_0_hblank;
  vid_io_in_0_1_HSYNC <= vid_io_in_0_hsync;
  vid_io_in_0_1_VBLANK <= vid_io_in_0_vblank;
  vid_io_in_0_1_VSYNC <= vid_io_in_0_vsync;
  vid_io_in_1_1_ACTIVE_VIDEO <= vid_io_in_1_active_video;
  vid_io_in_1_1_DATA(95 downto 0) <= vid_io_in_1_data(95 downto 0);
  vid_io_in_1_1_FIELD <= vid_io_in_1_field;
  vid_io_in_1_1_HBLANK <= vid_io_in_1_hblank;
  vid_io_in_1_1_HSYNC <= vid_io_in_1_hsync;
  vid_io_in_1_1_VBLANK <= vid_io_in_1_vblank;
  vid_io_in_1_1_VSYNC <= vid_io_in_1_vsync;
  vid_io_in_ce_0_1 <= vid_io_in_ce;
  vid_io_in_clk_0_1 <= vid_io_in_clk;
  vid_io_in_reset_0_1 <= vid_io_in_reset;
aurora_8b10b_0: component system_aurora_8b10b_0_0
     port map (
      drpclk_in => processing_system7_0_FCLK_CLK0,
      gt0_pll0outclk_in => '0',
      gt0_pll0outrefclk_in => '0',
      gt0_pll0refclklost_in => '0',
      gt0_pll1outclk_in => '0',
      gt0_pll1outrefclk_in => '0',
      gt_common_reset_out => NLW_aurora_8b10b_0_gt_common_reset_out_UNCONNECTED,
      gt_refclk1 => gt_refclk1_0_1,
      gt_reset => gt_reset_0_1,
      init_clk_in => processing_system7_0_FCLK_CLK0,
      loopback(2 downto 0) => B"000",
      pll_not_locked => '0',
      power_down => '0',
      quad1_common_lock_in => '0',
      s_axi_tx_tdata(0) => axis_combiner_0_M_AXIS_TDATA(31),
      s_axi_tx_tdata(1) => axis_combiner_0_M_AXIS_TDATA(30),
      s_axi_tx_tdata(2) => axis_combiner_0_M_AXIS_TDATA(29),
      s_axi_tx_tdata(3) => axis_combiner_0_M_AXIS_TDATA(28),
      s_axi_tx_tdata(4) => axis_combiner_0_M_AXIS_TDATA(27),
      s_axi_tx_tdata(5) => axis_combiner_0_M_AXIS_TDATA(26),
      s_axi_tx_tdata(6) => axis_combiner_0_M_AXIS_TDATA(25),
      s_axi_tx_tdata(7) => axis_combiner_0_M_AXIS_TDATA(24),
      s_axi_tx_tdata(8) => axis_combiner_0_M_AXIS_TDATA(23),
      s_axi_tx_tdata(9) => axis_combiner_0_M_AXIS_TDATA(22),
      s_axi_tx_tdata(10) => axis_combiner_0_M_AXIS_TDATA(21),
      s_axi_tx_tdata(11) => axis_combiner_0_M_AXIS_TDATA(20),
      s_axi_tx_tdata(12) => axis_combiner_0_M_AXIS_TDATA(19),
      s_axi_tx_tdata(13) => axis_combiner_0_M_AXIS_TDATA(18),
      s_axi_tx_tdata(14) => axis_combiner_0_M_AXIS_TDATA(17),
      s_axi_tx_tdata(15) => axis_combiner_0_M_AXIS_TDATA(16),
      s_axi_tx_tdata(16) => axis_combiner_0_M_AXIS_TDATA(15),
      s_axi_tx_tdata(17) => axis_combiner_0_M_AXIS_TDATA(14),
      s_axi_tx_tdata(18) => axis_combiner_0_M_AXIS_TDATA(13),
      s_axi_tx_tdata(19) => axis_combiner_0_M_AXIS_TDATA(12),
      s_axi_tx_tdata(20) => axis_combiner_0_M_AXIS_TDATA(11),
      s_axi_tx_tdata(21) => axis_combiner_0_M_AXIS_TDATA(10),
      s_axi_tx_tdata(22) => axis_combiner_0_M_AXIS_TDATA(9),
      s_axi_tx_tdata(23) => axis_combiner_0_M_AXIS_TDATA(8),
      s_axi_tx_tdata(24) => axis_combiner_0_M_AXIS_TDATA(7),
      s_axi_tx_tdata(25) => axis_combiner_0_M_AXIS_TDATA(6),
      s_axi_tx_tdata(26) => axis_combiner_0_M_AXIS_TDATA(5),
      s_axi_tx_tdata(27) => axis_combiner_0_M_AXIS_TDATA(4),
      s_axi_tx_tdata(28) => axis_combiner_0_M_AXIS_TDATA(3),
      s_axi_tx_tdata(29) => axis_combiner_0_M_AXIS_TDATA(2),
      s_axi_tx_tdata(30) => axis_combiner_0_M_AXIS_TDATA(1),
      s_axi_tx_tdata(31) => axis_combiner_0_M_AXIS_TDATA(0),
      s_axi_tx_tkeep(0 to 3) => B"1111",
      s_axi_tx_tlast => axis_combiner_0_M_AXIS_TLAST,
      s_axi_tx_tready => axis_combiner_0_M_AXIS_TREADY,
      s_axi_tx_tvalid => axis_combiner_0_M_AXIS_TVALID,
      sync_clk => aurora_8b10b_0_tx_out_clk,
      sys_reset_out => NLW_aurora_8b10b_0_sys_reset_out_UNCONNECTED,
      tx_channel_up => aurora_8b10b_0_tx_channel_up,
      tx_hard_err => aurora_8b10b_0_tx_hard_err,
      tx_lane_up(0) => aurora_8b10b_0_tx_lane_up(0),
      tx_lock => aurora_8b10b_0_tx_lock,
      tx_out_clk => aurora_8b10b_0_tx_out_clk,
      tx_resetdone_out => aurora_8b10b_0_tx_resetdone_out,
      tx_system_reset => gt_reset_0_1,
      txn(0) => aurora_8b10b_0_GT_SERIAL_TX_TXN(0),
      txp(0) => aurora_8b10b_0_GT_SERIAL_TX_TXP(0),
      user_clk => aurora_8b10b_0_tx_out_clk
    );
axi_quad_spi_0: component system_axi_quad_spi_0_0
     port map (
      ext_spi_clk => processing_system7_0_FCLK_CLK0,
      io0_i => axi_quad_spi_0_SPI_0_IO0_I,
      io0_o => axi_quad_spi_0_SPI_0_IO0_O,
      io0_t => axi_quad_spi_0_SPI_0_IO0_T,
      io1_i => axi_quad_spi_0_SPI_0_IO1_I,
      io1_o => axi_quad_spi_0_SPI_0_IO1_O,
      io1_t => axi_quad_spi_0_SPI_0_IO1_T,
      ip2intc_irpt => NLW_axi_quad_spi_0_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(6 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_ps7_0_50M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s_axi_awaddr(6 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(6 downto 0),
      s_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      sck_i => axi_quad_spi_0_SPI_0_SCK_I,
      sck_o => axi_quad_spi_0_SPI_0_SCK_O,
      sck_t => axi_quad_spi_0_SPI_0_SCK_T,
      ss_i(0) => axi_quad_spi_0_SPI_0_SS_I(0),
      ss_o(0) => axi_quad_spi_0_SPI_0_SS_O(0),
      ss_t => axi_quad_spi_0_SPI_0_SS_T
    );
axi_quad_spi_1: component system_axi_quad_spi_0_1
     port map (
      ext_spi_clk => processing_system7_0_FCLK_CLK0,
      io0_i => axi_quad_spi_1_SPI_0_IO0_I,
      io0_o => axi_quad_spi_1_SPI_0_IO0_O,
      io0_t => axi_quad_spi_1_SPI_0_IO0_T,
      io1_i => axi_quad_spi_1_SPI_0_IO1_I,
      io1_o => axi_quad_spi_1_SPI_0_IO1_O,
      io1_t => axi_quad_spi_1_SPI_0_IO1_T,
      ip2intc_irpt => NLW_axi_quad_spi_1_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(6 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_ps7_0_50M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      s_axi_awaddr(6 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(6 downto 0),
      s_axi_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      sck_i => axi_quad_spi_1_SPI_0_SCK_I,
      sck_o => axi_quad_spi_1_SPI_0_SCK_O,
      sck_t => axi_quad_spi_1_SPI_0_SCK_T,
      ss_i(0) => axi_quad_spi_1_SPI_0_SS_I(0),
      ss_o(0) => axi_quad_spi_1_SPI_0_SS_O(0),
      ss_t => axi_quad_spi_1_SPI_0_SS_T
    );
axis_combiner_0: component system_axis_combiner_0_0
     port map (
      aclk => aurora_8b10b_0_tx_out_clk,
      aresetn => rst_aurora_8b10b_0_156M_interconnect_aresetn(0),
      m_axis_tdata(31 downto 0) => axis_combiner_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => axis_combiner_0_M_AXIS_TLAST,
      m_axis_tready => axis_combiner_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_combiner_0_M_AXIS_TVALID,
      s_axis_tdata(31 downto 16) => axis_dwidth_converter_1_M_AXIS_TDATA(15 downto 0),
      s_axis_tdata(15 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(15 downto 0),
      s_axis_tlast(1) => axis_dwidth_converter_1_M_AXIS_TLAST,
      s_axis_tlast(0) => axis_dwidth_converter_0_M_AXIS_TLAST,
      s_axis_tready(1) => axis_dwidth_converter_1_M_AXIS_TREADY(1),
      s_axis_tready(0) => axis_dwidth_converter_0_M_AXIS_TREADY(0),
      s_axis_tvalid(1) => axis_dwidth_converter_1_M_AXIS_TVALID,
      s_axis_tvalid(0) => axis_dwidth_converter_0_M_AXIS_TVALID
    );
axis_dwidth_converter_0: component system_axis_dwidth_converter_0_1
     port map (
      aclk => aurora_8b10b_0_tx_out_clk,
      aresetn => rst_aurora_8b10b_0_156M_interconnect_aresetn(0),
      m_axis_tdata(15 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(15 downto 0),
      m_axis_tlast => axis_dwidth_converter_0_M_AXIS_TLAST,
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY(0),
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(63 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(63 downto 0),
      s_axis_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      s_axis_tready => v_vid_in_axi4s_0_video_out_TREADY,
      s_axis_tvalid => v_vid_in_axi4s_0_video_out_TVALID
    );
axis_dwidth_converter_1: component system_axis_dwidth_converter_0_2
     port map (
      aclk => aurora_8b10b_0_tx_out_clk,
      aresetn => rst_aurora_8b10b_0_156M_interconnect_aresetn(0),
      m_axis_tdata(15 downto 0) => axis_dwidth_converter_1_M_AXIS_TDATA(15 downto 0),
      m_axis_tlast => axis_dwidth_converter_1_M_AXIS_TLAST,
      m_axis_tready => axis_dwidth_converter_1_M_AXIS_TREADY(1),
      m_axis_tvalid => axis_dwidth_converter_1_M_AXIS_TVALID,
      s_axis_tdata(63 downto 0) => v_vid_in_axi4s_1_video_out_TDATA(63 downto 0),
      s_axis_tlast => v_vid_in_axi4s_1_video_out_TLAST,
      s_axis_tready => v_vid_in_axi4s_1_video_out_TREADY,
      s_axis_tvalid => v_vid_in_axi4s_1_video_out_TVALID
    );
ila_0: component system_ila_0_2
     port map (
      clk => aurora_8b10b_0_tx_out_clk,
      probe0(0) => aurora_8b10b_0_tx_channel_up,
      probe1(0) => aurora_8b10b_0_tx_hard_err,
      probe2(0) => aurora_8b10b_0_tx_lane_up(0),
      probe3(0) => aurora_8b10b_0_tx_lock,
      probe4(0) => aurora_8b10b_0_tx_resetdone_out
    );
processing_system7_0: component system_processing_system7_0_0
     port map (
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK1,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      I2C0_SCL_I => processing_system7_0_IIC_0_SCL_I,
      I2C0_SCL_O => processing_system7_0_IIC_0_SCL_O,
      I2C0_SCL_T => processing_system7_0_IIC_0_SCL_T,
      I2C0_SDA_I => processing_system7_0_IIC_0_SDA_I,
      I2C0_SDA_O => processing_system7_0_IIC_0_SDA_O,
      I2C0_SDA_T => processing_system7_0_IIC_0_SDA_T,
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
      S_AXI_GP0_WVALID => '0',
      UART1_RX => processing_system7_0_UART_1_RxD,
      UART1_TX => processing_system7_0_UART_1_TxD
    );
ps7_0_axi_periph: entity work.system_ps7_0_axi_periph_1
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_50M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready(0) => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready(0) => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => ps7_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => ps7_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => ps7_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
register_0: component system_register_0_0
     port map (
      data(31 downto 0) => register_0_data(31 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(5 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(5 downto 0),
      s00_axi_aresetn => rst_ps7_0_50M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      s00_axi_awaddr(5 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(5 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      s00_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY(0),
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY(0),
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID(0)
    );
rst_aurora_8b10b_0_156M: component system_rst_aurora_8b10b_0_156M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_aurora_8b10b_0_156M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => reset_rtl_0_1,
      interconnect_aresetn(0) => rst_aurora_8b10b_0_156M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_aurora_8b10b_0_156M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_rst_aurora_8b10b_0_156M_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_rst_aurora_8b10b_0_156M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aurora_8b10b_0_tx_out_clk
    );
rst_ps7_0_50M: component system_rst_ps7_0_50M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_50M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
v_vid_in_axi4s_0: component system_v_vid_in_axi4s_0_0
     port map (
      aclk => aurora_8b10b_0_tx_out_clk,
      aclken => aclken_1,
      aresetn => aresetn_0_1,
      axis_enable => axis_enable_0_1,
      fid => NLW_v_vid_in_axi4s_0_fid_UNCONNECTED,
      m_axis_video_tdata(63 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(63 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_0_video_out_TREADY,
      m_axis_video_tuser => NLW_v_vid_in_axi4s_0_m_axis_video_tuser_UNCONNECTED,
      m_axis_video_tvalid => v_vid_in_axi4s_0_video_out_TVALID,
      overflow => NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED,
      underflow => NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED,
      vid_active_video => vid_io_in_0_1_ACTIVE_VIDEO,
      vid_data(95 downto 0) => vid_io_in_0_1_DATA(95 downto 0),
      vid_field_id => vid_io_in_0_1_FIELD,
      vid_hblank => vid_io_in_0_1_HBLANK,
      vid_hsync => vid_io_in_0_1_HSYNC,
      vid_io_in_ce => vid_io_in_ce_0_1,
      vid_io_in_clk => vid_io_in_clk_0_1,
      vid_io_in_reset => vid_io_in_reset_0_1,
      vid_vblank => vid_io_in_0_1_VBLANK,
      vid_vsync => vid_io_in_0_1_VSYNC,
      vtd_active_video => NLW_v_vid_in_axi4s_0_vtd_active_video_UNCONNECTED,
      vtd_field_id => NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED,
      vtd_hsync => NLW_v_vid_in_axi4s_0_vtd_hsync_UNCONNECTED,
      vtd_vblank => NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED,
      vtd_vsync => NLW_v_vid_in_axi4s_0_vtd_vsync_UNCONNECTED
    );
v_vid_in_axi4s_1: component system_v_vid_in_axi4s_0_1
     port map (
      aclk => aurora_8b10b_0_tx_out_clk,
      aclken => aclken_1,
      aresetn => aresetn_0_1,
      axis_enable => axis_enable_0_1,
      fid => NLW_v_vid_in_axi4s_1_fid_UNCONNECTED,
      m_axis_video_tdata(63 downto 0) => v_vid_in_axi4s_1_video_out_TDATA(63 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_1_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_1_video_out_TREADY,
      m_axis_video_tuser => NLW_v_vid_in_axi4s_1_m_axis_video_tuser_UNCONNECTED,
      m_axis_video_tvalid => v_vid_in_axi4s_1_video_out_TVALID,
      overflow => NLW_v_vid_in_axi4s_1_overflow_UNCONNECTED,
      underflow => NLW_v_vid_in_axi4s_1_underflow_UNCONNECTED,
      vid_active_video => vid_io_in_1_1_ACTIVE_VIDEO,
      vid_data(95 downto 0) => vid_io_in_1_1_DATA(95 downto 0),
      vid_field_id => vid_io_in_1_1_FIELD,
      vid_hblank => vid_io_in_1_1_HBLANK,
      vid_hsync => vid_io_in_1_1_HSYNC,
      vid_io_in_ce => vid_io_in_ce_0_1,
      vid_io_in_clk => vid_io_in_clk_0_1,
      vid_io_in_reset => vid_io_in_reset_0_1,
      vid_vblank => vid_io_in_1_1_VBLANK,
      vid_vsync => vid_io_in_1_1_VSYNC,
      vtd_active_video => NLW_v_vid_in_axi4s_1_vtd_active_video_UNCONNECTED,
      vtd_field_id => NLW_v_vid_in_axi4s_1_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_1_vtd_hblank_UNCONNECTED,
      vtd_hsync => NLW_v_vid_in_axi4s_1_vtd_hsync_UNCONNECTED,
      vtd_vblank => NLW_v_vid_in_axi4s_1_vtd_vblank_UNCONNECTED,
      vtd_vsync => NLW_v_vid_in_axi4s_1_vtd_vsync_UNCONNECTED
    );
end STRUCTURE;
