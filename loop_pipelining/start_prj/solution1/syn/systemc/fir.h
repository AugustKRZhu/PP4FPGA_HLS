// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fir_HH_
#define _fir_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct fir : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > y;
    sc_out< sc_logic > y_ap_vld;
    sc_out< sc_lv<4> > c_address0;
    sc_out< sc_logic > c_ce0;
    sc_in< sc_lv<32> > c_q0;
    sc_in< sc_lv<32> > x;


    // Module declarations
    fir(sc_module_name name);
    SC_HAS_PROCESS(fir);

    ~fir();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > shift_reg_0;
    sc_signal< sc_lv<32> > shift_reg_10;
    sc_signal< sc_lv<32> > shift_reg_1;
    sc_signal< sc_lv<32> > shift_reg_2;
    sc_signal< sc_lv<32> > shift_reg_3;
    sc_signal< sc_lv<32> > shift_reg_4;
    sc_signal< sc_lv<32> > shift_reg_5;
    sc_signal< sc_lv<32> > shift_reg_6;
    sc_signal< sc_lv<32> > shift_reg_7;
    sc_signal< sc_lv<32> > shift_reg_8;
    sc_signal< sc_lv<32> > shift_reg_9;
    sc_signal< sc_lv<32> > acc_reg_161;
    sc_signal< sc_lv<5> > i_1_reg_174;
    sc_signal< sc_lv<32> > UnifiedRetVal_i_reg_186;
    sc_signal< sc_lv<32> > reg_250;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_fu_308_p2;
    sc_signal< sc_lv<4> > ap_phi_mux_i_phi_fu_128_p4;
    sc_signal< sc_lv<32> > reg_256;
    sc_signal< sc_lv<32> > reg_262;
    sc_signal< sc_lv<32> > reg_268;
    sc_signal< sc_lv<32> > reg_274;
    sc_signal< sc_lv<32> > reg_280;
    sc_signal< sc_lv<32> > reg_286;
    sc_signal< sc_lv<32> > reg_292;
    sc_signal< sc_lv<32> > reg_298;
    sc_signal< sc_lv<32> > shift_reg_0_load_reg_428;
    sc_signal< sc_lv<4> > i_2_fu_314_p2;
    sc_signal< sc_lv<4> > i_2_reg_437;
    sc_signal< sc_lv<32> > shift_reg_10_load_reg_442;
    sc_signal< sc_lv<1> > tmp_1_fu_389_p3;
    sc_signal< sc_lv<1> > tmp_1_reg_447;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > tmp_1_reg_447_pp0_iter1_reg;
    sc_signal< sc_lv<4> > tmp_3_fu_402_p1;
    sc_signal< sc_lv<32> > c_load_reg_460;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state6_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<5> > i_3_fu_406_p2;
    sc_signal< sc_lv<5> > i_3_reg_465;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > tmp_6_fu_412_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_470;
    sc_signal< sc_lv<32> > acc_1_fu_417_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state5;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<4> > i_reg_124;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > shift_reg_load_phi_reg_136;
    sc_signal< sc_lv<5> > ap_phi_mux_i_1_phi_fu_178_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186;
    sc_signal< sc_lv<64> > tmp_5_fu_397_p1;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_443;
    sc_signal< bool > ap_condition_434;
    sc_signal< bool > ap_condition_455;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_pp0_stage1;
    static const sc_lv<7> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<5> ap_const_lv5_1F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_acc_1_fu_417_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_state5_pp0_stage0_iter0();
    void thread_ap_block_state6_pp0_stage1_iter0();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_block_state8_pp0_stage1_iter1();
    void thread_ap_condition_434();
    void thread_ap_condition_443();
    void thread_ap_condition_455();
    void thread_ap_condition_pp0_exit_iter0_state5();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_1_phi_fu_178_p4();
    void thread_ap_phi_mux_i_phi_fu_128_p4();
    void thread_ap_ready();
    void thread_c_address0();
    void thread_c_ce0();
    void thread_i_2_fu_314_p2();
    void thread_i_3_fu_406_p2();
    void thread_tmp_1_fu_389_p3();
    void thread_tmp_3_fu_402_p1();
    void thread_tmp_5_fu_397_p1();
    void thread_tmp_6_fu_412_p2();
    void thread_tmp_fu_308_p2();
    void thread_y();
    void thread_y_ap_vld();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
