#pragma line 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/code_hoisting/fir.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/usr/include/stdc-predef.h" 1 3 4
#pragma line 1 "<command-line>" 2
#pragma line 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/code_hoisting/fir.c"
#pragma line 46 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/code_hoisting/fir.c"
#pragma line 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/code_hoisting/fir.h" 1
#pragma line 50 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/code_hoisting/fir.h"
typedef int coef_t;
typedef int data_t;
typedef int acc_t;
#pragma empty_line
void fir (
  data_t *y,
  coef_t c[11 +1],
  data_t x
  );
#pragma line 47 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/code_hoisting/fir.c" 2
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
#pragma line 76 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/code_hoisting/fir.c"
  acc=0;
  for(i=11 -1;i>0;i--){
    shift_reg[i] = shift_reg[i-1];
    acc += shift_reg[i]*c[i];
  }
  shift_reg[0] = x;
  acc += x*c[0];
#pragma empty_line
  *y=acc;
}
