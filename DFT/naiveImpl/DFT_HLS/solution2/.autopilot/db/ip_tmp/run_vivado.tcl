create_project prj -part xa7a100tcsg324-1i -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/DFT/naiveImpl/DFT_HLS/solution2/syn/verilog/dft_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dft_ap_fmul_2_max_dsp_32]]
}
source "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/DFT/naiveImpl/DFT_HLS/solution2/syn/verilog/dft_ap_fptrunc_0_no_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dft_ap_fptrunc_0_no_dsp_64]]
}
source "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/DFT/naiveImpl/DFT_HLS/solution2/syn/verilog/dft_ap_faddfsub_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dft_ap_faddfsub_3_full_dsp_32]]
}
source "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/DFT/naiveImpl/DFT_HLS/solution2/syn/verilog/dft_ap_uitofp_3_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dft_ap_uitofp_3_no_dsp_32]]
}
source "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/DFT/naiveImpl/DFT_HLS/solution2/syn/verilog/dft_ap_dmul_4_max_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dft_ap_dmul_4_max_dsp_64]]
}
source "/home/ramdas/Work/Learning/CPP_Learning/PP4FPGA_HLS/DFT/naiveImpl/DFT_HLS/solution2/syn/verilog/dft_ap_fpext_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dft_ap_fpext_0_no_dsp_32]]
}
