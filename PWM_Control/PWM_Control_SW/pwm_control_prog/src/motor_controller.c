/*
 * motor_controller.c
 *
 *  Created on: Jun 8, 2023
 *      Author: daanv
 */

#include "motor_controller.h"
#include "xgpio.h"

void change_speed(struct motor* motor_settings, int speed){
	motor_settings->current_speed = speed;
}

void speed_out(struct motor* motor_settings){
	XGpio_DiscreteWrite(&motor_settings->motorGPIO, 1, 128);
}