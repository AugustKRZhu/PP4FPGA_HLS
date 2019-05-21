set C_TypeInfoList {{ 
"matrix_vector" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"M": [[], {"array": [ {"array": ["0", [8]]}, [8]]}] }, {"V_In": [[], {"array": ["0", [8]]}] }, {"V_Out": [[], {"array": ["0", [8]]}] }],[],""], 
"0": [ "BaseType", {"typedef": [[[], {"scalar": "int"}],""]}]
}}
set moduleName matrix_vector
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {matrix_vector}
set C_modelType { void 0 }
set C_modelArgList {
	{ M_0 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ M_1 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ M_2 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ M_3 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ M_4 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ M_5 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ M_6 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ M_7 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ V_In_0 int 32 regular {pointer 0}  }
	{ V_In_1 int 32 regular {pointer 0}  }
	{ V_In_2 int 32 regular {pointer 0}  }
	{ V_In_3 int 32 regular {pointer 0}  }
	{ V_In_4 int 32 regular {pointer 0}  }
	{ V_In_5 int 32 regular {pointer 0}  }
	{ V_In_6 int 32 regular {pointer 0}  }
	{ V_In_7 int 32 regular {pointer 0}  }
	{ V_Out int 32 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "M_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "M_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "M_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "M_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "M_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "M_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "M_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "V_In_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "V_Out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_Out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ M_0_address0 sc_out sc_lv 3 signal 0 } 
	{ M_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ M_0_q0 sc_in sc_lv 32 signal 0 } 
	{ M_1_address0 sc_out sc_lv 3 signal 1 } 
	{ M_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ M_1_q0 sc_in sc_lv 32 signal 1 } 
	{ M_2_address0 sc_out sc_lv 3 signal 2 } 
	{ M_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ M_2_q0 sc_in sc_lv 32 signal 2 } 
	{ M_3_address0 sc_out sc_lv 3 signal 3 } 
	{ M_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ M_3_q0 sc_in sc_lv 32 signal 3 } 
	{ M_4_address0 sc_out sc_lv 3 signal 4 } 
	{ M_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ M_4_q0 sc_in sc_lv 32 signal 4 } 
	{ M_5_address0 sc_out sc_lv 3 signal 5 } 
	{ M_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ M_5_q0 sc_in sc_lv 32 signal 5 } 
	{ M_6_address0 sc_out sc_lv 3 signal 6 } 
	{ M_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ M_6_q0 sc_in sc_lv 32 signal 6 } 
	{ M_7_address0 sc_out sc_lv 3 signal 7 } 
	{ M_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ M_7_q0 sc_in sc_lv 32 signal 7 } 
	{ V_In_0 sc_in sc_lv 32 signal 8 } 
	{ V_In_1 sc_in sc_lv 32 signal 9 } 
	{ V_In_2 sc_in sc_lv 32 signal 10 } 
	{ V_In_3 sc_in sc_lv 32 signal 11 } 
	{ V_In_4 sc_in sc_lv 32 signal 12 } 
	{ V_In_5 sc_in sc_lv 32 signal 13 } 
	{ V_In_6 sc_in sc_lv 32 signal 14 } 
	{ V_In_7 sc_in sc_lv 32 signal 15 } 
	{ V_Out_address0 sc_out sc_lv 3 signal 16 } 
	{ V_Out_ce0 sc_out sc_logic 1 signal 16 } 
	{ V_Out_we0 sc_out sc_logic 1 signal 16 } 
	{ V_Out_d0 sc_out sc_lv 32 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "M_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_0", "role": "address0" }} , 
 	{ "name": "M_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_0", "role": "ce0" }} , 
 	{ "name": "M_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_0", "role": "q0" }} , 
 	{ "name": "M_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_1", "role": "address0" }} , 
 	{ "name": "M_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_1", "role": "ce0" }} , 
 	{ "name": "M_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_1", "role": "q0" }} , 
 	{ "name": "M_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_2", "role": "address0" }} , 
 	{ "name": "M_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_2", "role": "ce0" }} , 
 	{ "name": "M_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_2", "role": "q0" }} , 
 	{ "name": "M_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_3", "role": "address0" }} , 
 	{ "name": "M_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_3", "role": "ce0" }} , 
 	{ "name": "M_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_3", "role": "q0" }} , 
 	{ "name": "M_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_4", "role": "address0" }} , 
 	{ "name": "M_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_4", "role": "ce0" }} , 
 	{ "name": "M_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_4", "role": "q0" }} , 
 	{ "name": "M_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_5", "role": "address0" }} , 
 	{ "name": "M_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_5", "role": "ce0" }} , 
 	{ "name": "M_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_5", "role": "q0" }} , 
 	{ "name": "M_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_6", "role": "address0" }} , 
 	{ "name": "M_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_6", "role": "ce0" }} , 
 	{ "name": "M_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_6", "role": "q0" }} , 
 	{ "name": "M_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_7", "role": "address0" }} , 
 	{ "name": "M_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_7", "role": "ce0" }} , 
 	{ "name": "M_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_7", "role": "q0" }} , 
 	{ "name": "V_In_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_0", "role": "default" }} , 
 	{ "name": "V_In_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_1", "role": "default" }} , 
 	{ "name": "V_In_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_2", "role": "default" }} , 
 	{ "name": "V_In_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_3", "role": "default" }} , 
 	{ "name": "V_In_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_4", "role": "default" }} , 
 	{ "name": "V_In_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_5", "role": "default" }} , 
 	{ "name": "V_In_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_6", "role": "default" }} , 
 	{ "name": "V_In_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In_7", "role": "default" }} , 
 	{ "name": "V_Out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V_Out", "role": "address0" }} , 
 	{ "name": "V_Out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_Out", "role": "ce0" }} , 
 	{ "name": "V_Out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_Out", "role": "we0" }} , 
 	{ "name": "V_Out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_Out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "matrix_vector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "M_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "V_In_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_In_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_In_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_In_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_In_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_In_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_In_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_In_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_Out", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_vector_mulbkb_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_vector {
		M_0 {Type I LastRead 1 FirstWrite -1}
		M_1 {Type I LastRead 1 FirstWrite -1}
		M_2 {Type I LastRead 1 FirstWrite -1}
		M_3 {Type I LastRead 1 FirstWrite -1}
		M_4 {Type I LastRead 1 FirstWrite -1}
		M_5 {Type I LastRead 1 FirstWrite -1}
		M_6 {Type I LastRead 1 FirstWrite -1}
		M_7 {Type I LastRead 1 FirstWrite -1}
		V_In_0 {Type I LastRead 1 FirstWrite -1}
		V_In_1 {Type I LastRead 1 FirstWrite -1}
		V_In_2 {Type I LastRead 1 FirstWrite -1}
		V_In_3 {Type I LastRead 1 FirstWrite -1}
		V_In_4 {Type I LastRead 1 FirstWrite -1}
		V_In_5 {Type I LastRead 1 FirstWrite -1}
		V_In_6 {Type I LastRead 1 FirstWrite -1}
		V_In_7 {Type I LastRead 1 FirstWrite -1}
		V_Out {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	M_0 { ap_memory {  { M_0_address0 mem_address 1 3 }  { M_0_ce0 mem_ce 1 1 }  { M_0_q0 mem_dout 0 32 } } }
	M_1 { ap_memory {  { M_1_address0 mem_address 1 3 }  { M_1_ce0 mem_ce 1 1 }  { M_1_q0 mem_dout 0 32 } } }
	M_2 { ap_memory {  { M_2_address0 mem_address 1 3 }  { M_2_ce0 mem_ce 1 1 }  { M_2_q0 mem_dout 0 32 } } }
	M_3 { ap_memory {  { M_3_address0 mem_address 1 3 }  { M_3_ce0 mem_ce 1 1 }  { M_3_q0 mem_dout 0 32 } } }
	M_4 { ap_memory {  { M_4_address0 mem_address 1 3 }  { M_4_ce0 mem_ce 1 1 }  { M_4_q0 mem_dout 0 32 } } }
	M_5 { ap_memory {  { M_5_address0 mem_address 1 3 }  { M_5_ce0 mem_ce 1 1 }  { M_5_q0 mem_dout 0 32 } } }
	M_6 { ap_memory {  { M_6_address0 mem_address 1 3 }  { M_6_ce0 mem_ce 1 1 }  { M_6_q0 mem_dout 0 32 } } }
	M_7 { ap_memory {  { M_7_address0 mem_address 1 3 }  { M_7_ce0 mem_ce 1 1 }  { M_7_q0 mem_dout 0 32 } } }
	V_In_0 { ap_none {  { V_In_0 in_data 0 32 } } }
	V_In_1 { ap_none {  { V_In_1 in_data 0 32 } } }
	V_In_2 { ap_none {  { V_In_2 in_data 0 32 } } }
	V_In_3 { ap_none {  { V_In_3 in_data 0 32 } } }
	V_In_4 { ap_none {  { V_In_4 in_data 0 32 } } }
	V_In_5 { ap_none {  { V_In_5 in_data 0 32 } } }
	V_In_6 { ap_none {  { V_In_6 in_data 0 32 } } }
	V_In_7 { ap_none {  { V_In_7 in_data 0 32 } } }
	V_Out { ap_memory {  { V_Out_address0 mem_address 1 3 }  { V_Out_ce0 mem_ce 1 1 }  { V_Out_we0 mem_we 1 1 }  { V_Out_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
