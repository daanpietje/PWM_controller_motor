vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../PWM_Control.gen/sources_1/bd/Design_over/ipshared/7698" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PWM_Control.gen/sources_1/bd/Design_over/ipshared/7698" \
"../../../bd/Design_over/ip/Design_over_Upcounter_0_0/sim/Design_over_Upcounter_0_0.v" \
"../../../bd/Design_over/ip/Design_over_Comparator_0_0/sim/Design_over_Comparator_0_0.v" \
"../../../bd/Design_over/ip/Design_over_clk_wiz_0_0/Design_over_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Design_over/ip/Design_over_clk_wiz_0_0/Design_over_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../PWM_Control.gen/sources_1/bd/Design_over/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../PWM_Control.gen/sources_1/bd/Design_over/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Design_over/ip/Design_over_rst_clk_wiz_0_100M_0/sim/Design_over_rst_clk_wiz_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../PWM_Control.gen/sources_1/bd/Design_over/ipshared/7698" \
"../../../bd/Design_over/sim/Design_over.v" \

vlog -work xil_defaultlib \
"glbl.v"

