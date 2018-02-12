############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       ps7_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              xc7z015clg485-3
##                    Device Size:        xc7z015
##                    Package:            clg485
##                    Speedgrade:         -3
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################
create_clock -name clk_fpga_0 -period "20" [get_pins "PS7_i/FCLKCLK[0]"]
set_input_jitter clk_fpga_0 0.6
#The clocks are asynchronous, user should constrain them appropriately.#
create_clock -name clk_fpga_1 -period "10" [get_pins "PS7_i/FCLKCLK[1]"]
set_input_jitter clk_fpga_1 0.3
#The clocks are asynchronous, user should constrain them appropriately.#


############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  UART 0 / tx / MIO[11]
set_property iostandard "LVCMOS18" [get_ports "MIO[11]"]
set_property PACKAGE_PIN "B19" [get_ports "MIO[11]"]
set_property slew "slow" [get_ports "MIO[11]"]
set_property drive "8" [get_ports "MIO[11]"]
set_property pullup "TRUE" [get_ports "MIO[11]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[11]"]
#  UART 0 / rx / MIO[10]
set_property iostandard "LVCMOS18" [get_ports "MIO[10]"]
set_property PACKAGE_PIN "G16" [get_ports "MIO[10]"]
set_property slew "slow" [get_ports "MIO[10]"]
set_property drive "8" [get_ports "MIO[10]"]
set_property pullup "TRUE" [get_ports "MIO[10]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[10]"]
#  Quad SPI Flash / qspi0_sclk / MIO[6]
set_property iostandard "LVCMOS18" [get_ports "MIO[6]"]
set_property PACKAGE_PIN "A19" [get_ports "MIO[6]"]
set_property slew "slow" [get_ports "MIO[6]"]
set_property drive "8" [get_ports "MIO[6]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[6]"]
#  Quad SPI Flash / qspi0_io[3]/HOLD_B / MIO[5]
set_property iostandard "LVCMOS18" [get_ports "MIO[5]"]
set_property PACKAGE_PIN "A20" [get_ports "MIO[5]"]
set_property slew "slow" [get_ports "MIO[5]"]
set_property drive "8" [get_ports "MIO[5]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[5]"]
#  Quad SPI Flash / qspi0_io[2] / MIO[4]
set_property iostandard "LVCMOS18" [get_ports "MIO[4]"]
set_property PACKAGE_PIN "E19" [get_ports "MIO[4]"]
set_property slew "slow" [get_ports "MIO[4]"]
set_property drive "8" [get_ports "MIO[4]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[4]"]
#  Quad SPI Flash / qspi0_io[1] / MIO[3]
set_property iostandard "LVCMOS18" [get_ports "MIO[3]"]
set_property PACKAGE_PIN "F17" [get_ports "MIO[3]"]
set_property slew "slow" [get_ports "MIO[3]"]
set_property drive "8" [get_ports "MIO[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[3]"]
#  Quad SPI Flash / qspi0_io[0] / MIO[2]
set_property iostandard "LVCMOS18" [get_ports "MIO[2]"]
set_property PACKAGE_PIN "A21" [get_ports "MIO[2]"]
set_property slew "slow" [get_ports "MIO[2]"]
set_property drive "8" [get_ports "MIO[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[2]"]
#  Quad SPI Flash / qspi0_ss_b / MIO[1]
set_property iostandard "LVCMOS18" [get_ports "MIO[1]"]
set_property PACKAGE_PIN "A22" [get_ports "MIO[1]"]
set_property slew "slow" [get_ports "MIO[1]"]
set_property drive "8" [get_ports "MIO[1]"]
set_property pullup "TRUE" [get_ports "MIO[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[1]"]
set_property iostandard "LVCMOS18" [get_ports "PS_PORB"]
set_property PACKAGE_PIN "B18" [get_ports "PS_PORB"]
set_property slew "fast" [get_ports "PS_PORB"]
set_property iostandard "HSTL_I_18" [get_ports "PS_SRSTB"]
set_property PACKAGE_PIN "C14" [get_ports "PS_SRSTB"]
set_property slew "fast" [get_ports "PS_SRSTB"]
set_property iostandard "LVCMOS18" [get_ports "PS_CLK"]
set_property PACKAGE_PIN "F16" [get_ports "PS_CLK"]
set_property slew "fast" [get_ports "PS_CLK"]

