set SynModuleInfo {
  {SRCNAME krnl_vadd_Pipeline_vadd1 MODELNAME krnl_vadd_Pipeline_vadd1 RTLNAME krnl_vadd_krnl_vadd_Pipeline_vadd1
    SUBMODULES {
      {MODELNAME krnl_vadd_flow_control_loop_pipe_sequential_init RTLNAME krnl_vadd_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME krnl_vadd_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME krnl_vadd MODELNAME krnl_vadd RTLNAME krnl_vadd IS_TOP 1
    SUBMODULES {
      {MODELNAME krnl_vadd_control_s_axi RTLNAME krnl_vadd_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME krnl_vadd_gmem0_m_axi RTLNAME krnl_vadd_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME krnl_vadd_gmem1_m_axi RTLNAME krnl_vadd_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
