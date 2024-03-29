// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=44,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=244,HLS_SYN_LUT=261,HLS_VERSION=2018_2}" *)

module fir (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y,
        y_ap_vld,
        c_address0,
        c_ce0,
        c_q0,
        x
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] y;
output   y_ap_vld;
output  [3:0] c_address0;
output   c_ce0;
input  [31:0] c_q0;
input  [31:0] x;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_ap_vld;
reg[3:0] c_address0;
reg c_ce0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] shift_reg_address0;
reg    shift_reg_ce0;
reg    shift_reg_we0;
reg   [31:0] shift_reg_d0;
wire   [31:0] shift_reg_q0;
reg  signed [31:0] reg_114;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state6;
wire   [3:0] i_1_fu_124_p2;
reg   [3:0] i_1_reg_175;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_118_p2;
wire   [63:0] tmp_3_fu_135_p1;
reg   [63:0] tmp_3_reg_185;
reg  signed [31:0] shift_reg_load_reg_195;
wire   [31:0] tmp_4_fu_140_p2;
reg   [31:0] tmp_4_reg_200;
wire    ap_CS_fsm_state4;
wire   [31:0] acc_1_fu_145_p2;
wire    ap_CS_fsm_state5;
wire   [31:0] tmp_6_fu_150_p2;
reg   [31:0] tmp_6_reg_210;
wire    ap_CS_fsm_state7;
reg   [31:0] acc_reg_91;
reg   [3:0] i_reg_103;
wire   [63:0] tmp_2_fu_130_p1;
wire    ap_CS_fsm_state8;
wire  signed [31:0] tmp_6_fu_150_p1;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

fir_shift_reg #(
    .DataWidth( 32 ),
    .AddressRange( 11 ),
    .AddressWidth( 4 ))
shift_reg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(shift_reg_address0),
    .ce0(shift_reg_ce0),
    .we0(shift_reg_we0),
    .d0(shift_reg_d0),
    .q0(shift_reg_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        acc_reg_91 <= acc_1_fu_145_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        acc_reg_91 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_reg_103 <= i_1_reg_175;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_103 <= 4'd10;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_1_reg_175 <= i_1_fu_124_p2;
        tmp_3_reg_185[3 : 0] <= tmp_3_fu_135_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_114 <= c_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_load_reg_195 <= shift_reg_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_4_reg_200 <= tmp_4_fu_140_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_6_reg_210 <= tmp_6_fu_150_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
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
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((tmp_fu_118_p2 == 1'd1)) begin
            c_address0 = 64'd0;
        end else if ((tmp_fu_118_p2 == 1'd0)) begin
            c_address0 = tmp_3_fu_135_p1;
        end else begin
            c_address0 = 'bx;
        end
    end else begin
        c_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        shift_reg_address0 = 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_address0 = tmp_3_reg_185;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        shift_reg_address0 = tmp_2_fu_130_p1;
    end else begin
        shift_reg_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7))) begin
        shift_reg_ce0 = 1'b1;
    end else begin
        shift_reg_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        shift_reg_d0 = x;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_d0 = shift_reg_q0;
    end else begin
        shift_reg_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7))) begin
        shift_reg_we0 = 1'b1;
    end else begin
        shift_reg_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_1_fu_145_p2 = (tmp_4_reg_200 + acc_reg_91);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign i_1_fu_124_p2 = ($signed(i_reg_103) + $signed(4'd15));

assign tmp_2_fu_130_p1 = i_1_fu_124_p2;

assign tmp_3_fu_135_p1 = i_reg_103;

assign tmp_4_fu_140_p2 = ($signed(shift_reg_load_reg_195) * $signed(reg_114));

assign tmp_6_fu_150_p1 = x;

assign tmp_6_fu_150_p2 = ($signed(reg_114) * $signed(tmp_6_fu_150_p1));

assign tmp_fu_118_p2 = ((i_reg_103 == 4'd0) ? 1'b1 : 1'b0);

assign y = (tmp_6_reg_210 + acc_reg_91);

always @ (posedge ap_clk) begin
    tmp_3_reg_185[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //fir
