# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\daanv\Desktop\Git\PWM_controller_motor\PWM_Control\PWM_Control_SW\Pwm_controller_motorcontroller\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\daanv\Desktop\Git\PWM_controller_motor\PWM_Control\PWM_Control_SW\Pwm_controller_motorcontroller\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Pwm_controller_motorcontroller}\
-hw {C:\Users\daanv\Desktop\Git\PWM_controller_motor\PWM_Control\design_with_processor_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_Control_SW}

platform write
platform generate -domains 
platform active {Pwm_controller_motorcontroller}
platform generate
platform active {Pwm_controller_motorcontroller}
bsp reload
bsp reload
platform active {Pwm_controller_motorcontroller}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform generate -domains 
domain active {zynq_fsbl}
bsp reload
