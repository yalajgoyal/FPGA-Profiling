############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_project_apply_watermark
set_top apply_watermark
add_files Vitis_Accel_Examples/cpp_kernels/critical_path/src/apply_watermark.cpp
add_files Vitis_Accel_Examples/common/includes/bitmap/bitmap.cpp
add_files -tb Vitis_Accel_Examples/cpp_kernels/critical_path/src/krnl_apply_watermark_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
config_export -format ip_catalog -rtl verilog
source "./HLS_project_apply_watermark/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
