#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/bit_width_optimization/start_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
