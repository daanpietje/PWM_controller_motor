/*
 * motor_controller.h
 *
 *  Created on: Jun 8, 2023
 *      Author: daanv
 */

#ifndef SRC_MOTOR_CONTROLLER_H_
#define SRC_MOTOR_CONTROLLER_H_
#include "motor_controller.h"
#include "xgpio.h"

struct motor{
	int current_speed;
	XGpio motorGPIO;
};

void change_speed(struct motor* motor_settings, int speed);
void speed_out(struct motor* motor_settings);

#endif /* SRC_MOTOR_CONTROLLER_H_ */