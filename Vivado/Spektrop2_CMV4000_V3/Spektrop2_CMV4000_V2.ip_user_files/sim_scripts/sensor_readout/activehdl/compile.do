vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/v_vid_in_axi4s_v4_0_7
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_combiner_v1_1_14
vlib activehdl/axis_register_slice_v1_1_15
vlib activehdl/axis_dwidth_converter_v1_1_14

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap v_vid_in_axi4s_v4_0_7 activehdl/v_vid_in_axi4s_v4_0_7
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_combiner_v1_1_14 activehdl/axis_combiner_v1_1_14
vmap axis_register_slice_v1_1_15 activehdl/axis_register_slice_v1_1_15
vmap axis_dwidth_converter_v1_1_14 activehdl/axis_dwidth_converter_v1_1_14

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work v_vid_in_axi4s_v4_0_7  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/f931/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/sensor_readout/ip/sensor_readout_v_vid_in_axi4s_0_0/sim/sensor_readout_v_vid_in_axi4s_0_0.v" \
"../../../bd/sensor_readout/ip/sensor_readout_v_vid_in_axi4s_0_1/sim/sensor_readout_v_vid_in_axi4s_0_1.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_combiner_v1_1_14  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/cf24/hdl/axis_combiner_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/sensor_readout/ip/sensor_readout_axis_combiner_0_0/sim/sensor_readout_axis_combiner_0_0.v" \

vlog -work axis_register_slice_v1_1_15  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/cd45/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_14  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/1019/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/sensor_readout/ipshared/0ab1/hdl" "+incdir+E:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/sensor_readout/ip/sensor_readout_axis_dwidth_converter_0_0/sim/sensor_readout_axis_dwidth_converter_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/sensor_readout/sim/sensor_readout.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

