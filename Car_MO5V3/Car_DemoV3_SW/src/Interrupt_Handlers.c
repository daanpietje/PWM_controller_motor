#include "Interrupt_Handlers.h"



void ExtIrq_Handler(void *InstancePtr)
{
	xil_printf("Pin0\r\n");
}

void ExtIrq_Handler1(void *InstancePtr)
{
	xil_printf("Pin1\r\n");
}


void LineRight_Handler(void *InstancePtr){

	xil_printf("steer left\r\n");
}

void LineLeft_Handler(void *InstancePtr){

	xil_printf("steer right\r\n");
}
