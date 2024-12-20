/*
 * Interrupt_Handlers.h
 *
 *  Created on: 13 jun. 2023
 *      Author: lisan
 */

#ifndef SRC_INTERRUPT_HANDLERS_H_
#define SRC_INTERRUPT_HANDLERS_H_

#include "xil_printf.h"

// Interrupt is called upon when pin 0 is high, this means a line is detected on the left side
// when this interrupt is triggered the car should steer to the right
void LineRight_Handler(void *InstancePtr);

// // Interrupt is called upon when pin 1 is high, this means a line is detected on the right side
// when this interrupt is triggered the car should steer to the left
void LineLeft_Handler(void *InstancePtr);


#endif /* SRC_INTERRUPT_HANDLERS_H_ */
