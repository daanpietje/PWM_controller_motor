/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "motor_controller.h"
#include "xgpio.h"
#include "Interrupt_Handlers.h"
#include "sleep.h"
#include "Interrupt_Setup.h"

int main()
{

	char objectDetected = 0;
    init_platform();

    print("start program");

    interrupt_init();

	XGpio motorpin0;
	XGpio_Initialize(&motorpin0, XPAR_AXI_GPIO_MOTOR_0_DEVICE_ID);
	XGpio_SetDataDirection(&motorpin0, 1, 0x0);

	XGpio motorpin1;
	XGpio_Initialize(&motorpin1,XPAR_AXI_GPIO_MOTOR_1_DEVICE_ID);
	XGpio_SetDataDirection(&motorpin1, 1, 0x0);


    while(1){
    	switch(objectDetected){
    	        case 'L':
    	        	xil_printf("Object Left: steer right\r\n");
    	        	break;

    	        case 'R':
    	        	xil_printf("Object Right: steer left\r\n");
    	        	break;

    	        default:
    	        	xil_printf("No objects or Lines detected, drive ahead\r\n");
    	        	sleep(0.5);
    	        }
    	printf("kut thOmas");

    };

    cleanup_platform();
    return 0;
}
