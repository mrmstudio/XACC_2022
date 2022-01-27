set SynModuleInfo {
  {SRCNAME krnl_idct_Pipeline_loop_rd_blocks MODELNAME krnl_idct_Pipeline_loop_rd_blocks RTLNAME krnl_idct_krnl_idct_Pipeline_loop_rd_blocks}
  {SRCNAME krnl_idct_Pipeline_loop_rd_blocks1 MODELNAME krnl_idct_Pipeline_loop_rd_blocks1 RTLNAME krnl_idct_krnl_idct_Pipeline_loop_rd_blocks1
    SUBMODULES {
      {MODELNAME krnl_idct_flow_control_loop_pipe_sequential_init RTLNAME krnl_idct_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME krnl_idct_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME execute MODELNAME execute RTLNAME krnl_idct_execute
    SUBMODULES {
      {MODELNAME krnl_idct_mul_32s_11ns_32_2_1 RTLNAME krnl_idct_mul_32s_11ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_32s_13ns_32_2_1 RTLNAME krnl_idct_mul_32s_13ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_32s_13s_32_2_1 RTLNAME krnl_idct_mul_32s_13s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_32s_11s_32_2_1 RTLNAME krnl_idct_mul_32s_11s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_32s_12ns_32_2_1 RTLNAME krnl_idct_mul_32s_12ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_32s_9ns_32_2_1 RTLNAME krnl_idct_mul_32s_9ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_31s_9ns_32_2_1 RTLNAME krnl_idct_mul_31s_9ns_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_mul_16s_16s_16_4_1 RTLNAME krnl_idct_mul_mul_16s_16s_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_mul_16s_16ns_21_4_1 RTLNAME krnl_idct_mul_mul_16s_16ns_21_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mul_mul_16ns_16s_32_4_1 RTLNAME krnl_idct_mul_mul_16ns_16s_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_am_addmul_27s_27s_11ns_27_4_1 RTLNAME krnl_idct_am_addmul_27s_27s_11ns_27_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mac_muladd_27s_13s_27ns_27_4_1 RTLNAME krnl_idct_mac_muladd_27s_13s_27ns_27_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mac_muladd_27s_11ns_27ns_27_4_1 RTLNAME krnl_idct_mac_muladd_27s_11ns_27ns_27_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_ama_addmuladd_24s_24s_10ns_3ns_32_4_1 RTLNAME krnl_idct_ama_addmuladd_24s_24s_10ns_3ns_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_am_addmul_24s_24s_12ns_32_4_1 RTLNAME krnl_idct_am_addmul_24s_24s_12ns_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_ama_addmuladd_24s_24s_11ns_3ns_30_4_1 RTLNAME krnl_idct_ama_addmuladd_24s_24s_11ns_3ns_30_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mac_muladd_24s_12ns_32ns_32_4_1 RTLNAME krnl_idct_mac_muladd_24s_12ns_32ns_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mac_muladd_24s_13s_32ns_32_4_1 RTLNAME krnl_idct_mac_muladd_24s_13s_32ns_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mac_muladd_24s_11s_32ns_32_4_1 RTLNAME krnl_idct_mac_muladd_24s_11s_32ns_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mac_muladd_24s_13s_30ns_30_4_1 RTLNAME krnl_idct_mac_muladd_24s_13s_30ns_30_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_idct_mac_muladd_24s_11ns_30ns_30_4_1 RTLNAME krnl_idct_mac_muladd_24s_11ns_30ns_30_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_idct_Pipeline_loop_wr_blocks MODELNAME krnl_idct_Pipeline_loop_wr_blocks RTLNAME krnl_idct_krnl_idct_Pipeline_loop_wr_blocks}
  {SRCNAME krnl_idct MODELNAME krnl_idct RTLNAME krnl_idct IS_TOP 1
    SUBMODULES {
      {MODELNAME krnl_idct_fifo_w512_d512_A RTLNAME krnl_idct_fifo_w512_d512_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME krnl_idct_fifo_w512_d2_S RTLNAME krnl_idct_fifo_w512_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME krnl_idct_control_s_axi RTLNAME krnl_idct_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME krnl_idct_gmem0_m_axi RTLNAME krnl_idct_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME krnl_idct_gmem1_m_axi RTLNAME krnl_idct_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME krnl_idct_gmem2_m_axi RTLNAME krnl_idct_gmem2_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
