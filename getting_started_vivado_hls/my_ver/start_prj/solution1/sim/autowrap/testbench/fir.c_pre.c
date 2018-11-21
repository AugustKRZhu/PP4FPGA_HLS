# 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/getting_started_vivado_hls/my_ver/fir.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/getting_started_vivado_hls/my_ver/fir.c"
# 46 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/getting_started_vivado_hls/my_ver/fir.c"
# 1 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/getting_started_vivado_hls/my_ver/fir.h" 1
# 50 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/getting_started_vivado_hls/my_ver/fir.h"
typedef int coef_t;
typedef int data_t;
typedef int acc_t;

void fir (
  data_t *y,
  coef_t c[11 +1],
  data_t x
  );
# 47 "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/getting_started_vivado_hls/my_ver/fir.c" 2

  void fir (
     data_t *y,
     coef_t c[11],
     data_t x
     ) {

  static data_t shift_reg[11];
  acc_t acc;
  data_t data;
  int i;

  acc=0;
  Shift_Accum_Loop: for (i=11 -1;i>=0;i--) {
    if (i==0) {
      shift_reg[0]=x;
      data = x;
    } else {
      shift_reg[i]=shift_reg[i-1];
      data = shift_reg[i];
    }
    acc+=data*c[i];;
  }
  *y=acc;
}
