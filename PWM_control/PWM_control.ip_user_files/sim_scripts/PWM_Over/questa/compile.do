vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/PWM_Over/ip/PWM_Over_Comparator_0_2/sim/PWM_Over_Comparator_0_2.vhd" \
"../../../bd/PWM_Over/ip/PWM_Over_Reg_0_0_1/sim/PWM_Over_Reg_0_0.vhd" \
"../../../bd/PWM_Over/ip/PWM_Over_Upcounter_0_0_1/sim/PWM_Over_Upcounter_0_0.vhd" \
"../../../bd/PWM_Over/ip/PWM_Over_DataChecker_0_0/sim/PWM_Over_DataChecker_0_0.vhd" \
"../../../bd/PWM_Over/ip/PWM_Over_Controller_0_0/sim/PWM_Over_Controller_0_0.vhd" \
"../../../bd/PWM_Over/sim/PWM_Over.vhd" \


