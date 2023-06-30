/*
 * Interrupt_Setup.h
 *
 *  Created on: Jun 30, 2023
 *      Author: daanv
 */

#ifndef SRC_INTERRUPT_SETUP_H_
#define SRC_INTERRUPT_SETUP_H_

#include "xscugic.h"
#include "Interrupt_handlers.h"

XScuGic InterruptController;
static XScuGic_Config *GicConfig;

int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
int interrupt_init();

#endif /* SRC_INTERRUPT_SETUP_H_ */
