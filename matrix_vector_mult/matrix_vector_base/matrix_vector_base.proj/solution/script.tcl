############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_vector_base.proj
set_top matrix_vector
add_files ./matrix_vector_base.c
add_files -tb matrix_vector_base-top.c -cflags "-Wno-unknown-pragmas"
open_solution "solution"
set_part {xc7v585tffg1761-2}
create_clock -period 5 -name default
#source "./matrix_vector_base.proj/solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
