############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DFT_HLS
set_top dft
add_files dft.cpp
add_files dft.h
add_files dft.cpp
add_files dft.h
add_files -tb dft_test.cpp
add_files -tb out.gold.dat
add_files -tb dft_test.cpp
add_files -tb out.gold.dat
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./DFT_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
