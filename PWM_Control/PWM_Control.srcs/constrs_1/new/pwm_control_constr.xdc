set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {ext_pin0}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {ext_pin1}]

set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {pwm_motor_0}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {pwm_motor_1}]

set_property SLEW SLOW [get_ports {pwm_motor_0}]
set_property SLEW SLOW [get_ports {pwm_motor_1}]