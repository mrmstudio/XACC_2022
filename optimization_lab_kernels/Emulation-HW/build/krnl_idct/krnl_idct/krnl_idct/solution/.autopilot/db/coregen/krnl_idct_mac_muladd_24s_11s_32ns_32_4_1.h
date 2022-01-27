// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __krnl_idct_mac_muladd_24s_11s_32ns_32_4_1__HH__
#define __krnl_idct_mac_muladd_24s_11s_32ns_32_4_1__HH__
#include "krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(krnl_idct_mac_muladd_24s_11s_32ns_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11 krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U;

    SC_CTOR(krnl_idct_mac_muladd_24s_11s_32ns_32_4_1):  krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U ("krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U") {
        krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U.clk(clk);
        krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U.rst(reset);
        krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U.ce(ce);
        krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U.in0(din0);
        krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U.in1(din1);
        krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U.in2(din2);
        krnl_idct_mac_muladd_24s_11s_32ns_32_4_1_DSP48_11_U.dout(dout);

    }

};

#endif //
