#pragma line 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling/fir.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/usr/include/stdc-predef.h" 1 3 4
#pragma line 1 "<command-line>" 2
#pragma line 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling/fir.c"
#pragma line 46 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling/fir.c"
#pragma line 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling/fir.h" 1
#pragma line 50 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling/fir.h"
typedef int coef_t;
typedef int data_t;
typedef int acc_t;
#pragma empty_line
void fir (
  data_t *y,
  coef_t c[11 +1],
  data_t x
  );
#pragma line 47 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling/fir.c" 2
#pragma empty_line
  void fir (
     data_t *y,
     coef_t c[11],
     data_t x
     ) {
#pragma empty_line
  static data_t shift_reg[11];
  acc_t acc;
  data_t data;
  int i;
#pragma line 80 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling/fir.c"
  TDL:for(i=11 -1;i>2;i=i-3){
    shift_reg[i] = shift_reg[i-1];
    shift_reg[i-1] = shift_reg[i-2];
    shift_reg[i-2] = shift_reg[i-3];
  }
  if(i==2){
    shift_reg[2] = shift_reg[1];
    shift_reg[1] = shift_reg[0];
  }
  if(i==1){
    shift_reg[1] = shift_reg[0];
  }
  shift_reg[0] = x;
  acc = 0;
  MAC:for(i=11 -1;i>=0;i--){
    acc += shift_reg[i]*c[i];
  }
  *y=acc;
}
