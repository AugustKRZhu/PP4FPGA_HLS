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
    // Port declarations 15
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
    sc_out< sc_lv<4> > c_address1;
    sc_out< sc_logic > c_ce1;
    sc_in< sc_lv<32> > c_q1;
    sc_in< sc_lv<32> > x;


    // Module declarations
    fir(sc_module_name name);
    SC_HAS_PROCESS(fir);

    ~fir();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > shift_reg_9;
    sc_signal< sc_lv<32> > shift_reg_8;
    sc_signal< sc_lv<32> > shift_reg_7;
    sc_signal< sc_lv<32> > shift_reg_6;
    sc_signal< sc_lv<32> > shift_reg_5;
    sc_signal< sc_lv<32> > shift_reg_4;
    sc_signal< sc_lv<32> > shift_reg_3;
    sc_signal< sc_lv<32> > shift_reg_2;
    sc_signal< sc_lv<32> > shift_reg_1;
    sc_signal< sc_lv<32> > shift_reg_0;
    sc_signal< sc_lv<32> > reg_179;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > reg_184;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > reg_188;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > tmp_6_fu_206_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_427;
    sc_signal< sc_lv<32> > tmp_6_1_fu_212_p2;
    sc_signal< sc_lv<32> > tmp_6_1_reg_432;
    sc_signal< sc_lv<32> > tmp_6_2_fu_248_p2;
    sc_signal< sc_lv<32> > tmp_6_2_reg_447;
    sc_signal< sc_lv<32> > tmp_6_3_fu_254_p2;
    sc_signal< sc_lv<32> > tmp_6_3_reg_452;
    sc_signal< sc_lv<32> > tmp_6_4_fu_260_p2;
    sc_signal< sc_lv<32> > tmp_6_4_reg_457;
    sc_signal< sc_lv<32> > tmp1_fu_266_p2;
    sc_signal< sc_lv<32> > tmp1_reg_472;
    sc_signal< sc_lv<32> > c_load_8_reg_477;
    sc_signal< sc_lv<32> > tmp2_fu_274_p2;
    sc_signal< sc_lv<32> > tmp2_reg_492;
    sc_signal< sc_lv<32> > tmp_6_5_fu_309_p2;
    sc_signal< sc_lv<32> > tmp_6_5_reg_497;
    sc_signal< sc_lv<32> > tmp_6_6_fu_315_p2;
    sc_signal< sc_lv<32> > tmp_6_6_reg_502;
    sc_signal< sc_lv<32> > tmp_6_7_fu_321_p2;
    sc_signal< sc_lv<32> > tmp_6_7_reg_507;
    sc_signal< sc_lv<32> > tmp_6_8_fu_353_p2;
    sc_signal< sc_lv<32> > tmp_6_8_reg_512;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > tmp_6_9_fu_358_p2;
    sc_signal< sc_lv<32> > tmp_6_9_reg_517;
    sc_signal< sc_lv<32> > tmp_6_s_fu_364_p2;
    sc_signal< sc_lv<32> > tmp_6_s_reg_522;
    sc_signal< sc_lv<32> > tmp6_fu_370_p2;
    sc_signal< sc_lv<32> > tmp6_reg_527;
    sc_signal< sc_lv<32> > tmp7_fu_378_p2;
    sc_signal< sc_lv<32> > tmp7_reg_532;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > tmp4_fu_387_p2;
    sc_signal< sc_lv<32> > tmp4_reg_537;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > tmp_6_fu_206_p0;
    sc_signal< sc_lv<32> > tmp_6_1_fu_212_p0;
    sc_signal< sc_lv<32> > tmp_6_2_fu_248_p0;
    sc_signal< sc_lv<32> > tmp_6_3_fu_254_p0;
    sc_signal< sc_lv<32> > tmp_6_4_fu_260_p0;
    sc_signal< sc_lv<32> > tmp3_fu_270_p2;
    sc_signal< sc_lv<32> > tmp_6_5_fu_309_p0;
    sc_signal< sc_lv<32> > tmp_6_6_fu_315_p0;
    sc_signal< sc_lv<32> > tmp_6_7_fu_321_p0;
    sc_signal< sc_lv<32> > tmp_6_8_fu_353_p0;
    sc_signal< sc_lv<32> > tmp_6_9_fu_358_p0;
    sc_signal< sc_lv<32> > tmp_6_s_fu_364_p1;
    sc_signal< sc_lv<32> > tmp8_fu_374_p2;
    sc_signal< sc_lv<32> > tmp5_fu_383_p2;
    sc_signal< sc_lv<32> > tmp_fu_392_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c_address0();
    void thread_c_address1();
    void thread_c_ce0();
    void thread_c_ce1();
    void thread_tmp1_fu_266_p2();
    void thread_tmp2_fu_274_p2();
    void thread_tmp3_fu_270_p2();
    void thread_tmp4_fu_387_p2();
    void thread_tmp5_fu_383_p2();
    void thread_tmp6_fu_370_p2();
    void thread_tmp7_fu_378_p2();
    void thread_tmp8_fu_374_p2();
    void thread_tmp_6_1_fu_212_p0();
    void thread_tmp_6_1_fu_212_p2();
    void thread_tmp_6_2_fu_248_p0();
    void thread_tmp_6_2_fu_248_p2();
    void thread_tmp_6_3_fu_254_p0();
    void thread_tmp_6_3_fu_254_p2();
    void thread_tmp_6_4_fu_260_p0();
    void thread_tmp_6_4_fu_260_p2();
    void thread_tmp_6_5_fu_309_p0();
    void thread_tmp_6_5_fu_309_p2();
    void thread_tmp_6_6_fu_315_p0();
    void thread_tmp_6_6_fu_315_p2();
    void thread_tmp_6_7_fu_321_p0();
    void thread_tmp_6_7_fu_321_p2();
    void thread_tmp_6_8_fu_353_p0();
    void thread_tmp_6_8_fu_353_p2();
    void thread_tmp_6_9_fu_358_p0();
    void thread_tmp_6_9_fu_358_p2();
    void thread_tmp_6_fu_206_p0();
    void thread_tmp_6_fu_206_p2();
    void thread_tmp_6_s_fu_364_p1();
    void thread_tmp_6_s_fu_364_p2();
    void thread_tmp_fu_392_p2();
    void thread_y();
    void thread_y_ap_vld();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
