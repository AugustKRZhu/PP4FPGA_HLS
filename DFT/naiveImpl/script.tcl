############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project dft_hls.xpr
set_top dft
add_files dft.h
add_files dft.cpp
add_files coefficients8.h
add_files -tb out.gold.dat
add_files -tb dft_test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
csim_design
exit

