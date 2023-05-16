onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+PWM_Over  -L xil_defaultlib -L secureip -O5 xil_defaultlib.PWM_Over

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {PWM_Over.udo}

run 1000ns

endsim

quit -force
