#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/getting_started_vivado_hls/my_ver/start_prj/solution5/.autopilot/db/a.g.bc ${1+"$@"}
