#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/DFT/naiveImpl/DFT_HLS/solution2/.autopilot/db/a.g.bc ${1+"$@"}
