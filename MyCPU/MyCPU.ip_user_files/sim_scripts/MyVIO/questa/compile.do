vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl/verilog" "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl" \
"C:/App/Dev/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/App/Dev/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl/verilog" "+incdir+../../../../MyCPU.gen/sources_1/ip/MyVIO/hdl" \
"../../../../MyCPU.gen/sources_1/ip/MyVIO/sim/MyVIO.v" \


vlog -work xil_defaultlib \
"glbl.v"

