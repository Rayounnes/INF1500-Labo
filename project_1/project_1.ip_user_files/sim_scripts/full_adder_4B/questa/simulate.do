onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib full_adder_4B_opt

do {wave.do}

view wave
view structure
view signals

do {full_adder_4B.udo}

run -all

quit -force
