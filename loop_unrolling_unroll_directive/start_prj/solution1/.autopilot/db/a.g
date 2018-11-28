#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/loop_unrolling_unroll_directive/start_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
