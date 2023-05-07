// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xapply_watermark.h"

extern XApply_watermark_Config XApply_watermark_ConfigTable[];

XApply_watermark_Config *XApply_watermark_LookupConfig(u16 DeviceId) {
	XApply_watermark_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAPPLY_WATERMARK_NUM_INSTANCES; Index++) {
		if (XApply_watermark_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XApply_watermark_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XApply_watermark_Initialize(XApply_watermark *InstancePtr, u16 DeviceId) {
	XApply_watermark_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XApply_watermark_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XApply_watermark_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

