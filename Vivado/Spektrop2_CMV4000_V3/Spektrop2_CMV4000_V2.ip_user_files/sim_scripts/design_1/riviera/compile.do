vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/v_vid_in_axi4s_v4_0_7
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_combiner_v1_1_14
vlib riviera/axis_register_slice_v1_1_15
vlib riviera/axis_dwidth_converter_v1_1_14

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap v_vid_in_axi4s_v4_0_7 riviera/v_vid_in_axi4s_v4_0_7
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_combiner_v1_1_14 riviera/axis_combiner_v1_1_14
vmap axis_register_slice_v1_1_15 riviera/axis_register_slice_v1_1_15
vmap axis_dwidth_converter_v1_1_14 riviera/axis_dwidth_converter_v1_1_14

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work v_vid_in_axi4s_v4_0_7  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/f931/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/sim/design_1_v_vid_in_axi4s_0_0.v" \
"../../../bd/design_1/ip/design_1_v_vid_in_axi4s_0_1/sim/design_1_v_vid_in_axi4s_0_1.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_combiner_v1_1_14  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/cf24/hdl/axis_combiner_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_combiner_0_0/sim/design_1_axis_combiner_0_0.v" \

vlog -work axis_register_slice_v1_1_15  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/cd45/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_14  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/1019/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_dwidth_converter_0_0/sim/design_1_axis_dwidth_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_dwidth_converter_0_1/sim/design_1_axis_dwidth_converter_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

