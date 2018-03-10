-makelib ies_lib/xil_defaultlib -sv \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/v_vid_in_axi4s_v4_0_7 \
  "../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/f931/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/sim/design_1_v_vid_in_axi4s_0_0.v" \
  "../../../bd/design_1/ip/design_1_v_vid_in_axi4s_0_1/sim/design_1_v_vid_in_axi4s_0_1.v" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_combiner_v1_1_14 \
  "../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/cf24/hdl/axis_combiner_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axis_combiner_0_0/sim/design_1_axis_combiner_0_0.v" \
-endlib
-makelib ies_lib/axis_register_slice_v1_1_15 \
  "../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/cd45/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_dwidth_converter_v1_1_14 \
  "../../../../Spektrop2_CMV4000_V2.srcs/sources_1/bd/design_1/ipshared/1019/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axis_dwidth_converter_0_0/sim/design_1_axis_dwidth_converter_0_0.v" \
  "../../../bd/design_1/ip/design_1_axis_dwidth_converter_0_1/sim/design_1_axis_dwidth_converter_0_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

