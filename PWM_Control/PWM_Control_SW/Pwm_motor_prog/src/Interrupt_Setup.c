#include "Interrupt_Setup.h"

XScuGic InterruptController;

int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr)
{
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

int interrupt_init()
{
	int Status;

	GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}
	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = SetUpInterruptSystem(&InterruptController);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	//calls on the LineLeft interrupt when pin 0 is high
	Status = XScuGic_Connect(&InterruptController, XPAR_FABRIC_EXT_PIN0_INTR, (Xil_ExceptionHandler)LineLeft_Handler, (void *)NULL);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XScuGic_Enable(&InterruptController, XPAR_FABRIC_EXT_PIN0_INTR);

	//calls on the LineRight interrupt when pin 1 is high
	Status = XScuGic_Connect(&InterruptController, XPAR_FABRIC_EXT_PIN1_INTR, (Xil_ExceptionHandler)LineRight_Handler, (void *)NULL);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XScuGic_Enable(&InterruptController, XPAR_FABRIC_EXT_PIN1_INTR);


	return XST_SUCCESS;
}
