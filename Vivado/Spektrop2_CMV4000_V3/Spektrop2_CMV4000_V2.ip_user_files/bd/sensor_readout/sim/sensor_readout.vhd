--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Wed Mar  7 07:39:45 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target sensor_readout.bd
--Design      : sensor_readout
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sensor_readout is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of sensor_readout : entity is "sensor_readout,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sensor_readout,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of sensor_readout : entity is "sensor_readout.hwdef";
end sensor_readout;

architecture STRUCTURE of sensor_readout is
  component sensor_readout_v_vid_in_axi4s_0_0 is
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
  end component sensor_readout_v_vid_in_axi4s_0_0;
  component sensor_readout_v_vid_in_axi4s_0_1 is
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
  end component sensor_readout_v_vid_in_axi4s_0_1;
  component sensor_readout_axis_combiner_0_0 is
  port (
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
  end component sensor_readout_axis_combiner_0_0;
  component sensor_readout_axis_dwidth_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component sensor_readout_axis_dwidth_converter_0_0;
  signal aclk_0_1 : STD_LOGIC;
  signal aclken_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal axis_combiner_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axis_combiner_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_combiner_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_combiner_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_enable_0_1 : STD_LOGIC;
  signal v_vid_in_axi4s_0_fid : STD_LOGIC;
  signal v_vid_in_axi4s_0_overflow : STD_LOGIC;
  signal v_vid_in_axi4s_0_underflow : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal v_vid_in_axi4s_0_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal v_vid_in_axi4s_0_video_out_TUSER : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TVALID : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_FIELD : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_HBLANK : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_VBLANK : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_VSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_1_fid : STD_LOGIC;
  signal v_vid_in_axi4s_1_overflow : STD_LOGIC;
  signal v_vid_in_axi4s_1_underflow : STD_LOGIC;
  signal v_vid_in_axi4s_1_video_out_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal v_vid_in_axi4s_1_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_1_video_out_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal v_vid_in_axi4s_1_video_out_TUSER : STD_LOGIC;
  signal v_vid_in_axi4s_1_video_out_TVALID : STD_LOGIC;
  signal v_vid_in_axi4s_1_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_vid_in_axi4s_1_vtiming_out_FIELD : STD_LOGIC;
  signal v_vid_in_axi4s_1_vtiming_out_HBLANK : STD_LOGIC;
  signal v_vid_in_axi4s_1_vtiming_out_HSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_1_vtiming_out_VBLANK : STD_LOGIC;
  signal v_vid_in_axi4s_1_vtiming_out_VSYNC : STD_LOGIC;
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
  signal NLW_axis_combiner_0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_0_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST";
  attribute X_INTERFACE_INFO of M_AXIS_0_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID";
  attribute X_INTERFACE_INFO of aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_0 : signal is "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF M_AXIS_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN sensor_readout_aclk_0, FREQ_HZ 10000000, PHASE 0.000";
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
  attribute X_INTERFACE_PARAMETER of vid_io_in_clk_0 : signal is "XIL_INTERFACENAME CLK.VID_IO_IN_CLK_0, CLK_DOMAIN sensor_readout_vid_io_in_clk_0, FREQ_HZ 74250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of vid_io_in_reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.VID_IO_IN_RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of vid_io_in_reset_0 : signal is "XIL_INTERFACENAME RST.VID_IO_IN_RESET_0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of vtiming_out_0_active_video : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_0 ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vtiming_out_0_field : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_0 FIELD";
  attribute X_INTERFACE_INFO of vtiming_out_0_hblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_0 HBLANK";
  attribute X_INTERFACE_INFO of vtiming_out_0_hsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_0 HSYNC";
  attribute X_INTERFACE_INFO of vtiming_out_0_vblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_0 VBLANK";
  attribute X_INTERFACE_INFO of vtiming_out_0_vsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_0 VSYNC";
  attribute X_INTERFACE_INFO of vtiming_out_1_active_video : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_1 ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vtiming_out_1_field : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_1 FIELD";
  attribute X_INTERFACE_INFO of vtiming_out_1_hblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_1 HBLANK";
  attribute X_INTERFACE_INFO of vtiming_out_1_hsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_1 HSYNC";
  attribute X_INTERFACE_INFO of vtiming_out_1_vblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_1 VBLANK";
  attribute X_INTERFACE_INFO of vtiming_out_1_vsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_out_1 VSYNC";
  attribute X_INTERFACE_INFO of M_AXIS_0_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA";
  attribute X_INTERFACE_PARAMETER of M_AXIS_0_tdata : signal is "XIL_INTERFACENAME M_AXIS_0, CLK_DOMAIN sensor_readout_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of vid_io_in_0_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_0 DATA";
  attribute X_INTERFACE_INFO of vid_io_in_1_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_in_1 DATA";
begin
  M_AXIS_0_tdata(31 downto 0) <= axis_dwidth_converter_0_M_AXIS_TDATA(31 downto 0);
  M_AXIS_0_tlast <= axis_dwidth_converter_0_M_AXIS_TLAST;
  M_AXIS_0_tvalid <= axis_dwidth_converter_0_M_AXIS_TVALID;
  aclk_0_1 <= aclk_0;
  aclken_0_1 <= aclken_0;
  aresetn_0_1 <= aresetn_0;
  axis_dwidth_converter_0_M_AXIS_TREADY <= M_AXIS_0_tready;
  axis_enable_0_1 <= axis_enable_0;
  fid_0 <= v_vid_in_axi4s_0_fid;
  fid_1 <= v_vid_in_axi4s_1_fid;
  overflow_0 <= v_vid_in_axi4s_0_overflow;
  overflow_1 <= v_vid_in_axi4s_1_overflow;
  underflow_0 <= v_vid_in_axi4s_0_underflow;
  underflow_1 <= v_vid_in_axi4s_1_underflow;
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
  vtiming_out_0_active_video <= v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO;
  vtiming_out_0_field <= v_vid_in_axi4s_0_vtiming_out_FIELD;
  vtiming_out_0_hblank <= v_vid_in_axi4s_0_vtiming_out_HBLANK;
  vtiming_out_0_hsync <= v_vid_in_axi4s_0_vtiming_out_HSYNC;
  vtiming_out_0_vblank <= v_vid_in_axi4s_0_vtiming_out_VBLANK;
  vtiming_out_0_vsync <= v_vid_in_axi4s_0_vtiming_out_VSYNC;
  vtiming_out_1_active_video <= v_vid_in_axi4s_1_vtiming_out_ACTIVE_VIDEO;
  vtiming_out_1_field <= v_vid_in_axi4s_1_vtiming_out_FIELD;
  vtiming_out_1_hblank <= v_vid_in_axi4s_1_vtiming_out_HBLANK;
  vtiming_out_1_hsync <= v_vid_in_axi4s_1_vtiming_out_HSYNC;
  vtiming_out_1_vblank <= v_vid_in_axi4s_1_vtiming_out_VBLANK;
  vtiming_out_1_vsync <= v_vid_in_axi4s_1_vtiming_out_VSYNC;
axis_combiner_0: component sensor_readout_axis_combiner_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      m_axis_tdata(127 downto 0) => axis_combiner_0_M_AXIS_TDATA(127 downto 0),
      m_axis_tlast => axis_combiner_0_M_AXIS_TLAST,
      m_axis_tready => axis_combiner_0_M_AXIS_TREADY,
      m_axis_tuser(1 downto 0) => NLW_axis_combiner_0_m_axis_tuser_UNCONNECTED(1 downto 0),
      m_axis_tvalid => axis_combiner_0_M_AXIS_TVALID,
      s_axis_tdata(127 downto 64) => v_vid_in_axi4s_1_video_out_TDATA(63 downto 0),
      s_axis_tdata(63 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(63 downto 0),
      s_axis_tlast(1) => v_vid_in_axi4s_1_video_out_TLAST,
      s_axis_tlast(0) => v_vid_in_axi4s_0_video_out_TLAST,
      s_axis_tready(1) => v_vid_in_axi4s_1_video_out_TREADY(1),
      s_axis_tready(0) => v_vid_in_axi4s_0_video_out_TREADY(0),
      s_axis_tuser(1) => v_vid_in_axi4s_1_video_out_TUSER,
      s_axis_tuser(0) => v_vid_in_axi4s_0_video_out_TUSER,
      s_axis_tvalid(1) => v_vid_in_axi4s_1_video_out_TVALID,
      s_axis_tvalid(0) => v_vid_in_axi4s_0_video_out_TVALID
    );
axis_dwidth_converter_0: component sensor_readout_axis_dwidth_converter_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      m_axis_tdata(31 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => axis_dwidth_converter_0_M_AXIS_TLAST,
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(127 downto 0) => axis_combiner_0_M_AXIS_TDATA(127 downto 0),
      s_axis_tlast => axis_combiner_0_M_AXIS_TLAST,
      s_axis_tready => axis_combiner_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_combiner_0_M_AXIS_TVALID
    );
v_vid_in_axi4s_0: component sensor_readout_v_vid_in_axi4s_0_0
     port map (
      aclk => aclk_0_1,
      aclken => aclken_0_1,
      aresetn => aresetn_0_1,
      axis_enable => axis_enable_0_1,
      fid => v_vid_in_axi4s_0_fid,
      m_axis_video_tdata(63 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(63 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_0_video_out_TREADY(0),
      m_axis_video_tuser => v_vid_in_axi4s_0_video_out_TUSER,
      m_axis_video_tvalid => v_vid_in_axi4s_0_video_out_TVALID,
      overflow => v_vid_in_axi4s_0_overflow,
      underflow => v_vid_in_axi4s_0_underflow,
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
      vtd_active_video => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      vtd_field_id => v_vid_in_axi4s_0_vtiming_out_FIELD,
      vtd_hblank => v_vid_in_axi4s_0_vtiming_out_HBLANK,
      vtd_hsync => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      vtd_vblank => v_vid_in_axi4s_0_vtiming_out_VBLANK,
      vtd_vsync => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
v_vid_in_axi4s_1: component sensor_readout_v_vid_in_axi4s_0_1
     port map (
      aclk => aclk_0_1,
      aclken => aclken_0_1,
      aresetn => aresetn_0_1,
      axis_enable => axis_enable_0_1,
      fid => v_vid_in_axi4s_1_fid,
      m_axis_video_tdata(63 downto 0) => v_vid_in_axi4s_1_video_out_TDATA(63 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_1_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_1_video_out_TREADY(1),
      m_axis_video_tuser => v_vid_in_axi4s_1_video_out_TUSER,
      m_axis_video_tvalid => v_vid_in_axi4s_1_video_out_TVALID,
      overflow => v_vid_in_axi4s_1_overflow,
      underflow => v_vid_in_axi4s_1_underflow,
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
      vtd_active_video => v_vid_in_axi4s_1_vtiming_out_ACTIVE_VIDEO,
      vtd_field_id => v_vid_in_axi4s_1_vtiming_out_FIELD,
      vtd_hblank => v_vid_in_axi4s_1_vtiming_out_HBLANK,
      vtd_hsync => v_vid_in_axi4s_1_vtiming_out_HSYNC,
      vtd_vblank => v_vid_in_axi4s_1_vtiming_out_VBLANK,
      vtd_vsync => v_vid_in_axi4s_1_vtiming_out_VSYNC
    );
end STRUCTURE;
