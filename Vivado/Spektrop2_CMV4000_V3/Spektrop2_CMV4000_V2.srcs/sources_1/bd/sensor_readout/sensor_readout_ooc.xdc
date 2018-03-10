################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name vid_io_in_clk_0 -period 13.468 [get_ports vid_io_in_clk_0]
create_clock -name aclk_0 -period 100 [get_ports aclk_0]

################################################################################