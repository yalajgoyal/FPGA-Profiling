set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME apply_watermark_entry_proc}
  {SRCNAME load_input_Pipeline_image_traverse MODELNAME load_input_Pipeline_image_traverse RTLNAME apply_watermark_load_input_Pipeline_image_traverse
    SUBMODULES {
      {MODELNAME apply_watermark_flow_control_loop_pipe_sequential_init RTLNAME apply_watermark_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME apply_watermark_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_input MODELNAME load_input RTLNAME apply_watermark_load_input}
  {SRCNAME saturatedAdd MODELNAME saturatedAdd RTLNAME apply_watermark_saturatedAdd}
  {SRCNAME compute_watermark MODELNAME compute_watermark RTLNAME apply_watermark_compute_watermark
    SUBMODULES {
      {MODELNAME apply_watermark_compute_watermark_watermark_ROM_AUTO_1R RTLNAME apply_watermark_compute_watermark_watermark_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME apply_watermark_flow_control_loop_pipe RTLNAME apply_watermark_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME apply_watermark_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME store_result_Pipeline_mem_wr MODELNAME store_result_Pipeline_mem_wr RTLNAME apply_watermark_store_result_Pipeline_mem_wr}
  {SRCNAME store_result MODELNAME store_result RTLNAME apply_watermark_store_result}
  {SRCNAME apply_watermark MODELNAME apply_watermark RTLNAME apply_watermark IS_TOP 1
    SUBMODULES {
      {MODELNAME apply_watermark_fifo_w64_d4_S RTLNAME apply_watermark_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME apply_watermark_fifo_w512_d2_S RTLNAME apply_watermark_fifo_w512_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME apply_watermark_fifo_w32_d2_S RTLNAME apply_watermark_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME apply_watermark_start_for_store_result_U0 RTLNAME apply_watermark_start_for_store_result_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME apply_watermark_start_for_compute_watermark_U0 RTLNAME apply_watermark_start_for_compute_watermark_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME apply_watermark_gmem0_m_axi RTLNAME apply_watermark_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME apply_watermark_gmem1_m_axi RTLNAME apply_watermark_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME apply_watermark_control_s_axi RTLNAME apply_watermark_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
