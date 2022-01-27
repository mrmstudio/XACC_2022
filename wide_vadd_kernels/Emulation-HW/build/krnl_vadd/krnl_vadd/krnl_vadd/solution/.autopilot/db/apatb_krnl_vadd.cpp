#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.krnl_vadd.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.krnl_vadd.autotvout_gmem0.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.krnl_vadd.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.krnl_vadd.autotvout_gmem1.dat"
// wrapc file define:
#define AUTOTB_TVIN_in1 "../tv/cdatafile/c.krnl_vadd.autotvin_in1.dat"
#define AUTOTB_TVOUT_in1 "../tv/cdatafile/c.krnl_vadd.autotvout_in1.dat"
// wrapc file define:
#define AUTOTB_TVIN_in2 "../tv/cdatafile/c.krnl_vadd.autotvin_in2.dat"
#define AUTOTB_TVOUT_in2 "../tv/cdatafile/c.krnl_vadd.autotvout_in2.dat"
// wrapc file define:
#define AUTOTB_TVIN_out "../tv/cdatafile/c.krnl_vadd.autotvin_out_r.dat"
#define AUTOTB_TVOUT_out "../tv/cdatafile/c.krnl_vadd.autotvout_out_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_elements "../tv/cdatafile/c.krnl_vadd.autotvin_elements.dat"
#define AUTOTB_TVOUT_elements "../tv/cdatafile/c.krnl_vadd.autotvout_elements.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.krnl_vadd.autotvout_gmem0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.krnl_vadd.autotvout_gmem1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in1 "../tv/rtldatafile/rtl.krnl_vadd.autotvout_in1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in2 "../tv/rtldatafile/rtl.krnl_vadd.autotvout_in2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out "../tv/rtldatafile/rtl.krnl_vadd.autotvout_out_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_elements "../tv/rtldatafile/rtl.krnl_vadd.autotvout_elements.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem0_depth = 0;
  gmem1_depth = 0;
  in1_depth = 0;
  in2_depth = 0;
  out_depth = 0;
  elements_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem0 " << gmem0_depth << "}\n";
  total_list << "{gmem1 " << gmem1_depth << "}\n";
  total_list << "{in1 " << in1_depth << "}\n";
  total_list << "{in2 " << in2_depth << "}\n";
  total_list << "{out_r " << out_depth << "}\n";
  total_list << "{elements " << elements_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem0_depth;
    int gmem1_depth;
    int in1_depth;
    int in2_depth;
    int out_depth;
    int elements_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s40__ { char data[64]; };
extern "C" void krnl_vadd_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, int);

extern "C" void apatb_krnl_vadd_hw(volatile void * __xlx_apatb_param_in1, volatile void * __xlx_apatb_param_in2, volatile void * __xlx_apatb_param_out, int __xlx_apatb_param_elements) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > gmem0_pc_buffer(2);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_in1)[j*8+0] = gmem0_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+1] = gmem0_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+2] = gmem0_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+3] = gmem0_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+4] = gmem0_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+5] = gmem0_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+6] = gmem0_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+7] = gmem0_pc_buffer[i].range(511,448).to_int64();
}
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_out)[j*8+0] = gmem0_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_out)[j*8+1] = gmem0_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_out)[j*8+2] = gmem0_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_out)[j*8+3] = gmem0_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_out)[j*8+4] = gmem0_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_out)[j*8+5] = gmem0_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_out)[j*8+6] = gmem0_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_out)[j*8+7] = gmem0_pc_buffer[i].range(511,448).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem0
aesl_fh.touch(AUTOTB_TVIN_gmem0);
aesl_fh.touch(AUTOTB_TVOUT_gmem0);
//gmem1
aesl_fh.touch(AUTOTB_TVIN_gmem1);
aesl_fh.touch(AUTOTB_TVOUT_gmem1);
//in1
aesl_fh.touch(AUTOTB_TVIN_in1);
aesl_fh.touch(AUTOTB_TVOUT_in1);
//in2
aesl_fh.touch(AUTOTB_TVIN_in2);
aesl_fh.touch(AUTOTB_TVOUT_in2);
//out
aesl_fh.touch(AUTOTB_TVIN_out);
aesl_fh.touch(AUTOTB_TVOUT_out);
//elements
aesl_fh.touch(AUTOTB_TVIN_elements);
aesl_fh.touch(AUTOTB_TVOUT_elements);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_in1 = 0;
unsigned __xlx_offset_byte_param_out = 0;
// print gmem0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_in1 = 0*64;
  if (__xlx_apatb_param_in1) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in1)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in1)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_in1)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_in1)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_in1)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_in1)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_in1)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_in1)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem0, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_out = 1*64;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_out)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_out)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_out)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_out)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_out)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_out)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem0, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_in2 = 0;
// print gmem1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_in2 = 0*64;
  if (__xlx_apatb_param_in2) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in2)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in2)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_in2)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_in2)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_in2)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_in2)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_in2)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_in2)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem1, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
}
// print in1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_in1, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_in1;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_in1, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.in1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_in1, __xlx_sprintf_buffer.data());
}
// print in2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_in2, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_in2;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_in2, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.in2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_in2, __xlx_sprintf_buffer.data());
}
// print out Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_out;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_out, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.out_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
}
// print elements Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_elements, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_elements);

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_elements, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.elements_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_elements, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
krnl_vadd_hw_stub_wrapper(__xlx_apatb_param_in1, __xlx_apatb_param_in2, __xlx_apatb_param_out, __xlx_apatb_param_elements);
CodeState = DUMP_OUTPUTS;
// print gmem0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_in1 = 0*64;
  if (__xlx_apatb_param_in1) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in1)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in1)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_in1)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_in1)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_in1)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_in1)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_in1)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_in1)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem0, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_out = 1*64;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_out)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_out)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_out)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_out)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_out)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_out)[j*8+7];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem0, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.gmem0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem0, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
