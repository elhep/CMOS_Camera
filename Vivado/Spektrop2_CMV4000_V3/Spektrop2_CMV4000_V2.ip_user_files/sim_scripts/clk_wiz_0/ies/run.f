-makelib ies_lib/xil_defaultlib -sv \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Spektrop2_CMV4000_V2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
  "../../../../Spektrop2_CMV4000_V2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

