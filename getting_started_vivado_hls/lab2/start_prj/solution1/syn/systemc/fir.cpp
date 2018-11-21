// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "fir.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic fir::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic fir::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> fir::ap_ST_fsm_state1 = "1";
const sc_lv<6> fir::ap_ST_fsm_state2 = "10";
const sc_lv<6> fir::ap_ST_fsm_state3 = "100";
const sc_lv<6> fir::ap_ST_fsm_state4 = "1000";
const sc_lv<6> fir::ap_ST_fsm_state5 = "10000";
const sc_lv<6> fir::ap_ST_fsm_state6 = "100000";
const sc_lv<32> fir::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> fir::ap_const_lv32_1 = "1";
const sc_lv<1> fir::ap_const_lv1_0 = "0";
const sc_lv<32> fir::ap_const_lv32_2 = "10";
const sc_lv<32> fir::ap_const_lv32_3 = "11";
const sc_lv<32> fir::ap_const_lv32_4 = "100";
const sc_lv<32> fir::ap_const_lv32_5 = "101";
const sc_lv<5> fir::ap_const_lv5_A = "1010";
const sc_lv<1> fir::ap_const_lv1_1 = "1";
const sc_lv<4> fir::ap_const_lv4_0 = "0000";
const sc_lv<5> fir::ap_const_lv5_1F = "11111";
const sc_lv<5> fir::ap_const_lv5_0 = "00000";
const bool fir::ap_const_boolean_1 = true;

fir::fir(sc_module_name name) : sc_module(name), mVcdFile(0) {
    shift_reg_U = new fir_shift_reg("shift_reg_U");
    shift_reg_U->clk(ap_clk);
    shift_reg_U->reset(ap_rst);
    shift_reg_U->address0(shift_reg_address0);
    shift_reg_U->ce0(shift_reg_ce0);
    shift_reg_U->we0(shift_reg_we0);
    shift_reg_U->d0(shift_reg_d0);
    shift_reg_U->q0(shift_reg_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_acc_1_fu_169_p2);
    sensitive << ( tmp_6_reg_218 );
    sensitive << ( acc_reg_91 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_137_p3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_i_phi_fu_108_p4);
    sensitive << ( i_reg_104 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_137_p3 );

    SC_METHOD(thread_c_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_5_fu_160_p1 );

    SC_METHOD(thread_c_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_fu_126_p0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_phi_mux_i_phi_fu_108_p4 );
    sensitive << ( i_reg_104 );

    SC_METHOD(thread_grp_fu_126_p2);
    sensitive << ( grp_fu_126_p0 );

    SC_METHOD(thread_i_cast_fu_133_p1);
    sensitive << ( i_reg_104 );

    SC_METHOD(thread_shift_reg_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_1_fu_145_p2 );
    sensitive << ( tmp_fu_137_p3 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_3_fu_151_p1 );
    sensitive << ( tmp_4_fu_156_p1 );

    SC_METHOD(thread_shift_reg_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_1_fu_145_p2 );
    sensitive << ( tmp_fu_137_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_shift_reg_d0);
    sensitive << ( x );
    sensitive << ( shift_reg_q0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_1_fu_145_p2 );
    sensitive << ( tmp_fu_137_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_shift_reg_we0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_1_fu_145_p2 );
    sensitive << ( tmp_1_reg_189 );
    sensitive << ( tmp_fu_137_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_1_fu_145_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_137_p3 );
    sensitive << ( i_reg_104 );

    SC_METHOD(thread_tmp_3_fu_151_p1);
    sensitive << ( grp_fu_126_p2 );

    SC_METHOD(thread_tmp_4_fu_156_p1);
    sensitive << ( i_cast_reg_180 );

    SC_METHOD(thread_tmp_5_fu_160_p1);
    sensitive << ( i_cast_reg_180 );

    SC_METHOD(thread_tmp_6_fu_164_p2);
    sensitive << ( c_load_reg_213 );
    sensitive << ( data1_reg_116 );

    SC_METHOD(thread_tmp_fu_137_p3);
    sensitive << ( i_reg_104 );

    SC_METHOD(thread_y);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_137_p3 );
    sensitive << ( acc_reg_91 );

    SC_METHOD(thread_y_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_137_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_137_p3 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "fir_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, y, "(port)y");
    sc_trace(mVcdFile, y_ap_vld, "(port)y_ap_vld");
    sc_trace(mVcdFile, c_address0, "(port)c_address0");
    sc_trace(mVcdFile, c_ce0, "(port)c_ce0");
    sc_trace(mVcdFile, c_q0, "(port)c_q0");
    sc_trace(mVcdFile, x, "(port)x");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, shift_reg_address0, "shift_reg_address0");
    sc_trace(mVcdFile, shift_reg_ce0, "shift_reg_ce0");
    sc_trace(mVcdFile, shift_reg_we0, "shift_reg_we0");
    sc_trace(mVcdFile, shift_reg_d0, "shift_reg_d0");
    sc_trace(mVcdFile, shift_reg_q0, "shift_reg_q0");
    sc_trace(mVcdFile, i_cast_fu_133_p1, "i_cast_fu_133_p1");
    sc_trace(mVcdFile, i_cast_reg_180, "i_cast_reg_180");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_1_fu_145_p2, "tmp_1_fu_145_p2");
    sc_trace(mVcdFile, tmp_1_reg_189, "tmp_1_reg_189");
    sc_trace(mVcdFile, tmp_fu_137_p3, "tmp_fu_137_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_fu_126_p2, "grp_fu_126_p2");
    sc_trace(mVcdFile, i_1_reg_208, "i_1_reg_208");
    sc_trace(mVcdFile, c_load_reg_213, "c_load_reg_213");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_6_fu_164_p2, "tmp_6_fu_164_p2");
    sc_trace(mVcdFile, tmp_6_reg_218, "tmp_6_reg_218");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, acc_1_fu_169_p2, "acc_1_fu_169_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, acc_reg_91, "acc_reg_91");
    sc_trace(mVcdFile, ap_phi_mux_i_phi_fu_108_p4, "ap_phi_mux_i_phi_fu_108_p4");
    sc_trace(mVcdFile, i_reg_104, "i_reg_104");
    sc_trace(mVcdFile, data1_reg_116, "data1_reg_116");
    sc_trace(mVcdFile, tmp_3_fu_151_p1, "tmp_3_fu_151_p1");
    sc_trace(mVcdFile, tmp_4_fu_156_p1, "tmp_4_fu_156_p1");
    sc_trace(mVcdFile, tmp_5_fu_160_p1, "tmp_5_fu_160_p1");
    sc_trace(mVcdFile, grp_fu_126_p0, "grp_fu_126_p0");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("fir.hdltvin.dat");
    mHdltvoutHandle.open("fir.hdltvout.dat");
}

fir::~fir() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete shift_reg_U;
}

void fir::thread_ap_clk_no_reset_() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        acc_reg_91 = acc_1_fu_169_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        acc_reg_91 = ap_const_lv32_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_1_reg_189.read(), ap_const_lv1_0))) {
        data1_reg_116 = shift_reg_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(tmp_1_fu_145_p2.read(), ap_const_lv1_1))) {
        data1_reg_116 = x.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_reg_104 = i_1_reg_208.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_104 = ap_const_lv5_A;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        c_load_reg_213 = c_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_1_reg_208 = grp_fu_126_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_cast_reg_180 = i_cast_fu_133_p1.read();
    }
    if ((esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        tmp_1_reg_189 = tmp_1_fu_145_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tmp_6_reg_218 = tmp_6_fu_164_p2.read();
    }
}

void fir::thread_acc_1_fu_169_p2() {
    acc_1_fu_169_p2 = (!tmp_6_reg_218.read().is_01() || !acc_reg_91.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_6_reg_218.read()) + sc_biguint<32>(acc_reg_91.read()));
}

void fir::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void fir::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void fir::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void fir::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void fir::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void fir::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void fir::thread_ap_done() {
    if ((esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void fir::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void fir::thread_ap_phi_mux_i_phi_fu_108_p4() {
    ap_phi_mux_i_phi_fu_108_p4 = i_reg_104.read();
}

void fir::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fir::thread_c_address0() {
    c_address0 =  (sc_lv<4>) (tmp_5_fu_160_p1.read());
}

void fir::thread_c_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        c_ce0 = ap_const_logic_1;
    } else {
        c_ce0 = ap_const_logic_0;
    }
}

void fir::thread_grp_fu_126_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_fu_126_p0 = i_reg_104.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_fu_126_p0 = ap_phi_mux_i_phi_fu_108_p4.read();
    } else {
        grp_fu_126_p0 = "XXXXX";
    }
}

void fir::thread_grp_fu_126_p2() {
    grp_fu_126_p2 = (!grp_fu_126_p0.read().is_01() || !ap_const_lv5_1F.is_01())? sc_lv<5>(): (sc_bigint<5>(grp_fu_126_p0.read()) + sc_bigint<5>(ap_const_lv5_1F));
}

void fir::thread_i_cast_fu_133_p1() {
    i_cast_fu_133_p1 = esl_sext<32,5>(i_reg_104.read());
}

void fir::thread_shift_reg_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_address0 =  (sc_lv<4>) (tmp_4_fu_156_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(tmp_1_fu_145_p2.read(), ap_const_lv1_1))) {
        shift_reg_address0 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(tmp_1_fu_145_p2.read(), ap_const_lv1_0))) {
        shift_reg_address0 =  (sc_lv<4>) (tmp_3_fu_151_p1.read());
    } else {
        shift_reg_address0 =  (sc_lv<4>) ("XXXX");
    }
}

void fir::thread_shift_reg_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(tmp_1_fu_145_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(tmp_1_fu_145_p2.read(), ap_const_lv1_1)))) {
        shift_reg_ce0 = ap_const_logic_1;
    } else {
        shift_reg_ce0 = ap_const_logic_0;
    }
}

void fir::thread_shift_reg_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_d0 = shift_reg_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(tmp_1_fu_145_p2.read(), ap_const_lv1_1))) {
        shift_reg_d0 = x.read();
    } else {
        shift_reg_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void fir::thread_shift_reg_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(tmp_1_reg_189.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(tmp_1_fu_145_p2.read(), ap_const_lv1_1)))) {
        shift_reg_we0 = ap_const_logic_1;
    } else {
        shift_reg_we0 = ap_const_logic_0;
    }
}

void fir::thread_tmp_1_fu_145_p2() {
    tmp_1_fu_145_p2 = (!i_reg_104.read().is_01() || !ap_const_lv5_0.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_104.read() == ap_const_lv5_0);
}

void fir::thread_tmp_3_fu_151_p1() {
    tmp_3_fu_151_p1 = esl_zext<64,5>(grp_fu_126_p2.read());
}

void fir::thread_tmp_4_fu_156_p1() {
    tmp_4_fu_156_p1 = esl_zext<64,32>(i_cast_reg_180.read());
}

void fir::thread_tmp_5_fu_160_p1() {
    tmp_5_fu_160_p1 = esl_zext<64,32>(i_cast_reg_180.read());
}

void fir::thread_tmp_6_fu_164_p2() {
    tmp_6_fu_164_p2 = (!c_load_reg_213.read().is_01() || !data1_reg_116.read().is_01())? sc_lv<32>(): sc_bigint<32>(c_load_reg_213.read()) * sc_bigint<32>(data1_reg_116.read());
}

void fir::thread_tmp_fu_137_p3() {
    tmp_fu_137_p3 = i_reg_104.read().range(4, 4);
}

void fir::thread_y() {
    y = acc_reg_91.read();
}

void fir::thread_y_ap_vld() {
    if ((esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        y_ap_vld = ap_const_logic_1;
    } else {
        y_ap_vld = ap_const_logic_0;
    }
}

void fir::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(tmp_fu_137_p3.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

void fir::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y\" :  \"" << y.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_ap_vld\" :  \"" << y_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_address0\" :  \"" << c_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_ce0\" :  \"" << c_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"c_q0\" :  \"" << c_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"x\" :  \"" << x.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

