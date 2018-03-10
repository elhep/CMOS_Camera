onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+sensor_readout -L xil_defaultlib -L xpm -L v_vid_in_axi4s_v4_0_7 -L axis_infrastructure_v1_1_0 -L axis_combiner_v1_1_14 -L axis_register_slice_v1_1_15 -L axis_dwidth_converter_v1_1_14 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sensor_readout xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {sensor_readout.udo}

run -all

endsim

quit -force
