
################################################################
# This is a generated script based on design: sensor_readout
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source sensor_readout_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z015clg485-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name sensor_readout

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXIS_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {10000000} \
   ] $M_AXIS_0
  set vid_io_in_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_io_in_0 ]
  set vid_io_in_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_io_in_1 ]
  set vtiming_out_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:video_timing_rtl:2.0 vtiming_out_0 ]
  set vtiming_out_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:video_timing_rtl:2.0 vtiming_out_1 ]

  # Create ports
  set aclk_0 [ create_bd_port -dir I -type clk aclk_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {10000000} \
 ] $aclk_0
  set aclken_0 [ create_bd_port -dir I -type ce aclken_0 ]
  set aresetn_0 [ create_bd_port -dir I -type rst aresetn_0 ]
  set axis_enable_0 [ create_bd_port -dir I axis_enable_0 ]
  set fid_0 [ create_bd_port -dir O fid_0 ]
  set fid_1 [ create_bd_port -dir O fid_1 ]
  set overflow_0 [ create_bd_port -dir O overflow_0 ]
  set overflow_1 [ create_bd_port -dir O overflow_1 ]
  set underflow_0 [ create_bd_port -dir O underflow_0 ]
  set underflow_1 [ create_bd_port -dir O underflow_1 ]
  set vid_io_in_ce_0 [ create_bd_port -dir I -type ce vid_io_in_ce_0 ]
  set vid_io_in_clk_0 [ create_bd_port -dir I -type clk vid_io_in_clk_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {74250000} \
 ] $vid_io_in_clk_0
  set vid_io_in_reset_0 [ create_bd_port -dir I -type rst vid_io_in_reset_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $vid_io_in_reset_0

  # Create instance: axis_combiner_0, and set properties
  set axis_combiner_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_combiner:1.1 axis_combiner_0 ]

  # Create instance: axis_dwidth_converter_0, and set properties
  set axis_dwidth_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_0 ]
  set_property -dict [ list \
   CONFIG.HAS_MI_TKEEP {0} \
   CONFIG.M_TDATA_NUM_BYTES {4} \
 ] $axis_dwidth_converter_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {12} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
   CONFIG.C_M_AXIS_VIDEO_FORMAT {12} \
   CONFIG.C_NATIVE_COMPONENT_WIDTH {12} \
   CONFIG.C_PIXELS_PER_CLOCK {8} \
 ] $v_vid_in_axi4s_0

  # Create instance: v_vid_in_axi4s_1, and set properties
  set v_vid_in_axi4s_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_1 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {12} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
   CONFIG.C_M_AXIS_VIDEO_FORMAT {12} \
   CONFIG.C_NATIVE_COMPONENT_WIDTH {12} \
   CONFIG.C_PIXELS_PER_CLOCK {8} \
 ] $v_vid_in_axi4s_1

  # Create interface connections
  connect_bd_intf_net -intf_net axis_combiner_0_M_AXIS [get_bd_intf_pins axis_combiner_0/M_AXIS] [get_bd_intf_pins axis_dwidth_converter_0/S_AXIS]
  connect_bd_intf_net -intf_net axis_dwidth_converter_0_M_AXIS [get_bd_intf_ports M_AXIS_0] [get_bd_intf_pins axis_dwidth_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_video_out [get_bd_intf_pins axis_combiner_0/S00_AXIS] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_vtiming_out [get_bd_intf_ports vtiming_out_0] [get_bd_intf_pins v_vid_in_axi4s_0/vtiming_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_1_video_out [get_bd_intf_pins axis_combiner_0/S01_AXIS] [get_bd_intf_pins v_vid_in_axi4s_1/video_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_1_vtiming_out [get_bd_intf_ports vtiming_out_1] [get_bd_intf_pins v_vid_in_axi4s_1/vtiming_out]
  connect_bd_intf_net -intf_net vid_io_in_0_1 [get_bd_intf_ports vid_io_in_0] [get_bd_intf_pins v_vid_in_axi4s_0/vid_io_in]
  connect_bd_intf_net -intf_net vid_io_in_1_1 [get_bd_intf_ports vid_io_in_1] [get_bd_intf_pins v_vid_in_axi4s_1/vid_io_in]

  # Create port connections
  connect_bd_net -net aclk_0_1 [get_bd_ports aclk_0] [get_bd_pins axis_combiner_0/aclk] [get_bd_pins axis_dwidth_converter_0/aclk] [get_bd_pins v_vid_in_axi4s_0/aclk] [get_bd_pins v_vid_in_axi4s_1/aclk]
  connect_bd_net -net aclken_0_1 [get_bd_ports aclken_0] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_1/aclken]
  connect_bd_net -net aresetn_0_1 [get_bd_ports aresetn_0] [get_bd_pins axis_combiner_0/aresetn] [get_bd_pins axis_dwidth_converter_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/aresetn] [get_bd_pins v_vid_in_axi4s_1/aresetn]
  connect_bd_net -net axis_enable_0_1 [get_bd_ports axis_enable_0] [get_bd_pins v_vid_in_axi4s_0/axis_enable] [get_bd_pins v_vid_in_axi4s_1/axis_enable]
  connect_bd_net -net v_vid_in_axi4s_0_fid [get_bd_ports fid_0] [get_bd_pins v_vid_in_axi4s_0/fid]
  connect_bd_net -net v_vid_in_axi4s_0_overflow [get_bd_ports overflow_0] [get_bd_pins v_vid_in_axi4s_0/overflow]
  connect_bd_net -net v_vid_in_axi4s_0_underflow [get_bd_ports underflow_0] [get_bd_pins v_vid_in_axi4s_0/underflow]
  connect_bd_net -net v_vid_in_axi4s_1_fid [get_bd_ports fid_1] [get_bd_pins v_vid_in_axi4s_1/fid]
  connect_bd_net -net v_vid_in_axi4s_1_overflow [get_bd_ports overflow_1] [get_bd_pins v_vid_in_axi4s_1/overflow]
  connect_bd_net -net v_vid_in_axi4s_1_underflow [get_bd_ports underflow_1] [get_bd_pins v_vid_in_axi4s_1/underflow]
  connect_bd_net -net vid_io_in_ce_0_1 [get_bd_ports vid_io_in_ce_0] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_ce]
  connect_bd_net -net vid_io_in_clk_0_1 [get_bd_ports vid_io_in_clk_0] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_clk]
  connect_bd_net -net vid_io_in_reset_0_1 [get_bd_ports vid_io_in_reset_0] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_reset]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


