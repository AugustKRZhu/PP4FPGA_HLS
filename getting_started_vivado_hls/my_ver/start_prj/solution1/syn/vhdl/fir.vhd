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
    "fir,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=1.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.298000,HLS_SYN_LAT=276,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=924,HLS_SYN_LUT=343,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (26 downto 0) := "000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (26 downto 0) := "000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (26 downto 0) := "000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (26 downto 0) := "000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (26 downto 0) := "000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (26 downto 0) := "000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (26 downto 0) := "000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (26 downto 0) := "000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (26 downto 0) := "000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (26 downto 0) := "001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (26 downto 0) := "010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (26 downto 0) := "100000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal shift_reg_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_ce0 : STD_LOGIC;
    signal shift_reg_we0 : STD_LOGIC;
    signal shift_reg_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_125_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal reg_132 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_141_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_149_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal i_cast_fu_137_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_reg_184 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_reg_193 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal data_reg_202 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal c_load_reg_213 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_fu_168_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_reg_218 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state25 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state25 : signal is "none";
    signal grp_fu_173_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state27 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state27 : signal is "none";
    signal acc_reg_90 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_i_phi_fu_107_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_103 : STD_LOGIC_VECTOR (4 downto 0);
    signal data1_reg_115 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_155_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_160_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_164_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_125_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state26 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state26 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (26 downto 0);

    component fir_mul_32s_32s_3bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_add_32ns_32nscud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_shift_reg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    shift_reg_U : component fir_shift_reg
    generic map (
        DataWidth => 32,
        AddressRange => 11,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => shift_reg_address0,
        ce0 => shift_reg_ce0,
        we0 => shift_reg_we0,
        d0 => shift_reg_d0,
        q0 => shift_reg_q0);

    fir_mul_32s_32s_3bkb_U1 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 19,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => c_load_reg_213,
        din1 => data1_reg_115,
        ce => ap_const_logic_1,
        dout => grp_fu_168_p2);

    fir_add_32ns_32nscud_U2 : component fir_add_32ns_32nscud
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_6_reg_218,
        din1 => acc_reg_90,
        ce => ap_const_logic_1,
        dout => grp_fu_173_p2);





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


    acc_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state27)) then 
                acc_reg_90 <= grp_fu_173_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                acc_reg_90 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    data1_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_reg_193 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                data1_reg_115 <= data_reg_202;
            elsif (((tmp_1_fu_149_p2 = ap_const_lv1_1) and (tmp_fu_141_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                data1_reg_115 <= x;
            end if; 
        end if;
    end process;

    i_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state27)) then 
                i_reg_103 <= reg_132;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_103 <= ap_const_lv5_A;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                c_load_reg_213 <= c_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                data_reg_202 <= shift_reg_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_cast_reg_184 <= i_cast_fu_137_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((tmp_1_fu_149_p2 = ap_const_lv1_0) and (tmp_fu_141_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_132 <= grp_fu_125_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_141_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_1_reg_193 <= tmp_1_fu_149_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state25)) then
                tmp_6_reg_218 <= grp_fu_168_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_141_p3, tmp_1_fu_149_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_141_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((tmp_1_fu_149_p2 = ap_const_lv1_1) and (tmp_fu_141_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state25 <= ap_CS_fsm(24);
    ap_CS_fsm_state26 <= ap_CS_fsm(25);
    ap_CS_fsm_state27 <= ap_CS_fsm(26);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_141_p3)
    begin
        if (((tmp_fu_141_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_i_phi_fu_107_p4 <= i_reg_103;

    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_141_p3)
    begin
        if (((tmp_fu_141_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_address0 <= tmp_5_fu_164_p1(4 - 1 downto 0);

    c_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_125_p0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5, ap_phi_mux_i_phi_fu_107_p4, i_reg_103)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_fu_125_p0 <= i_reg_103;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_125_p0 <= ap_phi_mux_i_phi_fu_107_p4;
        else 
            grp_fu_125_p0 <= "XXXXX";
        end if; 
    end process;

    grp_fu_125_p2 <= std_logic_vector(signed(grp_fu_125_p0) + signed(ap_const_lv5_1F));
        i_cast_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_reg_103),32));


    shift_reg_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state3, tmp_3_fu_155_p1, tmp_4_fu_160_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            shift_reg_address0 <= tmp_4_fu_160_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            shift_reg_address0 <= tmp_3_fu_155_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            shift_reg_address0 <= ap_const_lv4_0;
        else 
            shift_reg_address0 <= "XXXX";
        end if; 
    end process;


    shift_reg_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            shift_reg_ce0 <= ap_const_logic_1;
        else 
            shift_reg_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    shift_reg_d0_assign_proc : process(x, ap_CS_fsm_state2, ap_CS_fsm_state5, data_reg_202)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            shift_reg_d0 <= data_reg_202;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            shift_reg_d0 <= x;
        else 
            shift_reg_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    shift_reg_we0_assign_proc : process(ap_CS_fsm_state2, tmp_fu_141_p3, tmp_1_fu_149_p2, ap_CS_fsm_state5, tmp_1_reg_193)
    begin
        if ((((tmp_1_reg_193 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((tmp_1_fu_149_p2 = ap_const_lv1_1) and (tmp_fu_141_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            shift_reg_we0 <= ap_const_logic_1;
        else 
            shift_reg_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_149_p2 <= "1" when (i_reg_103 = ap_const_lv5_0) else "0";
    tmp_3_fu_155_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_132),64));
    tmp_4_fu_160_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_cast_reg_184),64));
    tmp_5_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_cast_reg_184),64));
    tmp_fu_141_p3 <= i_reg_103(4 downto 4);
    y <= acc_reg_90;

    y_ap_vld_assign_proc : process(ap_CS_fsm_state2, tmp_fu_141_p3)
    begin
        if (((tmp_fu_141_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
