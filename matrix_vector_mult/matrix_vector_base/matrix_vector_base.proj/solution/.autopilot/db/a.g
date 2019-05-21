#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/matrix_vector_mult/matrix_vector_base/matrix_vector_base.proj/solution/.autopilot/db/a.g.bc ${1+"$@"}
