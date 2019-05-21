-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_ap_vld : OUT STD_LOGIC;
    c_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    x : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=56,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=925,HLS_SYN_LUT=326,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal shift_reg_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal acc_reg_161 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_reg_174 : STD_LOGIC_VECTOR (4 downto 0);
    signal UnifiedRetVal_i_reg_186 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_250 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_308_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_i_phi_fu_128_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal reg_256 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_262 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_268 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_274 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_280 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_286 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_292 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_298 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_0_load_reg_428 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_2_fu_314_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_2_reg_437 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_10_load_reg_442 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_389_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_447 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state5_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_1_reg_447_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_402_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_load_reg_460 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state6_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state8_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal i_3_fu_406_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_3_reg_465 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_6_fu_412_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_reg_470 : STD_LOGIC_VECTOR (31 downto 0);
    signal acc_1_fu_417_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state5 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal i_reg_124 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal shift_reg_load_phi_reg_136 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_i_1_phi_fu_178_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_397_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_443 : BOOLEAN;
    signal ap_condition_434 : BOOLEAN;
    signal ap_condition_455 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state5) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state5) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state5);
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    acc_reg_161_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_447_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                acc_reg_161 <= acc_1_fu_417_p2;
            elsif (((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                acc_reg_161 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_434)) then
                if ((tmp_3_fu_402_p1 = ap_const_lv4_0)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= x;
                elsif ((ap_const_boolean_1 = ap_condition_443)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= shift_reg_10_load_reg_442;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_9)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_298;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_8)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_250;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_7)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_256;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_6)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_262;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_5)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_268;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_4)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_274;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_3)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_280;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_2)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_286;
                elsif ((tmp_3_fu_402_p1 = ap_const_lv4_1)) then 
                    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186 <= reg_292;
                end if;
            end if; 
        end if;
    end process;

    i_1_reg_174_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_447 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_1_reg_174 <= i_3_reg_465;
            elsif (((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_1_reg_174 <= ap_const_lv5_A;
            end if; 
        end if;
    end process;

    i_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_reg_124 <= i_2_reg_437;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_124 <= ap_const_lv4_A;
            end if; 
        end if;
    end process;

    shift_reg_load_phi_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                if ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_1)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_0_load_reg_428;
                elsif ((ap_const_boolean_1 = ap_condition_455)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_9;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_9)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_8;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_8)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_7;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_7)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_6;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_6)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_5;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_5)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_4;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_4)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_3;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_3)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_2;
                elsif ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_2)) then 
                    shift_reg_load_phi_reg_136 <= shift_reg_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                UnifiedRetVal_i_reg_186 <= ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_186;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_447 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                c_load_reg_460 <= c_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_2_reg_437 <= i_2_fu_314_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_447 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                i_3_reg_465 <= i_3_fu_406_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_9) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_250 <= shift_reg_8;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_8) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_256 <= shift_reg_7;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_7) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_262 <= shift_reg_6;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_6) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_268 <= shift_reg_5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_5) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_274 <= shift_reg_4;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_4) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_280 <= shift_reg_3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_3) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_286 <= shift_reg_2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_2) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_292 <= shift_reg_1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or (not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_5)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_6)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_7)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_8)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_9)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_1)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_2)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_3)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_4)) and (tmp_fu_308_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_298 <= shift_reg_9;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                shift_reg_0 <= x;
                shift_reg_10_load_reg_442 <= shift_reg_10;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                shift_reg_0_load_reg_428 <= shift_reg_0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (i_reg_124 = ap_const_lv4_1))) then
                shift_reg_1 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((i_reg_124 = ap_const_lv4_9)) and not((i_reg_124 = ap_const_lv4_8)) and not((i_reg_124 = ap_const_lv4_7)) and not((i_reg_124 = ap_const_lv4_6)) and not((i_reg_124 = ap_const_lv4_5)) and not((i_reg_124 = ap_const_lv4_4)) and not((i_reg_124 = ap_const_lv4_3)) and not((i_reg_124 = ap_const_lv4_2)) and not((i_reg_124 = ap_const_lv4_1)) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                shift_reg_10 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (i_reg_124 = ap_const_lv4_2))) then
                shift_reg_2 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (i_reg_124 = ap_const_lv4_3))) then
                shift_reg_3 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (i_reg_124 = ap_const_lv4_4))) then
                shift_reg_4 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_reg_124 = ap_const_lv4_5) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                shift_reg_5 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_reg_124 = ap_const_lv4_6) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                shift_reg_6 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_reg_124 = ap_const_lv4_7) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                shift_reg_7 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_reg_124 = ap_const_lv4_8) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                shift_reg_8 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_reg_124 = ap_const_lv4_9) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                shift_reg_9 <= shift_reg_load_phi_reg_136;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_1_reg_447 <= ap_phi_mux_i_1_phi_fu_178_p4(4 downto 4);
                tmp_1_reg_447_pp0_iter1_reg <= tmp_1_reg_447;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_447 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_6_reg_470 <= tmp_6_fu_412_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_308_p2, tmp_1_fu_389_p3, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_308_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((tmp_1_fu_389_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((tmp_1_fu_389_p3 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((not(((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    acc_1_fu_417_p2 <= std_logic_vector(unsigned(tmp_6_reg_470) + unsigned(acc_reg_161));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(4);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(5);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state9 <= ap_CS_fsm(6);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_434_assign_proc : process(tmp_1_fu_389_p3, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
                ap_condition_434 <= ((tmp_1_fu_389_p3 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001));
    end process;


    ap_condition_443_assign_proc : process(tmp_3_fu_402_p1)
    begin
                ap_condition_443 <= (not((tmp_3_fu_402_p1 = ap_const_lv4_0)) and not((tmp_3_fu_402_p1 = ap_const_lv4_9)) and not((tmp_3_fu_402_p1 = ap_const_lv4_8)) and not((tmp_3_fu_402_p1 = ap_const_lv4_7)) and not((tmp_3_fu_402_p1 = ap_const_lv4_6)) and not((tmp_3_fu_402_p1 = ap_const_lv4_5)) and not((tmp_3_fu_402_p1 = ap_const_lv4_4)) and not((tmp_3_fu_402_p1 = ap_const_lv4_3)) and not((tmp_3_fu_402_p1 = ap_const_lv4_2)) and not((tmp_3_fu_402_p1 = ap_const_lv4_1)));
    end process;


    ap_condition_455_assign_proc : process(ap_phi_mux_i_phi_fu_128_p4)
    begin
                ap_condition_455 <= (not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_5)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_6)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_7)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_8)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_9)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_1)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_2)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_3)) and not((ap_phi_mux_i_phi_fu_128_p4 = ap_const_lv4_4)));
    end process;


    ap_condition_pp0_exit_iter0_state5_assign_proc : process(tmp_1_fu_389_p3)
    begin
        if ((tmp_1_fu_389_p3 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state5 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_1_phi_fu_178_p4_assign_proc : process(i_1_reg_174, tmp_1_reg_447, ap_CS_fsm_pp0_stage0, i_3_reg_465, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((tmp_1_reg_447 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_phi_mux_i_1_phi_fu_178_p4 <= i_3_reg_465;
        else 
            ap_phi_mux_i_1_phi_fu_178_p4 <= i_1_reg_174;
        end if; 
    end process;

    ap_phi_mux_i_phi_fu_128_p4 <= i_reg_124;

    ap_ready_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_address0 <= tmp_5_fu_397_p1(4 - 1 downto 0);

    c_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    i_2_fu_314_p2 <= std_logic_vector(unsigned(i_reg_124) + unsigned(ap_const_lv4_F));
    i_3_fu_406_p2 <= std_logic_vector(unsigned(i_1_reg_174) + unsigned(ap_const_lv5_1F));
    tmp_1_fu_389_p3 <= ap_phi_mux_i_1_phi_fu_178_p4(4 downto 4);
    tmp_3_fu_402_p1 <= ap_phi_mux_i_1_phi_fu_178_p4(4 - 1 downto 0);
    tmp_5_fu_397_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i_1_phi_fu_178_p4),64));
    tmp_6_fu_412_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(c_load_reg_460) * signed(UnifiedRetVal_i_reg_186))), 32));
    tmp_fu_308_p2 <= "1" when (i_reg_124 = ap_const_lv4_0) else "0";
    y <= acc_reg_161;

    y_ap_vld_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
