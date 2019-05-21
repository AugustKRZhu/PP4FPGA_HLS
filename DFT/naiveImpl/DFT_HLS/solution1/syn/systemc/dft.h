// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dft_HH_
#define _dft_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sin_or_cos_double_s.h"
#include "dft_faddfsub_32nsncg.h"
#include "dft_fmul_32ns_32nocq.h"
#include "dft_uitofp_32ns_3pcA.h"
#include "dft_fptrunc_64ns_qcK.h"
#include "dft_fpext_32ns_64rcU.h"
#include "dft_dmul_64ns_64nsc4.h"
#include "dft_temp_real.h"

namespace ap_rtl {

struct dft : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > sample_real_address0;
    sc_out< sc_logic > sample_real_ce0;
    sc_out< sc_logic > sample_real_we0;
    sc_out< sc_lv<32> > sample_real_d0;
    sc_in< sc_lv<32> > sample_real_q0;
    sc_out< sc_lv<8> > sample_imag_address0;
    sc_out< sc_logic > sample_imag_ce0;
    sc_out< sc_logic > sample_imag_we0;
    sc_out< sc_lv<32> > sample_imag_d0;
    sc_in< sc_lv<32> > sample_imag_q0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<64> > ap_var_for_const1;


    // Module declarations
    dft(sc_module_name name);
    SC_HAS_PROCESS(dft);

    ~dft();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dft_temp_real* temp_real_U;
    dft_temp_real* temp_imag_U;
    sin_or_cos_double_s* grp_sin_or_cos_double_s_fu_197;
    sin_or_cos_double_s* grp_sin_or_cos_double_s_fu_216;
    dft_faddfsub_32nsncg<1,5,32,32,32>* dft_faddfsub_32nsncg_U34;
    dft_faddfsub_32nsncg<1,5,32,32,32>* dft_faddfsub_32nsncg_U35;
    dft_fmul_32ns_32nocq<1,4,32,32,32>* dft_fmul_32ns_32nocq_U36;
    dft_fmul_32ns_32nocq<1,4,32,32,32>* dft_fmul_32ns_32nocq_U37;
    dft_fmul_32ns_32nocq<1,4,32,32,32>* dft_fmul_32ns_32nocq_U38;
    dft_fmul_32ns_32nocq<1,4,32,32,32>* dft_fmul_32ns_32nocq_U39;
    dft_uitofp_32ns_3pcA<1,5,32,32>* dft_uitofp_32ns_3pcA_U40;
    dft_fptrunc_64ns_qcK<1,1,64,32>* dft_fptrunc_64ns_qcK_U41;
    dft_fptrunc_64ns_qcK<1,1,64,32>* dft_fptrunc_64ns_qcK_U42;
    dft_fpext_32ns_64rcU<1,1,32,64>* dft_fpext_32ns_64rcU_U43;
    dft_dmul_64ns_64nsc4<1,6,64,64,64>* dft_dmul_64ns_64nsc4_U44;
    sc_signal< sc_lv<44> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_261_p1;
    sc_signal< sc_lv<32> > reg_278;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<64> > grp_fu_270_p1;
    sc_signal< sc_lv<64> > reg_284;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<32> > grp_fu_245_p2;
    sc_signal< sc_lv<32> > reg_291;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<32> > grp_fu_235_p2;
    sc_signal< sc_lv<32> > reg_297;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<32> > grp_fu_239_p2;
    sc_signal< sc_lv<32> > reg_304;
    sc_signal< sc_lv<9> > i_5_fu_317_p2;
    sc_signal< sc_lv<9> > i_5_reg_378;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > tmp_30_fu_323_p1;
    sc_signal< sc_lv<1> > tmp_fu_311_p2;
    sc_signal< sc_lv<64> > grp_fu_273_p2;
    sc_signal< sc_lv<64> > tmp_13_reg_388;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > temp_real_addr_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > temp_imag_addr_reg_398;
    sc_signal< sc_lv<32> > grp_fu_264_p1;
    sc_signal< sc_lv<32> > w_reg_403;
    sc_signal< sc_lv<9> > j_1_fu_340_p2;
    sc_signal< sc_lv<9> > j_1_reg_411;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > tmp_31_fu_346_p1;
    sc_signal< sc_lv<1> > tmp_17_fu_334_p2;
    sc_signal< sc_lv<64> > grp_sin_or_cos_double_s_fu_197_ap_return;
    sc_signal< sc_lv<64> > tmp_i_i_reg_421;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_197_ap_idle;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_197_ap_ready;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_197_ap_done;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_216_ap_idle;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_216_ap_ready;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_216_ap_done;
    sc_signal< bool > ap_block_state26_on_subcall_done;
    sc_signal< sc_lv<64> > grp_sin_or_cos_double_s_fu_216_ap_return;
    sc_signal< sc_lv<64> > tmp_i_i9_reg_426;
    sc_signal< sc_lv<32> > c_reg_441;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<32> > s_fu_267_p1;
    sc_signal< sc_lv<32> > s_reg_447;
    sc_signal< sc_lv<32> > sample_real_load_reg_453;
    sc_signal< sc_lv<32> > sample_imag_load_reg_459;
    sc_signal< sc_lv<32> > grp_fu_249_p2;
    sc_signal< sc_lv<32> > tmp_23_reg_465;
    sc_signal< sc_lv<32> > grp_fu_253_p2;
    sc_signal< sc_lv<32> > tmp_26_reg_470;
    sc_signal< sc_lv<32> > grp_fu_257_p2;
    sc_signal< sc_lv<32> > tmp_27_reg_475;
    sc_signal< sc_lv<9> > i_4_fu_363_p2;
    sc_signal< sc_lv<9> > i_4_reg_483;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<64> > tmp_18_fu_369_p1;
    sc_signal< sc_lv<64> > tmp_18_reg_488;
    sc_signal< sc_lv<1> > tmp_14_fu_357_p2;
    sc_signal< sc_lv<8> > temp_real_address0;
    sc_signal< sc_logic > temp_real_ce0;
    sc_signal< sc_logic > temp_real_we0;
    sc_signal< sc_lv<32> > temp_real_d0;
    sc_signal< sc_lv<32> > temp_real_q0;
    sc_signal< sc_lv<8> > temp_imag_address0;
    sc_signal< sc_logic > temp_imag_ce0;
    sc_signal< sc_logic > temp_imag_we0;
    sc_signal< sc_lv<32> > temp_imag_d0;
    sc_signal< sc_lv<32> > temp_imag_q0;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_197_ap_start;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_197_do_cos;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_216_ap_start;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_216_do_cos;
    sc_signal< sc_lv<9> > i_reg_138;
    sc_signal< sc_lv<32> > tmp_15_reg_150;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<32> > tmp_16_reg_162;
    sc_signal< sc_lv<9> > j_reg_174;
    sc_signal< sc_lv<9> > i_1_reg_186;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_197_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_216_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_s_fu_328_p1;
    sc_signal< sc_lv<64> > tmp_21_fu_351_p1;
    sc_signal< sc_lv<32> > grp_fu_235_p0;
    sc_signal< sc_lv<32> > grp_fu_235_p1;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_lv<32> > grp_fu_239_p0;
    sc_signal< sc_lv<32> > grp_fu_239_p1;
    sc_signal< sc_lv<32> > grp_fu_245_p0;
    sc_signal< sc_lv<32> > grp_fu_245_p1;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<32> > grp_fu_261_p0;
    sc_signal< sc_lv<64> > grp_fu_264_p0;
    sc_signal< sc_lv<32> > grp_fu_270_p0;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<2> > grp_fu_235_opcode;
    sc_signal< sc_lv<2> > grp_fu_239_opcode;
    sc_signal< sc_lv<44> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<44> ap_ST_fsm_state1;
    static const sc_lv<44> ap_ST_fsm_state2;
    static const sc_lv<44> ap_ST_fsm_state3;
    static const sc_lv<44> ap_ST_fsm_state4;
    static const sc_lv<44> ap_ST_fsm_state5;
    static const sc_lv<44> ap_ST_fsm_state6;
    static const sc_lv<44> ap_ST_fsm_state7;
    static const sc_lv<44> ap_ST_fsm_state8;
    static const sc_lv<44> ap_ST_fsm_state9;
    static const sc_lv<44> ap_ST_fsm_state10;
    static const sc_lv<44> ap_ST_fsm_state11;
    static const sc_lv<44> ap_ST_fsm_state12;
    static const sc_lv<44> ap_ST_fsm_state13;
    static const sc_lv<44> ap_ST_fsm_state14;
    static const sc_lv<44> ap_ST_fsm_state15;
    static const sc_lv<44> ap_ST_fsm_state16;
    static const sc_lv<44> ap_ST_fsm_state17;
    static const sc_lv<44> ap_ST_fsm_state18;
    static const sc_lv<44> ap_ST_fsm_state19;
    static const sc_lv<44> ap_ST_fsm_state20;
    static const sc_lv<44> ap_ST_fsm_state21;
    static const sc_lv<44> ap_ST_fsm_state22;
    static const sc_lv<44> ap_ST_fsm_state23;
    static const sc_lv<44> ap_ST_fsm_state24;
    static const sc_lv<44> ap_ST_fsm_state25;
    static const sc_lv<44> ap_ST_fsm_state26;
    static const sc_lv<44> ap_ST_fsm_state27;
    static const sc_lv<44> ap_ST_fsm_state28;
    static const sc_lv<44> ap_ST_fsm_state29;
    static const sc_lv<44> ap_ST_fsm_state30;
    static const sc_lv<44> ap_ST_fsm_state31;
    static const sc_lv<44> ap_ST_fsm_state32;
    static const sc_lv<44> ap_ST_fsm_state33;
    static const sc_lv<44> ap_ST_fsm_state34;
    static const sc_lv<44> ap_ST_fsm_state35;
    static const sc_lv<44> ap_ST_fsm_state36;
    static const sc_lv<44> ap_ST_fsm_state37;
    static const sc_lv<44> ap_ST_fsm_state38;
    static const sc_lv<44> ap_ST_fsm_state39;
    static const sc_lv<44> ap_ST_fsm_state40;
    static const sc_lv<44> ap_ST_fsm_state41;
    static const sc_lv<44> ap_ST_fsm_state42;
    static const sc_lv<44> ap_ST_fsm_state43;
    static const sc_lv<44> ap_ST_fsm_state44;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_19;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<64> ap_const_lv64_3F9921FB5444261E;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_state26_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_235_opcode();
    void thread_grp_fu_235_p0();
    void thread_grp_fu_235_p1();
    void thread_grp_fu_239_opcode();
    void thread_grp_fu_239_p0();
    void thread_grp_fu_239_p1();
    void thread_grp_fu_245_p0();
    void thread_grp_fu_245_p1();
    void thread_grp_fu_261_p0();
    void thread_grp_fu_264_p0();
    void thread_grp_fu_270_p0();
    void thread_grp_sin_or_cos_double_s_fu_197_ap_start();
    void thread_grp_sin_or_cos_double_s_fu_197_do_cos();
    void thread_grp_sin_or_cos_double_s_fu_216_ap_start();
    void thread_grp_sin_or_cos_double_s_fu_216_do_cos();
    void thread_i_4_fu_363_p2();
    void thread_i_5_fu_317_p2();
    void thread_j_1_fu_340_p2();
    void thread_sample_imag_address0();
    void thread_sample_imag_ce0();
    void thread_sample_imag_d0();
    void thread_sample_imag_we0();
    void thread_sample_real_address0();
    void thread_sample_real_ce0();
    void thread_sample_real_d0();
    void thread_sample_real_we0();
    void thread_temp_imag_address0();
    void thread_temp_imag_ce0();
    void thread_temp_imag_d0();
    void thread_temp_imag_we0();
    void thread_temp_real_address0();
    void thread_temp_real_ce0();
    void thread_temp_real_d0();
    void thread_temp_real_we0();
    void thread_tmp_14_fu_357_p2();
    void thread_tmp_17_fu_334_p2();
    void thread_tmp_18_fu_369_p1();
    void thread_tmp_21_fu_351_p1();
    void thread_tmp_30_fu_323_p1();
    void thread_tmp_31_fu_346_p1();
    void thread_tmp_fu_311_p2();
    void thread_tmp_s_fu_328_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif