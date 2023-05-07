
set TopModule "apply_watermark"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set ResetRegisterNum 3
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix apply_watermark_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c {../../Vitis_Accel_Examples/common/includes/bitmap/bitmap.cpp ../../Vitis_Accel_Examples/cpp_kernels/critical_path/src/apply_watermark.cpp}}
set SourceFlags {sc {} c {{} {}}}
set DirectiveFile /export/hdd/scratch/ygoyal8/special_problems/HLS_project_apply_watermark/solution1/solution1.directive
set TBFiles {verilog ../../Vitis_Accel_Examples/cpp_kernels/critical_path/src/krnl_apply_watermark_test.cpp bc ../../Vitis_Accel_Examples/cpp_kernels/critical_path/src/krnl_apply_watermark_test.cpp vhdl ../../Vitis_Accel_Examples/cpp_kernels/critical_path/src/krnl_apply_watermark_test.cpp sc ../../Vitis_Accel_Examples/cpp_kernels/critical_path/src/krnl_apply_watermark_test.cpp cas ../../Vitis_Accel_Examples/cpp_kernels/critical_path/src/krnl_apply_watermark_test.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
