// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAPPLY_WATERMARK_H
#define XAPPLY_WATERMARK_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xapply_watermark_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XApply_watermark_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XApply_watermark;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XApply_watermark_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XApply_watermark_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XApply_watermark_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XApply_watermark_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XApply_watermark_Initialize(XApply_watermark *InstancePtr, u16 DeviceId);
XApply_watermark_Config* XApply_watermark_LookupConfig(u16 DeviceId);
int XApply_watermark_CfgInitialize(XApply_watermark *InstancePtr, XApply_watermark_Config *ConfigPtr);
#else
int XApply_watermark_Initialize(XApply_watermark *InstancePtr, const char* InstanceName);
int XApply_watermark_Release(XApply_watermark *InstancePtr);
#endif

void XApply_watermark_Start(XApply_watermark *InstancePtr);
u32 XApply_watermark_IsDone(XApply_watermark *InstancePtr);
u32 XApply_watermark_IsIdle(XApply_watermark *InstancePtr);
u32 XApply_watermark_IsReady(XApply_watermark *InstancePtr);
void XApply_watermark_EnableAutoRestart(XApply_watermark *InstancePtr);
void XApply_watermark_DisableAutoRestart(XApply_watermark *InstancePtr);

void XApply_watermark_Set_input_r(XApply_watermark *InstancePtr, u64 Data);
u64 XApply_watermark_Get_input_r(XApply_watermark *InstancePtr);
void XApply_watermark_Set_output_r(XApply_watermark *InstancePtr, u64 Data);
u64 XApply_watermark_Get_output_r(XApply_watermark *InstancePtr);

void XApply_watermark_InterruptGlobalEnable(XApply_watermark *InstancePtr);
void XApply_watermark_InterruptGlobalDisable(XApply_watermark *InstancePtr);
void XApply_watermark_InterruptEnable(XApply_watermark *InstancePtr, u32 Mask);
void XApply_watermark_InterruptDisable(XApply_watermark *InstancePtr, u32 Mask);
void XApply_watermark_InterruptClear(XApply_watermark *InstancePtr, u32 Mask);
u32 XApply_watermark_InterruptGetEnabled(XApply_watermark *InstancePtr);
u32 XApply_watermark_InterruptGetStatus(XApply_watermark *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
