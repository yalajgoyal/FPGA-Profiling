// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xapply_watermark.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XApply_watermark_CfgInitialize(XApply_watermark *InstancePtr, XApply_watermark_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XApply_watermark_Start(XApply_watermark *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_AP_CTRL) & 0x80;
    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XApply_watermark_IsDone(XApply_watermark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XApply_watermark_IsIdle(XApply_watermark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XApply_watermark_IsReady(XApply_watermark *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XApply_watermark_EnableAutoRestart(XApply_watermark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XApply_watermark_DisableAutoRestart(XApply_watermark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_AP_CTRL, 0);
}

void XApply_watermark_Set_input_r(XApply_watermark *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XApply_watermark_Get_input_r(XApply_watermark *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XApply_watermark_Set_output_r(XApply_watermark *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XApply_watermark_Get_output_r(XApply_watermark *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XApply_watermark_InterruptGlobalEnable(XApply_watermark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_GIE, 1);
}

void XApply_watermark_InterruptGlobalDisable(XApply_watermark *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_GIE, 0);
}

void XApply_watermark_InterruptEnable(XApply_watermark *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_IER);
    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_IER, Register | Mask);
}

void XApply_watermark_InterruptDisable(XApply_watermark *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_IER);
    XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_IER, Register & (~Mask));
}

void XApply_watermark_InterruptClear(XApply_watermark *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XApply_watermark_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_ISR, Mask);
}

u32 XApply_watermark_InterruptGetEnabled(XApply_watermark *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_IER);
}

u32 XApply_watermark_InterruptGetStatus(XApply_watermark *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XApply_watermark_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_WATERMARK_CONTROL_ADDR_ISR);
}

