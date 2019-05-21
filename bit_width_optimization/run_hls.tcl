############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project -reset start_prj
set_top mult
add_files multiple_bw.c
open_solution -reset "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./start_prj/solution1/directives.tcl"
#csim_design
csynth_design
cosim_design
export_design -format ip_catalog
