// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.2.0
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="shell_utils_cudma_controller,hls_ip_2020_2_0,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=1492,HLS_SYN_LUT=2151,HLS_VERSION=2020_2_0}" *)

module shell_utils_cudma_controller (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_CQDma_AWVALID,
        m_axi_CQDma_AWREADY,
        m_axi_CQDma_AWADDR,
        m_axi_CQDma_AWID,
        m_axi_CQDma_AWLEN,
        m_axi_CQDma_AWSIZE,
        m_axi_CQDma_AWBURST,
        m_axi_CQDma_AWLOCK,
        m_axi_CQDma_AWCACHE,
        m_axi_CQDma_AWPROT,
        m_axi_CQDma_AWQOS,
        m_axi_CQDma_AWREGION,
        m_axi_CQDma_AWUSER,
        m_axi_CQDma_WVALID,
        m_axi_CQDma_WREADY,
        m_axi_CQDma_WDATA,
        m_axi_CQDma_WSTRB,
        m_axi_CQDma_WLAST,
        m_axi_CQDma_WID,
        m_axi_CQDma_WUSER,
        m_axi_CQDma_ARVALID,
        m_axi_CQDma_ARREADY,
        m_axi_CQDma_ARADDR,
        m_axi_CQDma_ARID,
        m_axi_CQDma_ARLEN,
        m_axi_CQDma_ARSIZE,
        m_axi_CQDma_ARBURST,
        m_axi_CQDma_ARLOCK,
        m_axi_CQDma_ARCACHE,
        m_axi_CQDma_ARPROT,
        m_axi_CQDma_ARQOS,
        m_axi_CQDma_ARREGION,
        m_axi_CQDma_ARUSER,
        m_axi_CQDma_RVALID,
        m_axi_CQDma_RREADY,
        m_axi_CQDma_RDATA,
        m_axi_CQDma_RLAST,
        m_axi_CQDma_RID,
        m_axi_CQDma_RUSER,
        m_axi_CQDma_RRESP,
        m_axi_CQDma_BVALID,
        m_axi_CQDma_BREADY,
        m_axi_CQDma_BRESP,
        m_axi_CQDma_BID,
        m_axi_CQDma_BUSER,
        m_axi_CUDma_AWVALID,
        m_axi_CUDma_AWREADY,
        m_axi_CUDma_AWADDR,
        m_axi_CUDma_AWID,
        m_axi_CUDma_AWLEN,
        m_axi_CUDma_AWSIZE,
        m_axi_CUDma_AWBURST,
        m_axi_CUDma_AWLOCK,
        m_axi_CUDma_AWCACHE,
        m_axi_CUDma_AWPROT,
        m_axi_CUDma_AWQOS,
        m_axi_CUDma_AWREGION,
        m_axi_CUDma_AWUSER,
        m_axi_CUDma_WVALID,
        m_axi_CUDma_WREADY,
        m_axi_CUDma_WDATA,
        m_axi_CUDma_WSTRB,
        m_axi_CUDma_WLAST,
        m_axi_CUDma_WID,
        m_axi_CUDma_WUSER,
        m_axi_CUDma_ARVALID,
        m_axi_CUDma_ARREADY,
        m_axi_CUDma_ARADDR,
        m_axi_CUDma_ARID,
        m_axi_CUDma_ARLEN,
        m_axi_CUDma_ARSIZE,
        m_axi_CUDma_ARBURST,
        m_axi_CUDma_ARLOCK,
        m_axi_CUDma_ARCACHE,
        m_axi_CUDma_ARPROT,
        m_axi_CUDma_ARQOS,
        m_axi_CUDma_ARREGION,
        m_axi_CUDma_ARUSER,
        m_axi_CUDma_RVALID,
        m_axi_CUDma_RREADY,
        m_axi_CUDma_RDATA,
        m_axi_CUDma_RLAST,
        m_axi_CUDma_RID,
        m_axi_CUDma_RUSER,
        m_axi_CUDma_RRESP,
        m_axi_CUDma_BVALID,
        m_axi_CUDma_BREADY,
        m_axi_CUDma_BRESP,
        m_axi_CUDma_BID,
        m_axi_CUDma_BUSER,
        CuDmaQueue,
        SlotSize,
        NoOfSlots,
        CqBaseAddress
);

parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_state2 = 27'd2;
parameter    ap_ST_fsm_state3 = 27'd4;
parameter    ap_ST_fsm_state4 = 27'd8;
parameter    ap_ST_fsm_state5 = 27'd16;
parameter    ap_ST_fsm_state6 = 27'd32;
parameter    ap_ST_fsm_state7 = 27'd64;
parameter    ap_ST_fsm_state8 = 27'd128;
parameter    ap_ST_fsm_state9 = 27'd256;
parameter    ap_ST_fsm_state10 = 27'd512;
parameter    ap_ST_fsm_state11 = 27'd1024;
parameter    ap_ST_fsm_state12 = 27'd2048;
parameter    ap_ST_fsm_state13 = 27'd4096;
parameter    ap_ST_fsm_state14 = 27'd8192;
parameter    ap_ST_fsm_state15 = 27'd16384;
parameter    ap_ST_fsm_state16 = 27'd32768;
parameter    ap_ST_fsm_state17 = 27'd65536;
parameter    ap_ST_fsm_state18 = 27'd131072;
parameter    ap_ST_fsm_state19 = 27'd262144;
parameter    ap_ST_fsm_pp0_stage0 = 27'd524288;
parameter    ap_ST_fsm_state23 = 27'd1048576;
parameter    ap_ST_fsm_state24 = 27'd2097152;
parameter    ap_ST_fsm_state25 = 27'd4194304;
parameter    ap_ST_fsm_state26 = 27'd8388608;
parameter    ap_ST_fsm_state27 = 27'd16777216;
parameter    ap_ST_fsm_state28 = 27'd33554432;
parameter    ap_ST_fsm_state29 = 27'd67108864;
parameter    C_M_AXI_CQDMA_ID_WIDTH = 1;
parameter    C_M_AXI_CQDMA_ADDR_WIDTH = 32;
parameter    C_M_AXI_CQDMA_DATA_WIDTH = 32;
parameter    C_M_AXI_CQDMA_AWUSER_WIDTH = 1;
parameter    C_M_AXI_CQDMA_ARUSER_WIDTH = 1;
parameter    C_M_AXI_CQDMA_WUSER_WIDTH = 1;
parameter    C_M_AXI_CQDMA_RUSER_WIDTH = 1;
parameter    C_M_AXI_CQDMA_BUSER_WIDTH = 1;
parameter    C_M_AXI_CQDMA_TARGET_ADDR = 0;
parameter    C_M_AXI_CQDMA_USER_VALUE = 0;
parameter    C_M_AXI_CQDMA_PROT_VALUE = 0;
parameter    C_M_AXI_CQDMA_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_CUDMA_ID_WIDTH = 1;
parameter    C_M_AXI_CUDMA_ADDR_WIDTH = 32;
parameter    C_M_AXI_CUDMA_DATA_WIDTH = 32;
parameter    C_M_AXI_CUDMA_AWUSER_WIDTH = 1;
parameter    C_M_AXI_CUDMA_ARUSER_WIDTH = 1;
parameter    C_M_AXI_CUDMA_WUSER_WIDTH = 1;
parameter    C_M_AXI_CUDMA_RUSER_WIDTH = 1;
parameter    C_M_AXI_CUDMA_BUSER_WIDTH = 1;
parameter    C_M_AXI_CUDMA_TARGET_ADDR = 0;
parameter    C_M_AXI_CUDMA_USER_VALUE = 0;
parameter    C_M_AXI_CUDMA_PROT_VALUE = 0;
parameter    C_M_AXI_CUDMA_CACHE_VALUE = 3;

parameter C_M_AXI_CQDMA_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_CUDMA_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_CQDma_AWVALID;
input   m_axi_CQDma_AWREADY;
output  [C_M_AXI_CQDMA_ADDR_WIDTH - 1:0] m_axi_CQDma_AWADDR;
output  [C_M_AXI_CQDMA_ID_WIDTH - 1:0] m_axi_CQDma_AWID;
output  [7:0] m_axi_CQDma_AWLEN;
output  [2:0] m_axi_CQDma_AWSIZE;
output  [1:0] m_axi_CQDma_AWBURST;
output  [1:0] m_axi_CQDma_AWLOCK;
output  [3:0] m_axi_CQDma_AWCACHE;
output  [2:0] m_axi_CQDma_AWPROT;
output  [3:0] m_axi_CQDma_AWQOS;
output  [3:0] m_axi_CQDma_AWREGION;
output  [C_M_AXI_CQDMA_AWUSER_WIDTH - 1:0] m_axi_CQDma_AWUSER;
output   m_axi_CQDma_WVALID;
input   m_axi_CQDma_WREADY;
output  [C_M_AXI_CQDMA_DATA_WIDTH - 1:0] m_axi_CQDma_WDATA;
output  [C_M_AXI_CQDMA_WSTRB_WIDTH - 1:0] m_axi_CQDma_WSTRB;
output   m_axi_CQDma_WLAST;
output  [C_M_AXI_CQDMA_ID_WIDTH - 1:0] m_axi_CQDma_WID;
output  [C_M_AXI_CQDMA_WUSER_WIDTH - 1:0] m_axi_CQDma_WUSER;
output   m_axi_CQDma_ARVALID;
input   m_axi_CQDma_ARREADY;
output  [C_M_AXI_CQDMA_ADDR_WIDTH - 1:0] m_axi_CQDma_ARADDR;
output  [C_M_AXI_CQDMA_ID_WIDTH - 1:0] m_axi_CQDma_ARID;
output  [7:0] m_axi_CQDma_ARLEN;
output  [2:0] m_axi_CQDma_ARSIZE;
output  [1:0] m_axi_CQDma_ARBURST;
output  [1:0] m_axi_CQDma_ARLOCK;
output  [3:0] m_axi_CQDma_ARCACHE;
output  [2:0] m_axi_CQDma_ARPROT;
output  [3:0] m_axi_CQDma_ARQOS;
output  [3:0] m_axi_CQDma_ARREGION;
output  [C_M_AXI_CQDMA_ARUSER_WIDTH - 1:0] m_axi_CQDma_ARUSER;
input   m_axi_CQDma_RVALID;
output   m_axi_CQDma_RREADY;
input  [C_M_AXI_CQDMA_DATA_WIDTH - 1:0] m_axi_CQDma_RDATA;
input   m_axi_CQDma_RLAST;
input  [C_M_AXI_CQDMA_ID_WIDTH - 1:0] m_axi_CQDma_RID;
input  [C_M_AXI_CQDMA_RUSER_WIDTH - 1:0] m_axi_CQDma_RUSER;
input  [1:0] m_axi_CQDma_RRESP;
input   m_axi_CQDma_BVALID;
output   m_axi_CQDma_BREADY;
input  [1:0] m_axi_CQDma_BRESP;
input  [C_M_AXI_CQDMA_ID_WIDTH - 1:0] m_axi_CQDma_BID;
input  [C_M_AXI_CQDMA_BUSER_WIDTH - 1:0] m_axi_CQDma_BUSER;
output   m_axi_CUDma_AWVALID;
input   m_axi_CUDma_AWREADY;
output  [C_M_AXI_CUDMA_ADDR_WIDTH - 1:0] m_axi_CUDma_AWADDR;
output  [C_M_AXI_CUDMA_ID_WIDTH - 1:0] m_axi_CUDma_AWID;
output  [7:0] m_axi_CUDma_AWLEN;
output  [2:0] m_axi_CUDma_AWSIZE;
output  [1:0] m_axi_CUDma_AWBURST;
output  [1:0] m_axi_CUDma_AWLOCK;
output  [3:0] m_axi_CUDma_AWCACHE;
output  [2:0] m_axi_CUDma_AWPROT;
output  [3:0] m_axi_CUDma_AWQOS;
output  [3:0] m_axi_CUDma_AWREGION;
output  [C_M_AXI_CUDMA_AWUSER_WIDTH - 1:0] m_axi_CUDma_AWUSER;
output   m_axi_CUDma_WVALID;
input   m_axi_CUDma_WREADY;
output  [C_M_AXI_CUDMA_DATA_WIDTH - 1:0] m_axi_CUDma_WDATA;
output  [C_M_AXI_CUDMA_WSTRB_WIDTH - 1:0] m_axi_CUDma_WSTRB;
output   m_axi_CUDma_WLAST;
output  [C_M_AXI_CUDMA_ID_WIDTH - 1:0] m_axi_CUDma_WID;
output  [C_M_AXI_CUDMA_WUSER_WIDTH - 1:0] m_axi_CUDma_WUSER;
output   m_axi_CUDma_ARVALID;
input   m_axi_CUDma_ARREADY;
output  [C_M_AXI_CUDMA_ADDR_WIDTH - 1:0] m_axi_CUDma_ARADDR;
output  [C_M_AXI_CUDMA_ID_WIDTH - 1:0] m_axi_CUDma_ARID;
output  [7:0] m_axi_CUDma_ARLEN;
output  [2:0] m_axi_CUDma_ARSIZE;
output  [1:0] m_axi_CUDma_ARBURST;
output  [1:0] m_axi_CUDma_ARLOCK;
output  [3:0] m_axi_CUDma_ARCACHE;
output  [2:0] m_axi_CUDma_ARPROT;
output  [3:0] m_axi_CUDma_ARQOS;
output  [3:0] m_axi_CUDma_ARREGION;
output  [C_M_AXI_CUDMA_ARUSER_WIDTH - 1:0] m_axi_CUDma_ARUSER;
input   m_axi_CUDma_RVALID;
output   m_axi_CUDma_RREADY;
input  [C_M_AXI_CUDMA_DATA_WIDTH - 1:0] m_axi_CUDma_RDATA;
input   m_axi_CUDma_RLAST;
input  [C_M_AXI_CUDMA_ID_WIDTH - 1:0] m_axi_CUDma_RID;
input  [C_M_AXI_CUDMA_RUSER_WIDTH - 1:0] m_axi_CUDma_RUSER;
input  [1:0] m_axi_CUDma_RRESP;
input   m_axi_CUDma_BVALID;
output   m_axi_CUDma_BREADY;
input  [1:0] m_axi_CUDma_BRESP;
input  [C_M_AXI_CUDMA_ID_WIDTH - 1:0] m_axi_CUDma_BID;
input  [C_M_AXI_CUDMA_BUSER_WIDTH - 1:0] m_axi_CUDma_BUSER;
input  [127:0] CuDmaQueue;
input  [12:0] SlotSize;
input  [7:0] NoOfSlots;
input  [31:0] CqBaseAddress;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    CQDma_blk_n_AR;
wire    ap_CS_fsm_state4;
reg    CQDma_blk_n_R;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln122_reg_526;
reg    CUDma_blk_n_AW;
wire    ap_CS_fsm_state19;
reg    CUDma_blk_n_W;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln122_reg_526_pp0_iter1_reg;
reg    CUDma_blk_n_B;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state29;
reg   [0:0] bit_reg_460;
wire    CQDma_AWREADY;
wire    CQDma_WREADY;
reg    CQDma_ARVALID;
wire    CQDma_ARREADY;
reg   [31:0] CQDma_ARADDR;
reg   [31:0] CQDma_ARLEN;
wire    CQDma_RVALID;
reg    CQDma_RREADY;
wire   [31:0] CQDma_RDATA;
wire    CQDma_RLAST;
wire   [0:0] CQDma_RID;
wire   [0:0] CQDma_RUSER;
wire   [1:0] CQDma_RRESP;
wire    CQDma_BVALID;
wire   [1:0] CQDma_BRESP;
wire   [0:0] CQDma_BID;
wire   [0:0] CQDma_BUSER;
reg    CUDma_AWVALID;
wire    CUDma_AWREADY;
reg   [31:0] CUDma_AWADDR;
reg   [31:0] CUDma_AWLEN;
reg    CUDma_WVALID;
wire    CUDma_WREADY;
reg   [31:0] CUDma_WDATA;
wire    CUDma_ARREADY;
wire    CUDma_RVALID;
wire   [31:0] CUDma_RDATA;
wire    CUDma_RLAST;
wire   [0:0] CUDma_RID;
wire   [0:0] CUDma_RUSER;
wire   [1:0] CUDma_RRESP;
wire    CUDma_BVALID;
reg    CUDma_BREADY;
wire   [1:0] CUDma_BRESP;
wire   [0:0] CUDma_BID;
wire   [0:0] CUDma_BUSER;
reg   [10:0] l_0_reg_220;
wire   [7:0] i_fu_269_p2;
reg   [7:0] i_reg_455;
wire    ap_CS_fsm_state3;
wire   [0:0] bit_fu_285_p1;
wire   [0:0] icmp_ln75_fu_263_p2;
wire   [31:0] SlotBaseAddr_fu_289_p2;
reg   [31:0] SlotBaseAddr_reg_464;
reg   [10:0] payload_reg_476;
reg   [1:0] noofcumasksread_tmp_reg_481;
wire   [10:0] sub_ln122_fu_347_p2;
reg   [10:0] sub_ln122_reg_486;
wire    ap_CS_fsm_state12;
wire   [31:0] add_ln126_1_fu_363_p2;
reg   [31:0] add_ln126_1_reg_492;
wire   [31:0] empty_4_fu_378_p1;
reg   [31:0] empty_4_reg_503;
reg   [31:0] CQDma_addr_read_reg_509;
wire   [31:0] add_ln126_2_fu_382_p2;
reg   [31:0] add_ln126_2_reg_515;
wire    ap_CS_fsm_state18;
wire   [0:0] icmp_ln122_fu_397_p2;
wire    ap_block_state20_pp0_stage0_iter0;
reg    ap_block_state21_pp0_stage0_iter1;
wire    ap_block_state22_pp0_stage0_iter2;
reg    ap_block_state22_io;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] l_fu_402_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [31:0] CQDma_addr_1_read_reg_535;
wire   [31:0] SlotOffset_n_fu_422_p2;
reg    ap_block_state29;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state20;
reg   [31:0] SlotOffset_n_0_reg_197;
wire    ap_CS_fsm_state2;
reg   [7:0] i_0_reg_209;
wire   [63:0] zext_ln87_fu_295_p1;
wire   [63:0] zext_ln126_1_fu_368_p1;
wire   [63:0] zext_ln126_2_fu_387_p1;
wire   [63:0] zext_ln130_fu_408_p1;
reg    ap_block_pp0_stage0_01001;
reg   [127:0] CuDmaQueue_assign_fu_102;
reg   [12:0] SlotSize_assign_fu_106;
reg   [7:0] NoOfSlots_assign_fu_110;
reg   [31:0] CqBaseAddress_assign_fu_114;
wire   [127:0] zext_ln76_fu_275_p1;
wire   [127:0] lshr_ln76_fu_279_p2;
wire   [2:0] zext_ln92_fu_325_p1;
wire   [2:0] noofcumasksread_fu_328_p2;
wire   [10:0] add_ln104_fu_342_p2;
wire   [10:0] empty_fu_338_p1;
wire   [3:0] zext_ln109_fu_334_p1;
wire   [3:0] add_ln126_fu_353_p2;
wire   [31:0] zext_ln126_fu_359_p1;
wire   [31:0] zext_ln75_fu_418_p1;
reg   [26:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 27'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

shell_utils_cudma_controller_CQDma_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 32 ),
    .USER_AW( 32 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_CQDMA_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_CQDMA_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_CQDMA_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_CQDMA_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_CQDMA_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_CQDMA_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_CQDMA_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_CQDMA_BUSER_WIDTH ),
    .C_TARGET_ADDR( C_M_AXI_CQDMA_TARGET_ADDR ),
    .C_USER_VALUE( C_M_AXI_CQDMA_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_CQDMA_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_CQDMA_CACHE_VALUE ))
shell_utils_cudma_controller_CQDma_m_axi_U(
    .AWVALID(m_axi_CQDma_AWVALID),
    .AWREADY(m_axi_CQDma_AWREADY),
    .AWADDR(m_axi_CQDma_AWADDR),
    .AWID(m_axi_CQDma_AWID),
    .AWLEN(m_axi_CQDma_AWLEN),
    .AWSIZE(m_axi_CQDma_AWSIZE),
    .AWBURST(m_axi_CQDma_AWBURST),
    .AWLOCK(m_axi_CQDma_AWLOCK),
    .AWCACHE(m_axi_CQDma_AWCACHE),
    .AWPROT(m_axi_CQDma_AWPROT),
    .AWQOS(m_axi_CQDma_AWQOS),
    .AWREGION(m_axi_CQDma_AWREGION),
    .AWUSER(m_axi_CQDma_AWUSER),
    .WVALID(m_axi_CQDma_WVALID),
    .WREADY(m_axi_CQDma_WREADY),
    .WDATA(m_axi_CQDma_WDATA),
    .WSTRB(m_axi_CQDma_WSTRB),
    .WLAST(m_axi_CQDma_WLAST),
    .WID(m_axi_CQDma_WID),
    .WUSER(m_axi_CQDma_WUSER),
    .ARVALID(m_axi_CQDma_ARVALID),
    .ARREADY(m_axi_CQDma_ARREADY),
    .ARADDR(m_axi_CQDma_ARADDR),
    .ARID(m_axi_CQDma_ARID),
    .ARLEN(m_axi_CQDma_ARLEN),
    .ARSIZE(m_axi_CQDma_ARSIZE),
    .ARBURST(m_axi_CQDma_ARBURST),
    .ARLOCK(m_axi_CQDma_ARLOCK),
    .ARCACHE(m_axi_CQDma_ARCACHE),
    .ARPROT(m_axi_CQDma_ARPROT),
    .ARQOS(m_axi_CQDma_ARQOS),
    .ARREGION(m_axi_CQDma_ARREGION),
    .ARUSER(m_axi_CQDma_ARUSER),
    .RVALID(m_axi_CQDma_RVALID),
    .RREADY(m_axi_CQDma_RREADY),
    .RDATA(m_axi_CQDma_RDATA),
    .RLAST(m_axi_CQDma_RLAST),
    .RID(m_axi_CQDma_RID),
    .RUSER(m_axi_CQDma_RUSER),
    .RRESP(m_axi_CQDma_RRESP),
    .BVALID(m_axi_CQDma_BVALID),
    .BREADY(m_axi_CQDma_BREADY),
    .BRESP(m_axi_CQDma_BRESP),
    .BID(m_axi_CQDma_BID),
    .BUSER(m_axi_CQDma_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(CQDma_ARVALID),
    .I_ARREADY(CQDma_ARREADY),
    .I_ARADDR(CQDma_ARADDR),
    .I_ARID(1'd0),
    .I_ARLEN(CQDma_ARLEN),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(CQDma_RVALID),
    .I_RREADY(CQDma_RREADY),
    .I_RDATA(CQDma_RDATA),
    .I_RID(CQDma_RID),
    .I_RUSER(CQDma_RUSER),
    .I_RRESP(CQDma_RRESP),
    .I_RLAST(CQDma_RLAST),
    .I_AWVALID(1'b0),
    .I_AWREADY(CQDma_AWREADY),
    .I_AWADDR(32'd0),
    .I_AWID(1'd0),
    .I_AWLEN(32'd0),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(1'b0),
    .I_WREADY(CQDma_WREADY),
    .I_WDATA(32'd0),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(4'd0),
    .I_BVALID(CQDma_BVALID),
    .I_BREADY(1'b0),
    .I_BRESP(CQDma_BRESP),
    .I_BID(CQDma_BID),
    .I_BUSER(CQDma_BUSER)
);

shell_utils_cudma_controller_CUDma_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 32 ),
    .USER_AW( 32 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_CUDMA_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_CUDMA_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_CUDMA_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_CUDMA_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_CUDMA_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_CUDMA_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_CUDMA_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_CUDMA_BUSER_WIDTH ),
    .C_TARGET_ADDR( C_M_AXI_CUDMA_TARGET_ADDR ),
    .C_USER_VALUE( C_M_AXI_CUDMA_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_CUDMA_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_CUDMA_CACHE_VALUE ))
shell_utils_cudma_controller_CUDma_m_axi_U(
    .AWVALID(m_axi_CUDma_AWVALID),
    .AWREADY(m_axi_CUDma_AWREADY),
    .AWADDR(m_axi_CUDma_AWADDR),
    .AWID(m_axi_CUDma_AWID),
    .AWLEN(m_axi_CUDma_AWLEN),
    .AWSIZE(m_axi_CUDma_AWSIZE),
    .AWBURST(m_axi_CUDma_AWBURST),
    .AWLOCK(m_axi_CUDma_AWLOCK),
    .AWCACHE(m_axi_CUDma_AWCACHE),
    .AWPROT(m_axi_CUDma_AWPROT),
    .AWQOS(m_axi_CUDma_AWQOS),
    .AWREGION(m_axi_CUDma_AWREGION),
    .AWUSER(m_axi_CUDma_AWUSER),
    .WVALID(m_axi_CUDma_WVALID),
    .WREADY(m_axi_CUDma_WREADY),
    .WDATA(m_axi_CUDma_WDATA),
    .WSTRB(m_axi_CUDma_WSTRB),
    .WLAST(m_axi_CUDma_WLAST),
    .WID(m_axi_CUDma_WID),
    .WUSER(m_axi_CUDma_WUSER),
    .ARVALID(m_axi_CUDma_ARVALID),
    .ARREADY(m_axi_CUDma_ARREADY),
    .ARADDR(m_axi_CUDma_ARADDR),
    .ARID(m_axi_CUDma_ARID),
    .ARLEN(m_axi_CUDma_ARLEN),
    .ARSIZE(m_axi_CUDma_ARSIZE),
    .ARBURST(m_axi_CUDma_ARBURST),
    .ARLOCK(m_axi_CUDma_ARLOCK),
    .ARCACHE(m_axi_CUDma_ARCACHE),
    .ARPROT(m_axi_CUDma_ARPROT),
    .ARQOS(m_axi_CUDma_ARQOS),
    .ARREGION(m_axi_CUDma_ARREGION),
    .ARUSER(m_axi_CUDma_ARUSER),
    .RVALID(m_axi_CUDma_RVALID),
    .RREADY(m_axi_CUDma_RREADY),
    .RDATA(m_axi_CUDma_RDATA),
    .RLAST(m_axi_CUDma_RLAST),
    .RID(m_axi_CUDma_RID),
    .RUSER(m_axi_CUDma_RUSER),
    .RRESP(m_axi_CUDma_RRESP),
    .BVALID(m_axi_CUDma_BVALID),
    .BREADY(m_axi_CUDma_BREADY),
    .BRESP(m_axi_CUDma_BRESP),
    .BID(m_axi_CUDma_BID),
    .BUSER(m_axi_CUDma_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(1'b0),
    .I_ARREADY(CUDma_ARREADY),
    .I_ARADDR(32'd0),
    .I_ARID(1'd0),
    .I_ARLEN(32'd0),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(CUDma_RVALID),
    .I_RREADY(1'b0),
    .I_RDATA(CUDma_RDATA),
    .I_RID(CUDma_RID),
    .I_RUSER(CUDma_RUSER),
    .I_RRESP(CUDma_RRESP),
    .I_RLAST(CUDma_RLAST),
    .I_AWVALID(CUDma_AWVALID),
    .I_AWREADY(CUDma_AWREADY),
    .I_AWADDR(CUDma_AWADDR),
    .I_AWID(1'd0),
    .I_AWLEN(CUDma_AWLEN),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(CUDma_WVALID),
    .I_WREADY(CUDma_WREADY),
    .I_WDATA(CUDma_WDATA),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(4'd15),
    .I_BVALID(CUDma_BVALID),
    .I_BREADY(CUDma_BREADY),
    .I_BRESP(CUDma_BRESP),
    .I_BID(CUDma_BID),
    .I_BUSER(CUDma_BUSER)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state20) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == CUDma_AWREADY) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state20)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state20);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == CUDma_AWREADY) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == CUDma_BVALID) & (bit_reg_460 == 1'd1)) & (1'b1 == ap_CS_fsm_state29))) begin
        SlotOffset_n_0_reg_197 <= SlotOffset_n_fu_422_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        SlotOffset_n_0_reg_197 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == CUDma_BVALID) & (bit_reg_460 == 1'd1)) & (1'b1 == ap_CS_fsm_state29))) begin
        i_0_reg_209 <= i_reg_455;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_0_reg_209 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln122_fu_397_p2 == 1'd0))) begin
        l_0_reg_220 <= l_fu_402_p2;
    end else if (((1'b1 == CUDma_AWREADY) & (1'b1 == ap_CS_fsm_state19))) begin
        l_0_reg_220 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln122_reg_526 == 1'd0))) begin
        CQDma_addr_1_read_reg_535 <= CQDma_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == CQDma_RVALID) & (1'b1 == ap_CS_fsm_state17))) begin
        CQDma_addr_read_reg_509 <= CQDma_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        CqBaseAddress_assign_fu_114 <= CqBaseAddress;
        CuDmaQueue_assign_fu_102 <= CuDmaQueue;
        NoOfSlots_assign_fu_110 <= NoOfSlots;
        SlotSize_assign_fu_106 <= SlotSize;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln75_fu_263_p2 == 1'd1) & (bit_fu_285_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        SlotBaseAddr_reg_464 <= SlotBaseAddr_fu_289_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        add_ln126_1_reg_492 <= add_ln126_1_fu_363_p2;
        sub_ln122_reg_486 <= sub_ln122_fu_347_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln126_2_reg_515 <= add_ln126_2_fu_382_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln75_fu_263_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        bit_reg_460 <= bit_fu_285_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == CQDma_ARREADY) & (1'b1 == ap_CS_fsm_state13))) begin
        empty_4_reg_503[10 : 0] <= empty_4_fu_378_p1[10 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_455 <= i_fu_269_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_526 <= icmp_ln122_fu_397_p2;
        icmp_ln122_reg_526_pp0_iter1_reg <= icmp_ln122_reg_526;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == CQDma_RVALID) & (1'b1 == ap_CS_fsm_state11))) begin
        noofcumasksread_tmp_reg_481 <= {{CQDma_RDATA[11:10]}};
        payload_reg_476 <= {{CQDma_RDATA[22:12]}};
    end
end

always @ (*) begin
    if ((1'b1 == CQDma_ARREADY)) begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            CQDma_ARADDR = zext_ln126_1_fu_368_p1;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            CQDma_ARADDR = zext_ln87_fu_295_p1;
        end else begin
            CQDma_ARADDR = 'bx;
        end
    end else begin
        CQDma_ARADDR = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == CQDma_ARREADY)) begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            CQDma_ARLEN = empty_4_fu_378_p1;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            CQDma_ARLEN = 32'd2;
        end else begin
            CQDma_ARLEN = 'bx;
        end
    end else begin
        CQDma_ARLEN = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == CQDma_ARREADY) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == CQDma_ARREADY) & (1'b1 == ap_CS_fsm_state4)))) begin
        CQDma_ARVALID = 1'b1;
    end else begin
        CQDma_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln122_reg_526 == 1'd0)) | ((1'b1 == CQDma_RVALID) & (1'b1 == ap_CS_fsm_state17)) | ((1'b1 == CQDma_RVALID) & (1'b1 == ap_CS_fsm_state11)))) begin
        CQDma_RREADY = 1'b1;
    end else begin
        CQDma_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        CQDma_blk_n_AR = m_axi_CQDma_ARREADY;
    end else begin
        CQDma_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state11) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln122_reg_526 == 1'd0) & (1'b0 == ap_block_pp0_stage0)))) begin
        CQDma_blk_n_R = m_axi_CQDma_RVALID;
    end else begin
        CQDma_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == CUDma_AWREADY)) begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            CUDma_AWADDR = zext_ln130_fu_408_p1;
        end else if ((1'b1 == ap_CS_fsm_state19)) begin
            CUDma_AWADDR = zext_ln126_2_fu_387_p1;
        end else begin
            CUDma_AWADDR = 'bx;
        end
    end else begin
        CUDma_AWADDR = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == CUDma_AWREADY)) begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            CUDma_AWLEN = 32'd1;
        end else if ((1'b1 == ap_CS_fsm_state19)) begin
            CUDma_AWLEN = empty_4_reg_503;
        end else begin
            CUDma_AWLEN = 'bx;
        end
    end else begin
        CUDma_AWLEN = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == CUDma_AWREADY) & (1'b1 == ap_CS_fsm_state23)) | ((1'b1 == CUDma_AWREADY) & (1'b1 == ap_CS_fsm_state19)))) begin
        CUDma_AWVALID = 1'b1;
    end else begin
        CUDma_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((~((1'b0 == CUDma_BVALID) & (bit_reg_460 == 1'd1)) & (bit_reg_460 == 1'd1) & (1'b1 == ap_CS_fsm_state29)) | ((1'b1 == CUDma_BVALID) & (1'b1 == ap_CS_fsm_state28)))) begin
        CUDma_BREADY = 1'b1;
    end else begin
        CUDma_BREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        CUDma_WDATA = 32'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln122_reg_526_pp0_iter1_reg == 1'd0))) begin
        CUDma_WDATA = CQDma_addr_1_read_reg_535;
    end else begin
        CUDma_WDATA = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == CUDma_WREADY) & (1'b1 == ap_CS_fsm_state24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln122_reg_526_pp0_iter1_reg == 1'd0)))) begin
        CUDma_WVALID = 1'b1;
    end else begin
        CUDma_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state19))) begin
        CUDma_blk_n_AW = m_axi_CUDma_AWREADY;
    end else begin
        CUDma_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state28) | ((bit_reg_460 == 1'd1) & (1'b1 == ap_CS_fsm_state29)))) begin
        CUDma_blk_n_B = m_axi_CUDma_BVALID;
    end else begin
        CUDma_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln122_reg_526_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0)))) begin
        CUDma_blk_n_W = m_axi_CUDma_WREADY;
    end else begin
        CUDma_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((icmp_ln122_fu_397_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state20 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state20 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln75_fu_263_p2 == 1'd0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln75_fu_263_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln75_fu_263_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln75_fu_263_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3) & (bit_fu_285_p1 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == CQDma_ARREADY) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == CQDma_RVALID) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == CQDma_ARREADY) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == CQDma_RVALID) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == CUDma_AWREADY) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln122_fu_397_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln122_fu_397_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state23 : begin
            if (((1'b1 == CUDma_AWREADY) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            if (((1'b1 == CUDma_WREADY) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            if (((1'b1 == CUDma_BVALID) & (1'b1 == ap_CS_fsm_state28))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end
        end
        ap_ST_fsm_state29 : begin
            if ((~((1'b0 == CUDma_BVALID) & (bit_reg_460 == 1'd1)) & (1'b1 == ap_CS_fsm_state29))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign SlotBaseAddr_fu_289_p2 = (SlotOffset_n_0_reg_197 + CqBaseAddress_assign_fu_114);

assign SlotOffset_n_fu_422_p2 = (zext_ln75_fu_418_p1 + SlotOffset_n_0_reg_197);

assign add_ln104_fu_342_p2 = ($signed(payload_reg_476) + $signed(11'd2044));

assign add_ln126_1_fu_363_p2 = (SlotBaseAddr_reg_464 + zext_ln126_fu_359_p1);

assign add_ln126_2_fu_382_p2 = (CQDma_addr_read_reg_509 + 32'd4);

assign add_ln126_fu_353_p2 = (zext_ln109_fu_334_p1 + 4'd5);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((1'b0 == CQDma_RVALID) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln122_reg_526 == 1'd0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state22_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == CQDma_RVALID) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln122_reg_526 == 1'd0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state22_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == CQDma_RVALID) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln122_reg_526 == 1'd0)));
end

assign ap_block_state20_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state21_pp0_stage0_iter1 = ((1'b0 == CQDma_RVALID) & (icmp_ln122_reg_526 == 1'd0));
end

always @ (*) begin
    ap_block_state22_io = ((1'b0 == CUDma_WREADY) & (icmp_ln122_reg_526_pp0_iter1_reg == 1'd0));
end

assign ap_block_state22_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state29 = ((1'b0 == CUDma_BVALID) & (bit_reg_460 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign bit_fu_285_p1 = lshr_ln76_fu_279_p2[0:0];

assign empty_4_fu_378_p1 = sub_ln122_reg_486;

assign empty_fu_338_p1 = noofcumasksread_fu_328_p2;

assign i_fu_269_p2 = (i_0_reg_209 + 8'd1);

assign icmp_ln122_fu_397_p2 = ((l_0_reg_220 == sub_ln122_reg_486) ? 1'b1 : 1'b0);

assign icmp_ln75_fu_263_p2 = ((i_0_reg_209 < NoOfSlots_assign_fu_110) ? 1'b1 : 1'b0);

assign l_fu_402_p2 = (l_0_reg_220 + 11'd1);

assign lshr_ln76_fu_279_p2 = CuDmaQueue_assign_fu_102 >> zext_ln76_fu_275_p1;

assign noofcumasksread_fu_328_p2 = (zext_ln92_fu_325_p1 + 3'd1);

assign sub_ln122_fu_347_p2 = (add_ln104_fu_342_p2 - empty_fu_338_p1);

assign zext_ln109_fu_334_p1 = noofcumasksread_fu_328_p2;

assign zext_ln126_1_fu_368_p1 = add_ln126_1_reg_492;

assign zext_ln126_2_fu_387_p1 = add_ln126_2_reg_515;

assign zext_ln126_fu_359_p1 = add_ln126_fu_353_p2;

assign zext_ln130_fu_408_p1 = CQDma_addr_read_reg_509;

assign zext_ln75_fu_418_p1 = SlotSize_assign_fu_106;

assign zext_ln76_fu_275_p1 = i_0_reg_209;

assign zext_ln87_fu_295_p1 = SlotBaseAddr_reg_464;

assign zext_ln92_fu_325_p1 = noofcumasksread_tmp_reg_481;

always @ (posedge ap_clk) begin
    empty_4_reg_503[31:11] <= 21'b000000000000000000000;
end

endmodule //shell_utils_cudma_controller