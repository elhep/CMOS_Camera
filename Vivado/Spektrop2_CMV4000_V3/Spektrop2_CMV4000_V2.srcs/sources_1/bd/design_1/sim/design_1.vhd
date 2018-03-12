--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sun Mar 11 11:43:19 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_v_vid_in_axi4s_0_0 is
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
  end component design_1_v_vid_in_axi4s_0_0;
  component design_1_v_vid_in_axi4s_0_1 is
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
  end component design_1_v_vid_in_axi4s_0_1;
  component design_1_axis_combiner_0_0 is
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
  end component design_1_axis_combiner_0_0;
  component design_1_axis_dwidth_converter_0_0 is
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
  end component design_1_axis_dwidth_converter_0_0;
  component design_1_axis_dwidth_converter_0_1 is
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
  end component design_1_axis_dwidth_converter_0_1;
  signal aclk_0_1 : STD_LOGIC;
  signal aclken_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
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
  attribute X_INTERFACE_INFO of M_AXIS_0_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST";
  attribute X_INTERFACE_INFO of M_AXIS_0_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID";
  attribute X_INTERFACE_INFO of aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_0 : signal is "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF M_AXIS_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN design_1_aclk_0, FREQ_HZ 74250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of aclken_0 : signal is "xilinx.com:signal:clockenable:1.0 CE.ACLKEN_0 CE";
  attribute X_INTERFACE_PARAMETER of aclken_0 : signal is "XIL_INTERFACENAME CE.ACLKEN_0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_0 : signal is "XIL_INTERFACENAME RST.ARESETN_0, POLARITY ACTIVE_LOW";
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
  attribute X_INTERFACE_INFO of vid_io_in_ce_0 : signal is "xilinx.com:signal:clockenable:1.0 CE.VID_IO_IN_CE_0 CE";
  attribute X_INTERFACE_PARAMETER of vid_io_in_ce_0 : signal is "XIL_INTERFACENAME CE.VID_IO_IN_CE_0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of vid_io_in_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.VID_IO_IN_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER of vid_io_in_clk_0 : signal is "XIL_INTERFACENAME CLK.VID_IO_IN_CLK_0, CLK_DOMAIN design_1_vid_io_in_clk_0, FREQ_HZ 74250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of vid_io_in_reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.VID_IO_IN_RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of vid_io_in_reset_0 : signal is "XIL_INTERFACENAME RST.VID_IO_IN_RESET_0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of M_AXIS_0_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA";
  attribute X_INTERFACE_PARAMETER of M_AXIS_0_tdata : signal is "XIL_INTERFACENAME M_AXIS_0, CLK_DOMAIN design_1_aclk_0, FREQ_HZ 74250000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of vid_io_in_0_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 DATA";
  attribute X_INTERFACE_INFO of vid_io_in_1_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 DATA";
begin
  M_AXIS_0_tdata(31 downto 0) <= axis_combiner_0_M_AXIS_TDATA(31 downto 0);
  M_AXIS_0_tlast <= axis_combiner_0_M_AXIS_TLAST;
  M_AXIS_0_tvalid <= axis_combiner_0_M_AXIS_TVALID;
  aclk_0_1 <= aclk_0;
  aclken_0_1 <= aclken_0;
  aresetn_0_1 <= aresetn_0;
  axis_combiner_0_M_AXIS_TREADY <= M_AXIS_0_tready;
  axis_enable_0_1 <= axis_enable_0;
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
  vid_io_in_ce_0_1 <= vid_io_in_ce_0;
  vid_io_in_clk_0_1 <= vid_io_in_clk_0;
  vid_io_in_reset_0_1 <= vid_io_in_reset_0;
axis_combiner_0: component design_1_axis_combiner_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
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
axis_dwidth_converter_0: component design_1_axis_dwidth_converter_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      m_axis_tdata(15 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(15 downto 0),
      m_axis_tlast => axis_dwidth_converter_0_M_AXIS_TLAST,
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY(0),
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(63 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(63 downto 0),
      s_axis_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      s_axis_tready => v_vid_in_axi4s_0_video_out_TREADY,
      s_axis_tvalid => v_vid_in_axi4s_0_video_out_TVALID
    );
axis_dwidth_converter_1: component design_1_axis_dwidth_converter_0_1
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      m_axis_tdata(15 downto 0) => axis_dwidth_converter_1_M_AXIS_TDATA(15 downto 0),
      m_axis_tlast => axis_dwidth_converter_1_M_AXIS_TLAST,
      m_axis_tready => axis_dwidth_converter_1_M_AXIS_TREADY(1),
      m_axis_tvalid => axis_dwidth_converter_1_M_AXIS_TVALID,
      s_axis_tdata(63 downto 0) => v_vid_in_axi4s_1_video_out_TDATA(63 downto 0),
      s_axis_tlast => v_vid_in_axi4s_1_video_out_TLAST,
      s_axis_tready => v_vid_in_axi4s_1_video_out_TREADY,
      s_axis_tvalid => v_vid_in_axi4s_1_video_out_TVALID
    );
v_vid_in_axi4s_0: component design_1_v_vid_in_axi4s_0_0
     port map (
      aclk => aclk_0_1,
      aclken => aclken_0_1,
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
v_vid_in_axi4s_1: component design_1_v_vid_in_axi4s_0_1
     port map (
      aclk => aclk_0_1,
      aclken => aclken_0_1,
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
