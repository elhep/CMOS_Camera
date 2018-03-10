vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/v_vid_in_axi4s_v4_0_7
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_combiner_v1_1_14
vlib modelsim_lib/msim/axis_register_slice_v1_1_15
vlib modelsim_lib/msim/axis_dwidth_converter_v1_1_14

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap v_vid_in_axi4s_v4_0_7 modelsim_lib/msim/v_vid_in_axi4s_v4_0_7
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_combiner_v1_1_14 modelsim_lib/msim/axis_combiner_v1_1_14
vmap axis_register_slice_v1_1_15 modelsim_lib/msim/axis_register_slice_v1_1_15
vmap axis_dwidth_converter_v1_1_14 modelsim_lib/msim/axis_dwidth_converter_v1_1_14

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work v_vid_in_axi4s_v4_0_7 -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/f931/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/sensor_readout/ip/sensor_readout_v_vid_in_axi4s_0_0/sim/sensor_readout_v_vid_in_axi4s_0_0.v" \
"../../../bd/sensor_readout/ip/sensor_readout_v_vid_in_axi4s_0_1/sim/sensor_readout_v_vid_in_axi4s_0_1.v" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_combiner_v1_1_14 -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/cf24/hdl/axis_combiner_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/sensor_readout/ip/sensor_readout_axis_combiner_0_0/sim/sensor_readout_axis_combiner_0_0.v" \

vlog -work axis_register_slice_v1_1_15 -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/cd45/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_14 -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/1019/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/sensor_readout/ip/sensor_readout_axis_dwidth_converter_0_0/sim/sensor_readout_axis_dwidth_converter_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/sensor_readout/sim/sensor_readout.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

