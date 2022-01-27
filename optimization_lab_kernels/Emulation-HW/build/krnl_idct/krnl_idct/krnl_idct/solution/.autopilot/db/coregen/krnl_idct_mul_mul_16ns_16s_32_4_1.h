// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __krnl_idct_mul_mul_16ns_16s_32_4_1__HH__
#define __krnl_idct_mul_mul_16ns_16s_32_4_1__HH__
#include "krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(krnl_idct_mul_mul_16ns_16s_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2 krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U;

    SC_CTOR(krnl_idct_mul_mul_16ns_16s_32_4_1):  krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U ("krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U") {
        krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U.clk(clk);
        krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U.rst(reset);
        krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U.ce(ce);
        krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U.a(din0);
        krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U.b(din1);
        krnl_idct_mul_mul_16ns_16s_32_4_1_DSP48_2_U.p(dout);

    }

};

#endif //
