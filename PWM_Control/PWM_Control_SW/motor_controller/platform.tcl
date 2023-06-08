# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\daanv\Desktop\Git\PWM_controller_motor\PWM_Control\PWM_Control_SW\motor_controller\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\daanv\Desktop\Git\PWM_controller_motor\PWM_Control\PWM_Control_SW\motor_controller\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {motor_controller}\
-hw {C:\Users\daanv\Desktop\Git\PWM_controller_motor\PWM_Control\design_with_processor_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_Control_SW}

platform write
platform generate -domains 
platform active {motor_controller}
catch {platform remove motor_controller}
