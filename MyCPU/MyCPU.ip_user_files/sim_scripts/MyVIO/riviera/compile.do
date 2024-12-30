transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl/verilog" "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl" -l xpm -l xil_defaultlib \
"C:/App/Dev/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/App/Dev/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl/verilog" "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl" -l xpm -l xil_defaultlib \
"../../../../MyCPU.gen/sources_1/ip/MyVIO/sim/MyVIO.v" \


vlog -work xil_defaultlib \
"glbl.v"

