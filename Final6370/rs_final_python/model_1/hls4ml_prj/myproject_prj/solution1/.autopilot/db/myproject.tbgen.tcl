set moduleName myproject
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ input0 int 400 regular {pointer 0}  }
	{ layer10_out_0 int 16 regular {pointer 1}  }
	{ layer10_out_1 int 16 regular {pointer 1}  }
	{ layer10_out_2 int 16 regular {pointer 1}  }
	{ layer10_out_3 int 16 regular {pointer 1}  }
	{ layer10_out_4 int 16 regular {pointer 1}  }
	{ layer10_out_5 int 16 regular {pointer 1}  }
	{ layer10_out_6 int 16 regular {pointer 1}  }
	{ layer10_out_7 int 16 regular {pointer 1}  }
	{ layer10_out_8 int 16 regular {pointer 1}  }
	{ layer10_out_9 int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "input0", "interface" : "wire", "bitwidth" : 400, "direction" : "READONLY"} , 
 	{ "Name" : "layer10_out_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_2", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_3", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_4", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_5", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_6", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_7", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_8", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer10_out_9", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input0_ap_vld sc_in sc_logic 1 invld 0 } 
	{ input0 sc_in sc_lv 400 signal 0 } 
	{ layer10_out_0 sc_out sc_lv 16 signal 1 } 
	{ layer10_out_0_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ layer10_out_1 sc_out sc_lv 16 signal 2 } 
	{ layer10_out_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ layer10_out_2 sc_out sc_lv 16 signal 3 } 
	{ layer10_out_2_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ layer10_out_3 sc_out sc_lv 16 signal 4 } 
	{ layer10_out_3_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ layer10_out_4 sc_out sc_lv 16 signal 5 } 
	{ layer10_out_4_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ layer10_out_5 sc_out sc_lv 16 signal 6 } 
	{ layer10_out_5_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ layer10_out_6 sc_out sc_lv 16 signal 7 } 
	{ layer10_out_6_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ layer10_out_7 sc_out sc_lv 16 signal 8 } 
	{ layer10_out_7_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ layer10_out_8 sc_out sc_lv 16 signal 9 } 
	{ layer10_out_8_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ layer10_out_9 sc_out sc_lv 16 signal 10 } 
	{ layer10_out_9_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input0_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input0", "role": "ap_vld" }} , 
 	{ "name": "input0", "direction": "in", "datatype": "sc_lv", "bitwidth":400, "type": "signal", "bundle":{"name": "input0", "role": "default" }} , 
 	{ "name": "layer10_out_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_0", "role": "default" }} , 
 	{ "name": "layer10_out_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_0", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_1", "role": "default" }} , 
 	{ "name": "layer10_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_1", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_2", "role": "default" }} , 
 	{ "name": "layer10_out_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_2", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_3", "role": "default" }} , 
 	{ "name": "layer10_out_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_3", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_4", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_4", "role": "default" }} , 
 	{ "name": "layer10_out_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_4", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_5", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_5", "role": "default" }} , 
 	{ "name": "layer10_out_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_5", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_6", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_6", "role": "default" }} , 
 	{ "name": "layer10_out_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_6", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_7", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_7", "role": "default" }} , 
 	{ "name": "layer10_out_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_7", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_8", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_8", "role": "default" }} , 
 	{ "name": "layer10_out_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_8", "role": "ap_vld" }} , 
 	{ "name": "layer10_out_9", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer10_out_9", "role": "default" }} , 
 	{ "name": "layer10_out_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer10_out_9", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "27", "28", "32"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input0", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer10_out_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "layer10_out_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198", "Port" : "exp_table"}]},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198", "Port" : "invert_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_uint_1_ap_fixed_16_6_5_3_0_config2_s_fu_136", "Parent" : "0",
		"CDFG" : "dense_latency_ap_uint_1_ap_fixed_16_6_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret2_relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config4_s_fu_142", "Parent" : "0",
		"CDFG" : "relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U12", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6s_12_1_0_U13", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5ns_10_1_0_U14", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U15", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5s_11_1_0_U16", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5s_11_1_0_U17", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6s_12_1_0_U18", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U19", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U20", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6s_12_1_0_U21", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U22", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5ns_10_1_0_U23", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U24", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U25", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5ns_10_1_0_U26", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5ns_10_1_0_U27", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6s_12_1_0_U28", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5ns_10_1_0_U29", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6s_12_1_0_U30", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6s_12_1_0_U31", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_5s_11_1_0_U32", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6s_12_1_0_U33", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s_fu_156.mul_6ns_6ns_11_1_0_U34", "Parent" : "3"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret4_relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config7_s_fu_170", "Parent" : "0",
		"CDFG" : "relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret5_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s_fu_184", "Parent" : "0", "Child" : ["29", "30", "31"],
		"CDFG" : "dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret5_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s_fu_184.mul_6ns_6ns_11_1_0_U59", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret5_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s_fu_184.mul_6ns_6ns_11_1_0_U60", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret5_dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s_fu_184.mul_6ns_6s_12_1_0_U61", "Parent" : "28"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198", "Parent" : "0", "Child" : ["33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.exp_table_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.invert_table_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U72", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U73", "Parent" : "32"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U74", "Parent" : "32"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U75", "Parent" : "32"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U76", "Parent" : "32"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U77", "Parent" : "32"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U78", "Parent" : "32"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U79", "Parent" : "32"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U80", "Parent" : "32"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s_fu_198.mul_18s_18s_30_1_1_U81", "Parent" : "32"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		input0 {Type I LastRead 0 FirstWrite -1}
		layer10_out_0 {Type O LastRead -1 FirstWrite 10}
		layer10_out_1 {Type O LastRead -1 FirstWrite 10}
		layer10_out_2 {Type O LastRead -1 FirstWrite 10}
		layer10_out_3 {Type O LastRead -1 FirstWrite 10}
		layer10_out_4 {Type O LastRead -1 FirstWrite 10}
		layer10_out_5 {Type O LastRead -1 FirstWrite 10}
		layer10_out_6 {Type O LastRead -1 FirstWrite 10}
		layer10_out_7 {Type O LastRead -1 FirstWrite 10}
		layer10_out_8 {Type O LastRead -1 FirstWrite 10}
		layer10_out_9 {Type O LastRead -1 FirstWrite 10}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}
	dense_latency_ap_uint_1_ap_fixed_16_6_5_3_0_config2_s {
		data_val {Type I LastRead 0 FirstWrite -1}}
	relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config4_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_2_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 0 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_5_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 0 FirstWrite -1}
		data_7_val {Type I LastRead 0 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 0 FirstWrite -1}}
	dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config5_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_2_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 0 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_5_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 0 FirstWrite -1}
		data_7_val {Type I LastRead 0 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 0 FirstWrite -1}}
	relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config7_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_2_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 0 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_5_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 0 FirstWrite -1}
		data_7_val {Type I LastRead 0 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 0 FirstWrite -1}}
	dense_latency_ap_ufixed_6_0_4_0_0_ap_fixed_16_6_5_3_0_config8_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_2_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 0 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_5_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 0 FirstWrite -1}
		data_7_val {Type I LastRead 0 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 0 FirstWrite -1}}
	softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config10_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_2_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 0 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_5_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 0 FirstWrite -1}
		data_7_val {Type I LastRead 0 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 0 FirstWrite -1}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input0 { ap_vld {  { input0_ap_vld in_vld 0 1 }  { input0 in_data 0 400 } } }
	layer10_out_0 { ap_vld {  { layer10_out_0 out_data 1 16 }  { layer10_out_0_ap_vld out_vld 1 1 } } }
	layer10_out_1 { ap_vld {  { layer10_out_1 out_data 1 16 }  { layer10_out_1_ap_vld out_vld 1 1 } } }
	layer10_out_2 { ap_vld {  { layer10_out_2 out_data 1 16 }  { layer10_out_2_ap_vld out_vld 1 1 } } }
	layer10_out_3 { ap_vld {  { layer10_out_3 out_data 1 16 }  { layer10_out_3_ap_vld out_vld 1 1 } } }
	layer10_out_4 { ap_vld {  { layer10_out_4 out_data 1 16 }  { layer10_out_4_ap_vld out_vld 1 1 } } }
	layer10_out_5 { ap_vld {  { layer10_out_5 out_data 1 16 }  { layer10_out_5_ap_vld out_vld 1 1 } } }
	layer10_out_6 { ap_vld {  { layer10_out_6 out_data 1 16 }  { layer10_out_6_ap_vld out_vld 1 1 } } }
	layer10_out_7 { ap_vld {  { layer10_out_7 out_data 1 16 }  { layer10_out_7_ap_vld out_vld 1 1 } } }
	layer10_out_8 { ap_vld {  { layer10_out_8 out_data 1 16 }  { layer10_out_8_ap_vld out_vld 1 1 } } }
	layer10_out_9 { ap_vld {  { layer10_out_9 out_data 1 16 }  { layer10_out_9_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

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
