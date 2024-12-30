transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+MyVIO  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MyVIO xil_defaultlib.glbl

do {MyVIO.udo}

run 1000ns

endsim

quit -force
