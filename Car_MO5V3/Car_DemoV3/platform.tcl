# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\daanv\Desktop\Git\PWM_controller_motor\Car_MO5V3\Car_DemoV3\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\daanv\Desktop\Git\PWM_controller_motor\Car_MO5V3\Car_DemoV3\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Car_DemoV3}\
-hw {C:\Users\daanv\Desktop\Git\PWM_controller_motor\Car_MO5V3\Complete_design_car_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/daanv/Desktop/Git/PWM_controller_motor/Car_MO5V3}

platform write
platform generate -domains 
platform active {Car_DemoV3}
platform generate
