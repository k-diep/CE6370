// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

// DATE "10/01/2023 17:26:28"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module sincos2 (
	a,
	areset,
	c,
	clk,
	s)/* synthesis synthesis_greybox=0 */;
input 	[9:0] a;
input 	areset;
output 	[4:0] c;
input 	clk;
output 	[4:0] s;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \cordic_0|s[4]~5_combout ;
wire \cordic_0|c[0]~0_combout ;
wire \cordic_0|c[1]~1_combout ;
wire \cordic_0|c[2]~2_combout ;
wire \cordic_0|c[3]~3_combout ;
wire \cordic_0|c[4]~4_combout ;
wire \cordic_0|s[0]~0_combout ;
wire \cordic_0|s[1]~1_combout ;
wire \cordic_0|s[2]~2_combout ;
wire \cordic_0|s[3]~4_combout ;
wire \clk~input_o ;
wire \areset~input_o ;
wire \a[9]~input_o ;
wire \a[2]~input_o ;
wire \a[3]~input_o ;
wire \a[4]~input_o ;
wire \a[5]~input_o ;
wire \a[6]~input_o ;
wire \a[7]~input_o ;
wire \a[8]~input_o ;
wire \a[1]~input_o ;
wire \a[0]~input_o ;


sincos2_sincos2_CORDIC_0 cordic_0(
	.s_4(\cordic_0|s[4]~5_combout ),
	.c_0(\cordic_0|c[0]~0_combout ),
	.c_1(\cordic_0|c[1]~1_combout ),
	.c_2(\cordic_0|c[2]~2_combout ),
	.c_3(\cordic_0|c[3]~3_combout ),
	.c_4(\cordic_0|c[4]~4_combout ),
	.s_0(\cordic_0|s[0]~0_combout ),
	.s_1(\cordic_0|s[1]~1_combout ),
	.s_2(\cordic_0|s[2]~2_combout ),
	.s_3(\cordic_0|s[3]~4_combout ),
	.clk(\clk~input_o ),
	.areset(\areset~input_o ),
	.a({\a[9]~input_o ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.a_2(\a[2]~input_o ),
	.a_3(\a[3]~input_o ),
	.a_4(\a[4]~input_o ),
	.a_5(\a[5]~input_o ),
	.a_6(\a[6]~input_o ),
	.a_7(\a[7]~input_o ),
	.a_8(\a[8]~input_o ),
	.a_1(\a[1]~input_o ),
	.a_0(\a[0]~input_o ));

assign \clk~input_o  = clk;

assign \areset~input_o  = areset;

assign \a[9]~input_o  = a[9];

assign \a[2]~input_o  = a[2];

assign \a[3]~input_o  = a[3];

assign \a[4]~input_o  = a[4];

assign \a[5]~input_o  = a[5];

assign \a[6]~input_o  = a[6];

assign \a[7]~input_o  = a[7];

assign \a[8]~input_o  = a[8];

assign \a[1]~input_o  = a[1];

assign \a[0]~input_o  = a[0];

assign c[0] = \cordic_0|c[0]~0_combout ;

assign c[1] = \cordic_0|c[1]~1_combout ;

assign c[2] = ~ \cordic_0|c[2]~2_combout ;

assign c[3] = \cordic_0|c[3]~3_combout ;

assign c[4] = \cordic_0|c[4]~4_combout ;

assign s[0] = \cordic_0|s[0]~0_combout ;

assign s[1] = \cordic_0|s[1]~1_combout ;

assign s[2] = ~ \cordic_0|s[2]~2_combout ;

assign s[3] = \cordic_0|s[3]~4_combout ;

assign s[4] = \cordic_0|s[4]~5_combout ;

endmodule

module sincos2_sincos2_CORDIC_0 (
	s_4,
	c_0,
	c_1,
	c_2,
	c_3,
	c_4,
	s_0,
	s_1,
	s_2,
	s_3,
	clk,
	areset,
	a,
	a_2,
	a_3,
	a_4,
	a_5,
	a_6,
	a_7,
	a_8,
	a_1,
	a_0)/* synthesis synthesis_greybox=0 */;
output 	s_4;
output 	c_0;
output 	c_1;
output 	c_2;
output 	c_3;
output 	c_4;
output 	s_0;
output 	s_1;
output 	s_2;
output 	s_3;
input 	clk;
input 	areset;
input 	[9:0] a;
input 	a_2;
input 	a_3;
input 	a_4;
input 	a_5;
input 	a_6;
input 	a_7;
input 	a_8;
input 	a_1;
input 	a_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add30~1_sumout ;
wire \Add30~2 ;
wire \Add31~1_sumout ;
wire \Add31~2 ;
wire \Add30~5_sumout ;
wire \Add30~6 ;
wire \Add31~5_sumout ;
wire \Add31~6 ;
wire \Add26~1_sumout ;
wire \Add26~2 ;
wire \Add25~1_sumout ;
wire \Add25~2 ;
wire \Add26~5_sumout ;
wire \Add26~6 ;
wire \Add25~5_sumout ;
wire \Add25~6 ;
wire \Add26~9_sumout ;
wire \Add26~10 ;
wire \Add25~9_sumout ;
wire \Add25~10 ;
wire \Add30~9_sumout ;
wire \Add30~10 ;
wire \Add31~9_sumout ;
wire \Add31~10 ;
wire \Add26~13_sumout ;
wire \Add26~14 ;
wire \Add25~13_sumout ;
wire \Add25~14 ;
wire \Add30~13_sumout ;
wire \Add30~14 ;
wire \Add31~13_sumout ;
wire \Add31~14 ;
wire \Add26~17_sumout ;
wire \Add26~18 ;
wire \Add25~17_sumout ;
wire \Add25~18 ;
wire \Add30~17_sumout ;
wire \Add30~18 ;
wire \Add31~17_sumout ;
wire \Add31~18 ;
wire \Add26~21_sumout ;
wire \Add25~21_sumout ;
wire \Add30~21_sumout ;
wire \Add31~21_sumout ;
wire \Add9~1_sumout ;
wire \Add21~1_sumout ;
wire \Add21~2 ;
wire \Add24~1_sumout ;
wire \Add24~2 ;
wire \Add22~1_sumout ;
wire \Add22~2 ;
wire \Add23~1_sumout ;
wire \Add30~26_cout ;
wire \Add31~26_cout ;
wire \Add21~5_sumout ;
wire \Add21~6 ;
wire \Add24~5_sumout ;
wire \Add22~5_sumout ;
wire \Add22~6 ;
wire \firstQuadrant_uid15_sincosTest_b[0]~1_sumout ;
wire \Add21~9_sumout ;
wire \Add24~9_sumout ;
wire \Add24~10 ;
wire \Add22~9_sumout ;
wire \Add22~10 ;
wire \Add23~5_sumout ;
wire \Add23~6 ;
wire \Add26~26_cout ;
wire \Add25~26_cout ;
wire \Add24~13_sumout ;
wire \Add24~14 ;
wire \Add22~13_sumout ;
wire \Add23~9_sumout ;
wire \Add23~10 ;
wire \Add24~17_sumout ;
wire \Add24~18 ;
wire \Add23~13_sumout ;
wire \Add23~14 ;
wire \Add21~13_sumout ;
wire \Add21~14 ;
wire \Add22~17_sumout ;
wire \Add22~18 ;
wire \Add24~21_sumout ;
wire \Add24~22 ;
wire \Add23~17_sumout ;
wire \Add23~18 ;
wire \Add21~17_sumout ;
wire \Add21~18 ;
wire \Add22~21_sumout ;
wire \Add22~22 ;
wire \Add4~1_sumout ;
wire \Add4~2 ;
wire \Add4~5_sumout ;
wire \Add4~6 ;
wire \Add4~9_sumout ;
wire \Add4~10 ;
wire \Add4~13_sumout ;
wire \Add4~14 ;
wire \Add4~17_sumout ;
wire \Add4~18 ;
wire \Add4~21_sumout ;
wire \Add4~22 ;
wire \Add4~25_sumout ;
wire \Add6~1_sumout ;
wire \Add7~1_sumout ;
wire \Add7~2 ;
wire \Add7~5_sumout ;
wire \Add8~1_sumout ;
wire \Add8~2 ;
wire \Add8~5_sumout ;
wire \Add9~6_cout ;
wire \Add21~21_sumout ;
wire \Add21~22 ;
wire \Add22~25_sumout ;
wire \Add22~26 ;
wire \Add30~30_cout ;
wire \Add31~30_cout ;
wire \Add2~2_cout ;
wire \Add2~3 ;
wire \Add24~25_sumout ;
wire \Add24~26 ;
wire \Add23~21_sumout ;
wire \Add23~22 ;
wire \Add26~30_cout ;
wire \Add25~30_cout ;
wire \Add1~1_sumout ;
wire \Add1~2 ;
wire \argMPiO2_uid14_sincosTest_o[2]~1_sumout ;
wire \argMPiO2_uid14_sincosTest_o[2]~2 ;
wire \argMPiO2_uid14_sincosTest_o[2]~3 ;
wire \Add4~29_sumout ;
wire \Add4~30 ;
wire \Add1~5_sumout ;
wire \Add1~6 ;
wire \argMPiO2_uid14_sincosTest_o[3]~5_sumout ;
wire \argMPiO2_uid14_sincosTest_o[3]~6 ;
wire \argMPiO2_uid14_sincosTest_o[3]~7 ;
wire \Add1~9_sumout ;
wire \Add1~10 ;
wire \argMPiO2_uid14_sincosTest_o[4]~9_sumout ;
wire \argMPiO2_uid14_sincosTest_o[4]~10 ;
wire \argMPiO2_uid14_sincosTest_o[4]~11 ;
wire \Add1~13_sumout ;
wire \Add1~14 ;
wire \argMPiO2_uid14_sincosTest_o[5]~13_sumout ;
wire \argMPiO2_uid14_sincosTest_o[5]~14 ;
wire \argMPiO2_uid14_sincosTest_o[5]~15 ;
wire \Add1~17_sumout ;
wire \Add1~18 ;
wire \argMPiO2_uid14_sincosTest_o[6]~17_sumout ;
wire \argMPiO2_uid14_sincosTest_o[6]~18 ;
wire \argMPiO2_uid14_sincosTest_o[6]~19 ;
wire \Add1~21_sumout ;
wire \Add1~22 ;
wire \argMPiO2_uid14_sincosTest_o[7]~21_sumout ;
wire \argMPiO2_uid14_sincosTest_o[7]~22 ;
wire \argMPiO2_uid14_sincosTest_o[7]~23 ;
wire \Add6~5_sumout ;
wire \Add6~6 ;
wire \Add6~7 ;
wire \Add7~9_sumout ;
wire \Add7~10 ;
wire \Add8~9_sumout ;
wire \Add8~10 ;
wire \Add9~10_cout ;
wire \Add21~25_sumout ;
wire \Add21~26 ;
wire \Add22~29_sumout ;
wire \Add22~30 ;
wire \Add30~34_cout ;
wire \Add31~34_cout ;
wire \Add1~25_sumout ;
wire \Add24~29_sumout ;
wire \Add24~30 ;
wire \Add23~25_sumout ;
wire \Add23~26 ;
wire \Add26~34_cout ;
wire \Add25~34_cout ;
wire \Add1~29_sumout ;
wire \Add1~30 ;
wire \argMPiO2_uid14_sincosTest_o[1]~25_sumout ;
wire \argMPiO2_uid14_sincosTest_o[1]~26 ;
wire \argMPiO2_uid14_sincosTest_o[1]~27 ;
wire \Add6~10_cout ;
wire \Add6~11 ;
wire \Add7~13_sumout ;
wire \Add7~14 ;
wire \Add8~13_sumout ;
wire \Add8~14 ;
wire \Add9~14_cout ;
wire \Add21~29_sumout ;
wire \Add21~30 ;
wire \Add22~33_sumout ;
wire \Add22~34 ;
wire \Add30~38_cout ;
wire \Add31~38_cout ;
wire \Add24~33_sumout ;
wire \Add24~34 ;
wire \Add23~29_sumout ;
wire \Add23~30 ;
wire \Add26~38_cout ;
wire \Add25~38_cout ;
wire \Add1~33_sumout ;
wire \Add1~34 ;
wire \Add2~6_cout ;
wire \Add2~7 ;
wire \Add6~14_cout ;
wire \Add6~15 ;
wire \Add7~17_sumout ;
wire \Add7~18 ;
wire \Add8~17_sumout ;
wire \Add8~18 ;
wire \Add9~18_cout ;
wire \Add21~33_sumout ;
wire \Add21~34 ;
wire \Add22~37_sumout ;
wire \Add22~38 ;
wire \Add30~42_cout ;
wire \Add31~42_cout ;
wire \Add24~37_sumout ;
wire \Add24~38 ;
wire \Add23~33_sumout ;
wire \Add23~34 ;
wire \Add26~42_cout ;
wire \Add25~42_cout ;
wire \Add6~18_cout ;
wire \Add6~19 ;
wire \Add7~21_sumout ;
wire \Add7~22 ;
wire \Add8~21_sumout ;
wire \Add8~22 ;
wire \Add9~22_cout ;
wire \Add21~37_sumout ;
wire \Add21~38 ;
wire \Add22~41_sumout ;
wire \Add22~42 ;
wire \Add30~46_cout ;
wire \Add31~46_cout ;
wire \Add24~41_sumout ;
wire \Add24~42 ;
wire \Add23~37_sumout ;
wire \Add23~38 ;
wire \Add26~46_cout ;
wire \Add25~46_cout ;
wire \Add6~22_cout ;
wire \Add6~23 ;
wire \Add7~25_sumout ;
wire \Add7~26 ;
wire \Add8~25_sumout ;
wire \Add8~26 ;
wire \Add9~26_cout ;
wire \Add21~41_sumout ;
wire \Add21~42 ;
wire \Add22~45_sumout ;
wire \Add22~46 ;
wire \Add30~50_cout ;
wire \Add31~50_cout ;
wire \Add24~45_sumout ;
wire \Add24~46 ;
wire \Add23~41_sumout ;
wire \Add23~42 ;
wire \Add26~50_cout ;
wire \Add25~50_cout ;
wire \Add6~26_cout ;
wire \Add6~27 ;
wire \Add7~29_sumout ;
wire \Add7~30 ;
wire \Add8~29_sumout ;
wire \Add8~30 ;
wire \Add9~30_cout ;
wire \Add21~45_sumout ;
wire \Add21~46 ;
wire \Add22~49_sumout ;
wire \Add22~50 ;
wire \Add30~54_cout ;
wire \Add31~54_cout ;
wire \Add24~49_sumout ;
wire \Add24~50 ;
wire \Add23~45_sumout ;
wire \Add23~46 ;
wire \Add26~54_cout ;
wire \Add25~54_cout ;
wire \Add6~30_cout ;
wire \Add6~31 ;
wire \Add7~33_sumout ;
wire \Add7~34 ;
wire \Add8~33_sumout ;
wire \Add8~34 ;
wire \Add9~34_cout ;
wire \Add21~49_sumout ;
wire \Add21~50 ;
wire \Add22~53_sumout ;
wire \Add22~54 ;
wire \Add30~58_cout ;
wire \Add31~58_cout ;
wire \Add24~53_sumout ;
wire \Add24~54 ;
wire \Add23~49_sumout ;
wire \Add23~50 ;
wire \Add26~58_cout ;
wire \Add25~58_cout ;
wire \Add7~37_sumout ;
wire \Add7~38 ;
wire \Add8~37_sumout ;
wire \Add8~38 ;
wire \Add9~38_cout ;
wire \Add21~53_sumout ;
wire \Add21~54 ;
wire \Add22~57_sumout ;
wire \Add22~58 ;
wire \Add30~62_cout ;
wire \Add31~62_cout ;
wire \Add24~57_sumout ;
wire \Add24~58 ;
wire \Add23~53_sumout ;
wire \Add23~54 ;
wire \Add26~62_cout ;
wire \Add25~62_cout ;
wire \Add7~41_sumout ;
wire \Add7~42 ;
wire \Add8~42_cout ;
wire \Add9~42_cout ;
wire \Add21~57_sumout ;
wire \Add21~58 ;
wire \Add22~61_sumout ;
wire \Add22~62 ;
wire \Add31~66_cout ;
wire \Add24~61_sumout ;
wire \Add24~62 ;
wire \Add23~57_sumout ;
wire \Add23~58 ;
wire \Add26~66_cout ;
wire \Add22~66_cout ;
wire \Add24~66_cout ;
wire \Add27~6_combout ;
wire \Add32~5_combout ;
wire \Add27~10_combout ;
wire \redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ;
wire \redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q ;
wire \redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ;
wire \redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ;
wire \redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q ;
wire \redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q ;
wire \redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q ;
wire \redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q ;
wire \redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q ;
wire \redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q ;
wire \redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q ;
wire \redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ;
wire \Add32~0_combout ;
wire \Add27~0_combout ;
wire \Add27~1_combout ;
wire \Add27~2_combout ;
wire \Add32~1_combout ;
wire \Add32~2_combout ;
wire \yip1E_5_uid106_sincosTest_o[13]~0_combout ;
wire \xip1E_5_uid105_sincosTest_o[12]~0_combout ;
wire \xip1E_5_uid105_sincosTest_o[13]~1_combout ;
wire \Add32~3_combout ;
wire \Add27~3_combout ;
wire \xip1E_5_uid105_sincosTest_o[14]~2_combout ;
wire \xip1E_5_uid105_sincosTest_o[15]~3_combout ;
wire \Add32~4_combout ;
wire \redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ;
wire \Add5~0_combout ;
wire \aip1E_3_uid76_sincosTest_a[12]~0_combout ;
wire \aip1E_4_uid92_sincosTest_a[11]~0_combout ;
wire \redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ;
wire \redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ;
wire \xip1E_5_uid105_sincosTest_a[9]~0_combout ;
wire \xip1E_5_uid105_sincosTest_a[13]~1_combout ;
wire \absA_uid18_sincosTest_q[4]~0_combout ;
wire \Add5~1_combout ;
wire \Add5~2_combout ;
wire \xip1E_5_uid105_sincosTest_a[8]~2_combout ;
wire \xip1E_5_uid105_sincosTest_a[12]~3_combout ;
wire \Add5~3_combout ;
wire \absA_uid18_sincosTest_q[3]~1_combout ;
wire \xip1E_5_uid105_sincosTest_a[7]~4_combout ;
wire \xip1E_5_uid105_sincosTest_a[11]~5_combout ;
wire \absA_uid18_sincosTest_q[2]~2_combout ;
wire \xip1E_5_uid105_sincosTest_a[6]~6_combout ;
wire \xip1E_5_uid105_sincosTest_a[10]~7_combout ;
wire \absA_uid18_sincosTest_q[1]~3_combout ;
wire \xip1E_5_uid105_sincosTest_a[5]~8_combout ;
wire \xip1E_5_uid105_sincosTest_a[4]~9_combout ;
wire \xip1E_4_uid89_sincosTest_o[3]~0_combout ;
wire \yip1E_4_uid90_sincosTest_o[3]~0_combout ;
wire \xip1E_4_uid89_sincosTest_o[2]~1_combout ;
wire \yip1E_4_uid90_sincosTest_o[2]~1_combout ;
wire \xip1E_4_uid89_sincosTest_o[1]~2_combout ;
wire \yip1E_4_uid90_sincosTest_o[1]~2_combout ;
wire \aip1E_3_uid76_sincosTest_o[1]~0_combout ;
wire \xip1E_4_uid89_sincosTest_o[0]~3_combout ;
wire \yip1E_4_uid90_sincosTest_o[0]~3_combout ;
wire \Add27~4_combout ;
wire \Add27~5_combout ;
wire \Add34~0_combout ;
wire \Add29~3_combout ;
wire \Add29~2_combout ;
wire \Add29~1_combout ;
wire \Add29~0_combout ;
wire \s[3]~3_combout ;


sincos2_dspba_delay_6 redist6_firstQuadrant_uid15_sincosTest_b_2(
	.xin({gnd,gnd,gnd,gnd,\firstQuadrant_uid15_sincosTest_b[0]~1_sumout }),
	.delay_signals_0_0(\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos2_dspba_delay_1 redist1_xPostExc_uid123_sincosTest_b_1(
	.xin({\Add32~4_combout ,\Add32~3_combout ,\Add32~2_combout ,\Add32~5_combout ,\Add32~0_combout }),
	.delay_signals_0_0(\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ),
	.delay_signals_1_0(\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q ),
	.delay_signals_2_0(\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_3_0(\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_4_0(\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q ),
	.clk(clk),
	.aclr(areset));

sincos2_dspba_delay redist0_yPostExc_uid124_sincosTest_b_1(
	.xin({\Add27~3_combout ,\Add27~6_combout ,\Add27~2_combout ,\Add27~10_combout ,\Add27~0_combout }),
	.delay_signals_0_0(\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ),
	.delay_signals_1_0(\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q ),
	.delay_signals_2_0(\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q ),
	.delay_signals_3_0(\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q ),
	.delay_signals_4_0(\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q ),
	.clk(clk),
	.aclr(areset));

sincos2_dspba_delay_5 redist5_xMSB_uid48_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,\Add4~25_sumout }),
	.delay_signals_0_0(\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos2_dspba_delay_4 redist4_xMSB_uid64_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,\aip1E_3_uid76_sincosTest_a[12]~0_combout }),
	.delay_signals_0_0(\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos2_dspba_delay_3 redist3_xMSB_uid80_sincosTest_b_1(
	.delay_signals_0_0(\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,\aip1E_4_uid92_sincosTest_a[11]~0_combout }),
	.clk(clk),
	.aclr(areset));

sincos2_dspba_delay_2 redist2_xMSB_uid96_sincosTest_b_1(
	.xin({gnd,gnd,gnd,gnd,\Add9~1_sumout }),
	.delay_signals_0_0(\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset));

sincos2_dspba_delay_7 redist7_invSignA_uid8_sincosTest_q_2(
	.delay_signals_0_0(\redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.a_9(a[9]));

sincos2_dspba_delay_8 redist8_signA_uid7_sincosTest_b_2(
	.delay_signals_0_0(\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.xin({gnd,gnd,gnd,gnd,a[9]}));

cyclonev_lcell_comb \Add30~1 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add24~1_sumout ),
	.datad(!\Add22~1_sumout ),
	.datae(gnd),
	.dataf(!\Add23~1_sumout ),
	.datag(gnd),
	.cin(\Add30~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add30~1_sumout ),
	.cout(\Add30~2 ),
	.shareout());
defparam \Add30~1 .extended_lut = "off";
defparam \Add30~1 .lut_mask = 64'h0000FA50000011BB;
defparam \Add30~1 .shared_arith = "off";

cyclonev_lcell_comb \Add31~1 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add24~1_sumout ),
	.datad(!\Add22~1_sumout ),
	.datae(gnd),
	.dataf(!\Add23~1_sumout ),
	.datag(gnd),
	.cin(\Add31~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~1_sumout ),
	.cout(\Add31~2 ),
	.shareout());
defparam \Add31~1 .extended_lut = "off";
defparam \Add31~1 .lut_mask = 64'h000005AF000011BB;
defparam \Add31~1 .shared_arith = "off";

cyclonev_lcell_comb \Add30~5 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~5_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~5_sumout ),
	.datag(gnd),
	.cin(\Add30~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add30~5_sumout ),
	.cout(\Add30~6 ),
	.shareout());
defparam \Add30~5 .extended_lut = "off";
defparam \Add30~5 .lut_mask = 64'h0000FA5000000055;
defparam \Add30~5 .shared_arith = "off";

cyclonev_lcell_comb \Add31~5 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~5_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~5_sumout ),
	.datag(gnd),
	.cin(\Add31~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~5_sumout ),
	.cout(\Add31~6 ),
	.shareout());
defparam \Add31~5 .extended_lut = "off";
defparam \Add31~5 .lut_mask = 64'h0000FA500000FFAA;
defparam \Add31~5 .shared_arith = "off";

cyclonev_lcell_comb \Add26~1 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~9_sumout ),
	.datac(!\Add24~9_sumout ),
	.datad(!\Add22~9_sumout ),
	.datae(gnd),
	.dataf(!\Add23~5_sumout ),
	.datag(gnd),
	.cin(\Add26~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add26~1_sumout ),
	.cout(\Add26~2 ),
	.shareout());
defparam \Add26~1 .extended_lut = "off";
defparam \Add26~1 .lut_mask = 64'h0000FA500000EE44;
defparam \Add26~1 .shared_arith = "off";

cyclonev_lcell_comb \Add25~1 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~9_sumout ),
	.datac(!\Add24~9_sumout ),
	.datad(!\Add22~9_sumout ),
	.datae(gnd),
	.dataf(!\Add23~5_sumout ),
	.datag(gnd),
	.cin(\Add25~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~1_sumout ),
	.cout(\Add25~2 ),
	.shareout());
defparam \Add25~1 .extended_lut = "off";
defparam \Add25~1 .lut_mask = 64'h0000FA50000011BB;
defparam \Add25~1 .shared_arith = "off";

cyclonev_lcell_comb \Add26~5 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~13_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~9_sumout ),
	.datag(gnd),
	.cin(\Add26~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add26~5_sumout ),
	.cout(\Add26~6 ),
	.shareout());
defparam \Add26~5 .extended_lut = "off";
defparam \Add26~5 .lut_mask = 64'h0000FA500000FF55;
defparam \Add26~5 .shared_arith = "off";

cyclonev_lcell_comb \Add25~5 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~13_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~9_sumout ),
	.datag(gnd),
	.cin(\Add25~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~5_sumout ),
	.cout(\Add25~6 ),
	.shareout());
defparam \Add25~5 .extended_lut = "off";
defparam \Add25~5 .lut_mask = 64'h0000FA50000000AA;
defparam \Add25~5 .shared_arith = "off";

cyclonev_lcell_comb \Add26~9 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~17_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~13_sumout ),
	.datag(gnd),
	.cin(\Add26~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add26~9_sumout ),
	.cout(\Add26~10 ),
	.shareout());
defparam \Add26~9 .extended_lut = "off";
defparam \Add26~9 .lut_mask = 64'h0000FA500000FF55;
defparam \Add26~9 .shared_arith = "off";

cyclonev_lcell_comb \Add25~9 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~17_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~13_sumout ),
	.datag(gnd),
	.cin(\Add25~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~9_sumout ),
	.cout(\Add25~10 ),
	.shareout());
defparam \Add25~9 .extended_lut = "off";
defparam \Add25~9 .lut_mask = 64'h0000FA50000000AA;
defparam \Add25~9 .shared_arith = "off";

cyclonev_lcell_comb \Add30~9 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~13_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~17_sumout ),
	.datag(gnd),
	.cin(\Add30~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add30~9_sumout ),
	.cout(\Add30~10 ),
	.shareout());
defparam \Add30~9 .extended_lut = "off";
defparam \Add30~9 .lut_mask = 64'h0000FA5000000055;
defparam \Add30~9 .shared_arith = "off";

cyclonev_lcell_comb \Add31~9 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~13_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~17_sumout ),
	.datag(gnd),
	.cin(\Add31~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~9_sumout ),
	.cout(\Add31~10 ),
	.shareout());
defparam \Add31~9 .extended_lut = "off";
defparam \Add31~9 .lut_mask = 64'h0000FA500000FFAA;
defparam \Add31~9 .shared_arith = "off";

cyclonev_lcell_comb \Add26~13 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~21_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~17_sumout ),
	.datag(gnd),
	.cin(\Add26~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add26~13_sumout ),
	.cout(\Add26~14 ),
	.shareout());
defparam \Add26~13 .extended_lut = "off";
defparam \Add26~13 .lut_mask = 64'h0000FA500000FF55;
defparam \Add26~13 .shared_arith = "off";

cyclonev_lcell_comb \Add25~13 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~21_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~17_sumout ),
	.datag(gnd),
	.cin(\Add25~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~13_sumout ),
	.cout(\Add25~14 ),
	.shareout());
defparam \Add25~13 .extended_lut = "off";
defparam \Add25~13 .lut_mask = 64'h0000FA50000000AA;
defparam \Add25~13 .shared_arith = "off";

cyclonev_lcell_comb \Add30~13 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~17_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~21_sumout ),
	.datag(gnd),
	.cin(\Add30~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add30~13_sumout ),
	.cout(\Add30~14 ),
	.shareout());
defparam \Add30~13 .extended_lut = "off";
defparam \Add30~13 .lut_mask = 64'h0000FA5000000055;
defparam \Add30~13 .shared_arith = "off";

cyclonev_lcell_comb \Add31~13 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~17_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~21_sumout ),
	.datag(gnd),
	.cin(\Add31~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~13_sumout ),
	.cout(\Add31~14 ),
	.shareout());
defparam \Add31~13 .extended_lut = "off";
defparam \Add31~13 .lut_mask = 64'h0000FA500000FFAA;
defparam \Add31~13 .shared_arith = "off";

cyclonev_lcell_comb \Add26~17 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~1_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~1_sumout ),
	.datag(gnd),
	.cin(\Add26~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add26~17_sumout ),
	.cout(\Add26~18 ),
	.shareout());
defparam \Add26~17 .extended_lut = "off";
defparam \Add26~17 .lut_mask = 64'h0000FA500000FF55;
defparam \Add26~17 .shared_arith = "off";

cyclonev_lcell_comb \Add25~17 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~1_sumout ),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add23~1_sumout ),
	.datag(gnd),
	.cin(\Add25~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~17_sumout ),
	.cout(\Add25~18 ),
	.shareout());
defparam \Add25~17 .extended_lut = "off";
defparam \Add25~17 .lut_mask = 64'h0000FA50000000AA;
defparam \Add25~17 .shared_arith = "off";

cyclonev_lcell_comb \Add30~17 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~9_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~9_sumout ),
	.datag(gnd),
	.cin(\Add30~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add30~17_sumout ),
	.cout(\Add30~18 ),
	.shareout());
defparam \Add30~17 .extended_lut = "off";
defparam \Add30~17 .lut_mask = 64'h0000FA5000000055;
defparam \Add30~17 .shared_arith = "off";

cyclonev_lcell_comb \Add31~17 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~9_sumout ),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~9_sumout ),
	.datag(gnd),
	.cin(\Add31~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~17_sumout ),
	.cout(\Add31~18 ),
	.shareout());
defparam \Add31~17 .extended_lut = "off";
defparam \Add31~17 .lut_mask = 64'h0000FA500000FFAA;
defparam \Add31~17 .shared_arith = "off";

cyclonev_lcell_comb \Add26~21 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add24~5_sumout ),
	.datag(gnd),
	.cin(\Add26~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add26~21_sumout ),
	.cout(),
	.shareout());
defparam \Add26~21 .extended_lut = "off";
defparam \Add26~21 .lut_mask = 64'h0000FFAA0000FF55;
defparam \Add26~21 .shared_arith = "off";

cyclonev_lcell_comb \Add25~21 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add22~13_sumout ),
	.datae(gnd),
	.dataf(!\Add24~5_sumout ),
	.datag(gnd),
	.cin(\Add25~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add25~21_sumout ),
	.cout(),
	.shareout());
defparam \Add25~21 .extended_lut = "off";
defparam \Add25~21 .lut_mask = 64'h0000FFAA000000AA;
defparam \Add25~21 .shared_arith = "off";

cyclonev_lcell_comb \Add30~21 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~13_sumout ),
	.datag(gnd),
	.cin(\Add30~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add30~21_sumout ),
	.cout(),
	.shareout());
defparam \Add30~21 .extended_lut = "off";
defparam \Add30~21 .lut_mask = 64'h0000FF5500000055;
defparam \Add30~21 .shared_arith = "off";

cyclonev_lcell_comb \Add31~21 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add24~5_sumout ),
	.datae(gnd),
	.dataf(!\Add22~13_sumout ),
	.datag(gnd),
	.cin(\Add31~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add31~21_sumout ),
	.cout(),
	.shareout());
defparam \Add31~21 .extended_lut = "off";
defparam \Add31~21 .lut_mask = 64'h0000FF550000FFAA;
defparam \Add31~21 .shared_arith = "off";

cyclonev_lcell_comb \Add9~1 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~1_sumout ),
	.datac(!\Add7~5_sumout ),
	.datad(!\Add8~1_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add9~1_sumout ),
	.cout(),
	.shareout());
defparam \Add9~1 .extended_lut = "off";
defparam \Add9~1 .lut_mask = 64'h000005AF000011BB;
defparam \Add9~1 .shared_arith = "off";

cyclonev_lcell_comb \Add21~1 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~1_sumout ),
	.cout(\Add21~2 ),
	.shareout());
defparam \Add21~1 .extended_lut = "off";
defparam \Add21~1 .lut_mask = 64'h000044440000EEEE;
defparam \Add21~1 .shared_arith = "off";

cyclonev_lcell_comb \Add24~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~1_sumout ),
	.cout(\Add24~2 ),
	.shareout());
defparam \Add24~1 .extended_lut = "off";
defparam \Add24~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add24~1 .shared_arith = "off";

cyclonev_lcell_comb \Add22~1 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~1_sumout ),
	.cout(\Add22~2 ),
	.shareout());
defparam \Add22~1 .extended_lut = "off";
defparam \Add22~1 .lut_mask = 64'h0000505000000505;
defparam \Add22~1 .shared_arith = "off";

cyclonev_lcell_comb \Add23~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~1_sumout ),
	.cout(),
	.shareout());
defparam \Add23~1 .extended_lut = "off";
defparam \Add23~1 .lut_mask = 64'h0000FFFF00000000;
defparam \Add23~1 .shared_arith = "off";

cyclonev_lcell_comb \Add30~26 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~21_sumout ),
	.datac(!\Add24~21_sumout ),
	.datad(!\Add22~25_sumout ),
	.datae(gnd),
	.dataf(!\Add23~17_sumout ),
	.datag(gnd),
	.cin(\Add30~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~26_cout ),
	.shareout());
defparam \Add30~26 .extended_lut = "off";
defparam \Add30~26 .lut_mask = 64'h0000FA50000011BB;
defparam \Add30~26 .shared_arith = "off";

cyclonev_lcell_comb \Add31~26 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~21_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[9]~0_combout ),
	.datae(gnd),
	.dataf(!\Add23~17_sumout ),
	.datag(gnd),
	.cin(\Add31~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~26_cout ),
	.shareout());
defparam \Add31~26 .extended_lut = "off";
defparam \Add31~26 .lut_mask = 64'h000005AF000000FF;
defparam \Add31~26 .shared_arith = "off";

cyclonev_lcell_comb \Add21~5 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~5_sumout ),
	.cout(\Add21~6 ),
	.shareout());
defparam \Add21~5 .extended_lut = "off";
defparam \Add21~5 .lut_mask = 64'h0000FFFF00001111;
defparam \Add21~5 .shared_arith = "off";

cyclonev_lcell_comb \Add24~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~5_sumout ),
	.cout(),
	.shareout());
defparam \Add24~5 .extended_lut = "off";
defparam \Add24~5 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add24~5 .shared_arith = "off";

cyclonev_lcell_comb \Add22~5 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~5_sumout ),
	.cout(\Add22~6 ),
	.shareout());
defparam \Add22~5 .extended_lut = "off";
defparam \Add22~5 .lut_mask = 64'h0000000000000055;
defparam \Add22~5 .shared_arith = "off";

cyclonev_lcell_comb \firstQuadrant_uid15_sincosTest_b[0]~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~2_cout ),
	.sharein(\Add2~3 ),
	.combout(),
	.sumout(\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.cout(),
	.shareout());
defparam \firstQuadrant_uid15_sincosTest_b[0]~1 .extended_lut = "off";
defparam \firstQuadrant_uid15_sincosTest_b[0]~1 .lut_mask = 64'h000000000000FFFF;
defparam \firstQuadrant_uid15_sincosTest_b[0]~1 .shared_arith = "on";

cyclonev_lcell_comb \Add21~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~9_sumout ),
	.cout(),
	.shareout());
defparam \Add21~9 .extended_lut = "off";
defparam \Add21~9 .lut_mask = 64'h0000FFFF00000000;
defparam \Add21~9 .shared_arith = "off";

cyclonev_lcell_comb \Add24~9 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~9_sumout ),
	.cout(\Add24~10 ),
	.shareout());
defparam \Add24~9 .extended_lut = "off";
defparam \Add24~9 .lut_mask = 64'h00005F5F0000F5F5;
defparam \Add24~9 .shared_arith = "off";

cyclonev_lcell_comb \Add22~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~9_sumout ),
	.cout(\Add22~10 ),
	.shareout());
defparam \Add22~9 .extended_lut = "off";
defparam \Add22~9 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add22~9 .shared_arith = "off";

cyclonev_lcell_comb \Add23~5 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~5_sumout ),
	.cout(\Add23~6 ),
	.shareout());
defparam \Add23~5 .extended_lut = "off";
defparam \Add23~5 .lut_mask = 64'h000088880000DDDD;
defparam \Add23~5 .shared_arith = "off";

cyclonev_lcell_comb \Add26~26 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~25_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[13]~1_combout ),
	.datae(gnd),
	.dataf(!\Add23~21_sumout ),
	.datag(gnd),
	.cin(\Add26~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~26_cout ),
	.shareout());
defparam \Add26~26 .extended_lut = "off";
defparam \Add26~26 .lut_mask = 64'h0000FA500000FF00;
defparam \Add26~26 .shared_arith = "off";

cyclonev_lcell_comb \Add25~26 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~17_sumout ),
	.datac(!\Add24~25_sumout ),
	.datad(!\Add22~21_sumout ),
	.datae(gnd),
	.dataf(!\Add23~21_sumout ),
	.datag(gnd),
	.cin(\Add25~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~26_cout ),
	.shareout());
defparam \Add25~26 .extended_lut = "off";
defparam \Add25~26 .lut_mask = 64'h0000FA50000011BB;
defparam \Add25~26 .shared_arith = "off";

cyclonev_lcell_comb \Add24~13 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add24~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~13_sumout ),
	.cout(\Add24~14 ),
	.shareout());
defparam \Add24~13 .extended_lut = "off";
defparam \Add24~13 .lut_mask = 64'h000055FF0000FFFF;
defparam \Add24~13 .shared_arith = "off";

cyclonev_lcell_comb \Add22~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~13_sumout ),
	.cout(),
	.shareout());
defparam \Add22~13 .extended_lut = "off";
defparam \Add22~13 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add22~13 .shared_arith = "off";

cyclonev_lcell_comb \Add23~9 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~9_sumout ),
	.cout(\Add23~10 ),
	.shareout());
defparam \Add23~9 .extended_lut = "off";
defparam \Add23~9 .lut_mask = 64'h0000777700000000;
defparam \Add23~9 .shared_arith = "off";

cyclonev_lcell_comb \Add24~17 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~17_sumout ),
	.cout(\Add24~18 ),
	.shareout());
defparam \Add24~17 .extended_lut = "off";
defparam \Add24~17 .lut_mask = 64'h000000000000AAAA;
defparam \Add24~17 .shared_arith = "off";

cyclonev_lcell_comb \Add23~13 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~13_sumout ),
	.cout(\Add23~14 ),
	.shareout());
defparam \Add23~13 .extended_lut = "off";
defparam \Add23~13 .lut_mask = 64'h0000FFFF0000AAAA;
defparam \Add23~13 .shared_arith = "off";

cyclonev_lcell_comb \Add21~13 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~13_sumout ),
	.cout(\Add21~14 ),
	.shareout());
defparam \Add21~13 .extended_lut = "off";
defparam \Add21~13 .lut_mask = 64'h0000FFFF00005555;
defparam \Add21~13 .shared_arith = "off";

cyclonev_lcell_comb \Add22~17 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~17_sumout ),
	.cout(\Add22~18 ),
	.shareout());
defparam \Add22~17 .extended_lut = "off";
defparam \Add22~17 .lut_mask = 64'h0000000000005555;
defparam \Add22~17 .shared_arith = "off";

cyclonev_lcell_comb \Add24~21 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~21_sumout ),
	.cout(\Add24~22 ),
	.shareout());
defparam \Add24~21 .extended_lut = "off";
defparam \Add24~21 .lut_mask = 64'h000000000000FFAA;
defparam \Add24~21 .shared_arith = "off";

cyclonev_lcell_comb \Add23~17 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~17_sumout ),
	.cout(\Add23~18 ),
	.shareout());
defparam \Add23~17 .extended_lut = "off";
defparam \Add23~17 .lut_mask = 64'h0000FFFF0000FFAA;
defparam \Add23~17 .shared_arith = "off";

cyclonev_lcell_comb \Add21~17 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~17_sumout ),
	.cout(\Add21~18 ),
	.shareout());
defparam \Add21~17 .extended_lut = "off";
defparam \Add21~17 .lut_mask = 64'h0000FFFF000055FF;
defparam \Add21~17 .shared_arith = "off";

cyclonev_lcell_comb \Add22~21 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~21_sumout ),
	.cout(\Add22~22 ),
	.shareout());
defparam \Add22~21 .extended_lut = "off";
defparam \Add22~21 .lut_mask = 64'h00000000000055FF;
defparam \Add22~21 .shared_arith = "off";

cyclonev_lcell_comb \Add4~1 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~1_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[2]~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~1_sumout ),
	.cout(\Add4~2 ),
	.shareout());
defparam \Add4~1 .extended_lut = "off";
defparam \Add4~1 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~1 .shared_arith = "off";

cyclonev_lcell_comb \Add4~5 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~5_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[3]~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~5_sumout ),
	.cout(\Add4~6 ),
	.shareout());
defparam \Add4~5 .extended_lut = "off";
defparam \Add4~5 .lut_mask = 64'h00000000000005AF;
defparam \Add4~5 .shared_arith = "off";

cyclonev_lcell_comb \Add4~9 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~9_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[4]~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~9_sumout ),
	.cout(\Add4~10 ),
	.shareout());
defparam \Add4~9 .extended_lut = "off";
defparam \Add4~9 .lut_mask = 64'h00000000000005AF;
defparam \Add4~9 .shared_arith = "off";

cyclonev_lcell_comb \Add4~13 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~13_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[5]~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~13_sumout ),
	.cout(\Add4~14 ),
	.shareout());
defparam \Add4~13 .extended_lut = "off";
defparam \Add4~13 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~13 .shared_arith = "off";

cyclonev_lcell_comb \Add4~17 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~17_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[6]~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~17_sumout ),
	.cout(\Add4~18 ),
	.shareout());
defparam \Add4~17 .extended_lut = "off";
defparam \Add4~17 .lut_mask = 64'h0000FFFF000005AF;
defparam \Add4~17 .shared_arith = "off";

cyclonev_lcell_comb \Add4~21 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~21_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[7]~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~21_sumout ),
	.cout(\Add4~22 ),
	.shareout());
defparam \Add4~21 .extended_lut = "off";
defparam \Add4~21 .lut_mask = 64'h00000000000005AF;
defparam \Add4~21 .shared_arith = "off";

cyclonev_lcell_comb \Add4~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add4~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~25_sumout ),
	.cout(),
	.shareout());
defparam \Add4~25 .extended_lut = "off";
defparam \Add4~25 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add4~25 .shared_arith = "off";

cyclonev_lcell_comb \Add6~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~6 ),
	.sharein(\Add6~7 ),
	.combout(),
	.sumout(\Add6~1_sumout ),
	.cout(),
	.shareout());
defparam \Add6~1 .extended_lut = "off";
defparam \Add6~1 .lut_mask = 64'h000000000000FF00;
defparam \Add6~1 .shared_arith = "on";

cyclonev_lcell_comb \Add7~1 (
	.dataa(!\Add4~25_sumout ),
	.datab(gnd),
	.datac(!\absA_uid18_sincosTest_q[4]~0_combout ),
	.datad(!\Add5~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~1_sumout ),
	.cout(\Add7~2 ),
	.shareout());
defparam \Add7~1 .extended_lut = "off";
defparam \Add7~1 .lut_mask = 64'h0000FFFF0000F5A0;
defparam \Add7~1 .shared_arith = "off";

cyclonev_lcell_comb \Add7~5 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~17_sumout ),
	.datac(!\Add5~2_combout ),
	.datad(!\Add6~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~5_sumout ),
	.cout(),
	.shareout());
defparam \Add7~5 .extended_lut = "off";
defparam \Add7~5 .lut_mask = 64'h0000FFFF000014BE;
defparam \Add7~5 .shared_arith = "off";

cyclonev_lcell_comb \Add8~1 (
	.dataa(!\Add4~25_sumout ),
	.datab(gnd),
	.datac(!\absA_uid18_sincosTest_q[4]~0_combout ),
	.datad(!\Add5~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~1_sumout ),
	.cout(\Add8~2 ),
	.shareout());
defparam \Add8~1 .extended_lut = "off";
defparam \Add8~1 .lut_mask = 64'h000000000000F5A0;
defparam \Add8~1 .shared_arith = "off";

cyclonev_lcell_comb \Add8~5 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~17_sumout ),
	.datac(!\Add5~2_combout ),
	.datad(!\Add6~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~5_sumout ),
	.cout(),
	.shareout());
defparam \Add8~5 .extended_lut = "off";
defparam \Add8~5 .lut_mask = 64'h00000000000014BE;
defparam \Add8~5 .shared_arith = "off";

cyclonev_lcell_comb \Add9~6 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~9_sumout ),
	.datad(!\Add8~9_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~10_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~6_cout ),
	.shareout());
defparam \Add9~6 .extended_lut = "off";
defparam \Add9~6 .lut_mask = 64'h000011BB000005AF;
defparam \Add9~6 .shared_arith = "off";

cyclonev_lcell_comb \Add21~21 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add21~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~21_sumout ),
	.cout(\Add21~22 ),
	.shareout());
defparam \Add21~21 .extended_lut = "off";
defparam \Add21~21 .lut_mask = 64'h0000FF000000AAAA;
defparam \Add21~21 .shared_arith = "off";

cyclonev_lcell_comb \Add22~25 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~25_sumout ),
	.cout(\Add22~26 ),
	.shareout());
defparam \Add22~25 .extended_lut = "off";
defparam \Add22~25 .lut_mask = 64'h0000AAAA000000FF;
defparam \Add22~25 .shared_arith = "off";

cyclonev_lcell_comb \Add30~30 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~17_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[8]~2_combout ),
	.datae(gnd),
	.dataf(!\Add23~13_sumout ),
	.datag(gnd),
	.cin(\Add30~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~30_cout ),
	.shareout());
defparam \Add30~30 .extended_lut = "off";
defparam \Add30~30 .lut_mask = 64'h0000FA50000000FF;
defparam \Add30~30 .shared_arith = "off";

cyclonev_lcell_comb \Add31~30 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~25_sumout ),
	.datac(!\Add24~17_sumout ),
	.datad(!\Add22~29_sumout ),
	.datae(gnd),
	.dataf(!\Add23~13_sumout ),
	.datag(gnd),
	.cin(\Add31~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~30_cout ),
	.shareout());
defparam \Add31~30 .extended_lut = "off";
defparam \Add31~30 .lut_mask = 64'h000005AF000011BB;
defparam \Add31~30 .shared_arith = "off";

cyclonev_lcell_comb \Add2~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[7]~22 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[7]~23 ),
	.combout(),
	.sumout(),
	.cout(\Add2~2_cout ),
	.shareout(\Add2~3 ));
defparam \Add2~2 .extended_lut = "off";
defparam \Add2~2 .lut_mask = 64'h000000FF0000FF00;
defparam \Add2~2 .shared_arith = "on";

cyclonev_lcell_comb \Add24~25 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~25_sumout ),
	.cout(\Add24~26 ),
	.shareout());
defparam \Add24~25 .extended_lut = "off";
defparam \Add24~25 .lut_mask = 64'h000055550000FF00;
defparam \Add24~25 .shared_arith = "off";

cyclonev_lcell_comb \Add23~21 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add23~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~21_sumout ),
	.cout(\Add23~22 ),
	.shareout());
defparam \Add23~21 .extended_lut = "off";
defparam \Add23~21 .lut_mask = 64'h000000FF00005555;
defparam \Add23~21 .shared_arith = "off";

cyclonev_lcell_comb \Add26~30 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~13_sumout ),
	.datac(!\Add24~29_sumout ),
	.datad(!\Add22~17_sumout ),
	.datae(gnd),
	.dataf(!\Add23~25_sumout ),
	.datag(gnd),
	.cin(\Add26~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~30_cout ),
	.shareout());
defparam \Add26~30 .extended_lut = "off";
defparam \Add26~30 .lut_mask = 64'h0000FA500000EE44;
defparam \Add26~30 .shared_arith = "off";

cyclonev_lcell_comb \Add25~30 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~29_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[12]~3_combout ),
	.datae(gnd),
	.dataf(!\Add23~25_sumout ),
	.datag(gnd),
	.cin(\Add25~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~30_cout ),
	.shareout());
defparam \Add25~30 .extended_lut = "off";
defparam \Add25~30 .lut_mask = 64'h0000FA50000000FF;
defparam \Add25~30 .shared_arith = "off";

cyclonev_lcell_comb \Add1~1 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~1_sumout ),
	.cout(\Add1~2 ),
	.shareout());
defparam \Add1~1 .extended_lut = "off";
defparam \Add1~1 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~1 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[2]~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[1]~26 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[1]~27 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[2]~1_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[2]~2 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[2]~3 ));
defparam \argMPiO2_uid14_sincosTest_o[2]~1 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[2]~1 .lut_mask = 64'h000000FF0000FF00;
defparam \argMPiO2_uid14_sincosTest_o[2]~1 .shared_arith = "on";

cyclonev_lcell_comb \Add4~29 (
	.dataa(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datab(gnd),
	.datac(!\Add1~29_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[1]~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add4~29_sumout ),
	.cout(\Add4~30 ),
	.shareout());
defparam \Add4~29 .extended_lut = "off";
defparam \Add4~29 .lut_mask = 64'h00000000000005AF;
defparam \Add4~29 .shared_arith = "off";

cyclonev_lcell_comb \Add1~5 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~5_sumout ),
	.cout(\Add1~6 ),
	.shareout());
defparam \Add1~5 .extended_lut = "off";
defparam \Add1~5 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~5 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[3]~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[2]~2 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[2]~3 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[3]~5_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[3]~6 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[3]~7 ));
defparam \argMPiO2_uid14_sincosTest_o[3]~5 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[3]~5 .lut_mask = 64'h00000000000000FF;
defparam \argMPiO2_uid14_sincosTest_o[3]~5 .shared_arith = "on";

cyclonev_lcell_comb \Add1~9 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~9_sumout ),
	.cout(\Add1~10 ),
	.shareout());
defparam \Add1~9 .extended_lut = "off";
defparam \Add1~9 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~9 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[4]~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[3]~6 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[3]~7 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[4]~9_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[4]~10 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[4]~11 ));
defparam \argMPiO2_uid14_sincosTest_o[4]~9 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[4]~9 .lut_mask = 64'h000000FF0000FF00;
defparam \argMPiO2_uid14_sincosTest_o[4]~9 .shared_arith = "on";

cyclonev_lcell_comb \Add1~13 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~13_sumout ),
	.cout(\Add1~14 ),
	.shareout());
defparam \Add1~13 .extended_lut = "off";
defparam \Add1~13 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~13 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[5]~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[4]~10 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[4]~11 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[5]~13_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[5]~14 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[5]~15 ));
defparam \argMPiO2_uid14_sincosTest_o[5]~13 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[5]~13 .lut_mask = 64'h000000FF0000FF00;
defparam \argMPiO2_uid14_sincosTest_o[5]~13 .shared_arith = "on";

cyclonev_lcell_comb \Add1~17 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~17_sumout ),
	.cout(\Add1~18 ),
	.shareout());
defparam \Add1~17 .extended_lut = "off";
defparam \Add1~17 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~17 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[6]~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[5]~14 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[5]~15 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[6]~17_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[6]~18 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[6]~19 ));
defparam \argMPiO2_uid14_sincosTest_o[6]~17 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[6]~17 .lut_mask = 64'h00000000000000FF;
defparam \argMPiO2_uid14_sincosTest_o[6]~17 .shared_arith = "on";

cyclonev_lcell_comb \Add1~21 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~21_sumout ),
	.cout(\Add1~22 ),
	.shareout());
defparam \Add1~21 .extended_lut = "off";
defparam \Add1~21 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~21 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[7]~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~21_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\argMPiO2_uid14_sincosTest_o[6]~18 ),
	.sharein(\argMPiO2_uid14_sincosTest_o[6]~19 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[7]~21_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[7]~22 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[7]~23 ));
defparam \argMPiO2_uid14_sincosTest_o[7]~21 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[7]~21 .lut_mask = 64'h00000000000000FF;
defparam \argMPiO2_uid14_sincosTest_o[7]~21 .shared_arith = "on";

cyclonev_lcell_comb \Add6~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~17_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~10_cout ),
	.sharein(\Add6~11 ),
	.combout(),
	.sumout(\Add6~5_sumout ),
	.cout(\Add6~6 ),
	.shareout(\Add6~7 ));
defparam \Add6~5 .extended_lut = "off";
defparam \Add6~5 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~5 .shared_arith = "on";

cyclonev_lcell_comb \Add7~9 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~9_sumout ),
	.datac(!\Add5~3_combout ),
	.datad(!\absA_uid18_sincosTest_q[3]~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~9_sumout ),
	.cout(\Add7~10 ),
	.shareout());
defparam \Add7~9 .extended_lut = "off";
defparam \Add7~9 .lut_mask = 64'h00000000000041EB;
defparam \Add7~9 .shared_arith = "off";

cyclonev_lcell_comb \Add8~9 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~9_sumout ),
	.datac(!\Add5~3_combout ),
	.datad(!\absA_uid18_sincosTest_q[3]~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~9_sumout ),
	.cout(\Add8~10 ),
	.shareout());
defparam \Add8~9 .extended_lut = "off";
defparam \Add8~9 .lut_mask = 64'h0000FFFF000041EB;
defparam \Add8~9 .shared_arith = "off";

cyclonev_lcell_comb \Add9~10 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~13_sumout ),
	.datad(!\Add8~13_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~14_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~10_cout ),
	.shareout());
defparam \Add9~10 .extended_lut = "off";
defparam \Add9~10 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~10 .shared_arith = "off";

cyclonev_lcell_comb \Add21~25 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add21~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~25_sumout ),
	.cout(\Add21~26 ),
	.shareout());
defparam \Add21~25 .extended_lut = "off";
defparam \Add21~25 .lut_mask = 64'h000055FF00005555;
defparam \Add21~25 .shared_arith = "off";

cyclonev_lcell_comb \Add22~29 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~29_sumout ),
	.cout(\Add22~30 ),
	.shareout());
defparam \Add22~29 .extended_lut = "off";
defparam \Add22~29 .lut_mask = 64'h0000888800003333;
defparam \Add22~29 .shared_arith = "off";

cyclonev_lcell_comb \Add30~34 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~29_sumout ),
	.datac(!\Add24~13_sumout ),
	.datad(!\Add22~33_sumout ),
	.datae(gnd),
	.dataf(!\Add23~9_sumout ),
	.datag(gnd),
	.cin(\Add30~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~34_cout ),
	.shareout());
defparam \Add30~34 .extended_lut = "off";
defparam \Add30~34 .lut_mask = 64'h0000FA50000011BB;
defparam \Add30~34 .shared_arith = "off";

cyclonev_lcell_comb \Add31~34 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~13_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[7]~4_combout ),
	.datae(gnd),
	.dataf(!\Add23~9_sumout ),
	.datag(gnd),
	.cin(\Add31~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~34_cout ),
	.shareout());
defparam \Add31~34 .extended_lut = "off";
defparam \Add31~34 .lut_mask = 64'h000005AF000000FF;
defparam \Add31~34 .shared_arith = "off";

cyclonev_lcell_comb \Add1~25 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~25_sumout ),
	.cout(),
	.shareout());
defparam \Add1~25 .extended_lut = "off";
defparam \Add1~25 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~25 .shared_arith = "off";

cyclonev_lcell_comb \Add24~29 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~29_sumout ),
	.cout(\Add24~30 ),
	.shareout());
defparam \Add24~29 .extended_lut = "off";
defparam \Add24~29 .lut_mask = 64'h000011110000CCCC;
defparam \Add24~29 .shared_arith = "off";

cyclonev_lcell_comb \Add23~25 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datag(gnd),
	.cin(\Add23~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~25_sumout ),
	.cout(\Add23~26 ),
	.shareout());
defparam \Add23~25 .extended_lut = "off";
defparam \Add23~25 .lut_mask = 64'h0000FFAA0000AAAA;
defparam \Add23~25 .shared_arith = "off";

cyclonev_lcell_comb \Add26~34 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~33_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[11]~5_combout ),
	.datae(gnd),
	.dataf(!\Add23~29_sumout ),
	.datag(gnd),
	.cin(\Add26~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~34_cout ),
	.shareout());
defparam \Add26~34 .extended_lut = "off";
defparam \Add26~34 .lut_mask = 64'h0000FA500000FF00;
defparam \Add26~34 .shared_arith = "off";

cyclonev_lcell_comb \Add25~34 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~5_sumout ),
	.datac(!\Add24~33_sumout ),
	.datad(!\Add22~5_sumout ),
	.datae(gnd),
	.dataf(!\Add23~29_sumout ),
	.datag(gnd),
	.cin(\Add25~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~34_cout ),
	.shareout());
defparam \Add25~34 .extended_lut = "off";
defparam \Add25~34 .lut_mask = 64'h0000FA50000011BB;
defparam \Add25~34 .shared_arith = "off";

cyclonev_lcell_comb \Add1~29 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~29_sumout ),
	.cout(\Add1~30 ),
	.shareout());
defparam \Add1~29 .extended_lut = "off";
defparam \Add1~29 .lut_mask = 64'h0000FFFF000055AA;
defparam \Add1~29 .shared_arith = "off";

cyclonev_lcell_comb \argMPiO2_uid14_sincosTest_o[1]~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add2~6_cout ),
	.sharein(\Add2~7 ),
	.combout(),
	.sumout(\argMPiO2_uid14_sincosTest_o[1]~25_sumout ),
	.cout(\argMPiO2_uid14_sincosTest_o[1]~26 ),
	.shareout(\argMPiO2_uid14_sincosTest_o[1]~27 ));
defparam \argMPiO2_uid14_sincosTest_o[1]~25 .extended_lut = "off";
defparam \argMPiO2_uid14_sincosTest_o[1]~25 .lut_mask = 64'h00000000000000FF;
defparam \argMPiO2_uid14_sincosTest_o[1]~25 .shared_arith = "on";

cyclonev_lcell_comb \Add6~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~14_cout ),
	.sharein(\Add6~15 ),
	.combout(),
	.sumout(),
	.cout(\Add6~10_cout ),
	.shareout(\Add6~11 ));
defparam \Add6~10 .extended_lut = "off";
defparam \Add6~10 .lut_mask = 64'h00000000000000FF;
defparam \Add6~10 .shared_arith = "on";

cyclonev_lcell_comb \Add7~13 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(!\Add4~5_sumout ),
	.datad(!\absA_uid18_sincosTest_q[2]~2_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~13_sumout ),
	.cout(\Add7~14 ),
	.shareout());
defparam \Add7~13 .extended_lut = "off";
defparam \Add7~13 .lut_mask = 64'h00000000000041EB;
defparam \Add7~13 .shared_arith = "off";

cyclonev_lcell_comb \Add8~13 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(!\Add4~5_sumout ),
	.datad(!\absA_uid18_sincosTest_q[2]~2_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~13_sumout ),
	.cout(\Add8~14 ),
	.shareout());
defparam \Add8~13 .extended_lut = "off";
defparam \Add8~13 .lut_mask = 64'h0000FFFF000041EB;
defparam \Add8~13 .shared_arith = "off";

cyclonev_lcell_comb \Add9~14 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~17_sumout ),
	.datad(!\Add8~17_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~18_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~14_cout ),
	.shareout());
defparam \Add9~14 .extended_lut = "off";
defparam \Add9~14 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~14 .shared_arith = "off";

cyclonev_lcell_comb \Add21~29 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~29_sumout ),
	.cout(\Add21~30 ),
	.shareout());
defparam \Add21~29 .extended_lut = "off";
defparam \Add21~29 .lut_mask = 64'h00005F5F0000F5F5;
defparam \Add21~29 .shared_arith = "off";

cyclonev_lcell_comb \Add22~33 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~33_sumout ),
	.cout(\Add22~34 ),
	.shareout());
defparam \Add22~33 .extended_lut = "off";
defparam \Add22~33 .lut_mask = 64'h0000777700002222;
defparam \Add22~33 .shared_arith = "off";

cyclonev_lcell_comb \Add30~38 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~9_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[6]~6_combout ),
	.datae(gnd),
	.dataf(!\Add23~5_sumout ),
	.datag(gnd),
	.cin(\Add30~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~38_cout ),
	.shareout());
defparam \Add30~38 .extended_lut = "off";
defparam \Add30~38 .lut_mask = 64'h0000FA50000000FF;
defparam \Add30~38 .shared_arith = "off";

cyclonev_lcell_comb \Add31~38 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~33_sumout ),
	.datac(!\Add24~9_sumout ),
	.datad(!\Add22~37_sumout ),
	.datae(gnd),
	.dataf(!\Add23~5_sumout ),
	.datag(gnd),
	.cin(\Add31~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~38_cout ),
	.shareout());
defparam \Add31~38 .extended_lut = "off";
defparam \Add31~38 .lut_mask = 64'h000005AF000011BB;
defparam \Add31~38 .shared_arith = "off";

cyclonev_lcell_comb \Add24~33 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~33_sumout ),
	.cout(\Add24~34 ),
	.shareout());
defparam \Add24~33 .extended_lut = "off";
defparam \Add24~33 .lut_mask = 64'h0000EEEE00004444;
defparam \Add24~33 .shared_arith = "off";

cyclonev_lcell_comb \Add23~29 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~29_sumout ),
	.cout(\Add23~30 ),
	.shareout());
defparam \Add23~29 .extended_lut = "off";
defparam \Add23~29 .lut_mask = 64'h0000FAFA0000AFAF;
defparam \Add23~29 .shared_arith = "off";

cyclonev_lcell_comb \Add26~38 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add24~37_sumout ),
	.datad(!\Add22~1_sumout ),
	.datae(gnd),
	.dataf(!\Add23~33_sumout ),
	.datag(gnd),
	.cin(\Add26~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~38_cout ),
	.shareout());
defparam \Add26~38 .extended_lut = "off";
defparam \Add26~38 .lut_mask = 64'h0000FA500000EE44;
defparam \Add26~38 .shared_arith = "off";

cyclonev_lcell_comb \Add25~38 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~37_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[10]~7_combout ),
	.datae(gnd),
	.dataf(!\Add23~33_sumout ),
	.datag(gnd),
	.cin(\Add25~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~38_cout ),
	.shareout());
defparam \Add25~38 .extended_lut = "off";
defparam \Add25~38 .lut_mask = 64'h0000FA50000000FF;
defparam \Add25~38 .shared_arith = "off";

cyclonev_lcell_comb \Add1~33 (
	.dataa(!a[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(!a_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add1~33_sumout ),
	.cout(\Add1~34 ),
	.shareout());
defparam \Add1~33 .extended_lut = "off";
defparam \Add1~33 .lut_mask = 64'h0000AAAA000055AA;
defparam \Add1~33 .shared_arith = "off";

cyclonev_lcell_comb \Add2~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add1~33_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add2~6_cout ),
	.shareout(\Add2~7 ));
defparam \Add2~6 .extended_lut = "off";
defparam \Add2~6 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add2~6 .shared_arith = "on";

cyclonev_lcell_comb \Add6~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~18_cout ),
	.sharein(\Add6~19 ),
	.combout(),
	.sumout(),
	.cout(\Add6~14_cout ),
	.shareout(\Add6~15 ));
defparam \Add6~14 .extended_lut = "off";
defparam \Add6~14 .lut_mask = 64'h00000000000000FF;
defparam \Add6~14 .shared_arith = "on";

cyclonev_lcell_comb \Add7~17 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(gnd),
	.datad(!\absA_uid18_sincosTest_q[1]~3_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~17_sumout ),
	.cout(\Add7~18 ),
	.shareout());
defparam \Add7~17 .extended_lut = "off";
defparam \Add7~17 .lut_mask = 64'h00000000000044EE;
defparam \Add7~17 .shared_arith = "off";

cyclonev_lcell_comb \Add8~17 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\Add4~1_sumout ),
	.datac(gnd),
	.datad(!\absA_uid18_sincosTest_q[1]~3_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~17_sumout ),
	.cout(\Add8~18 ),
	.shareout());
defparam \Add8~17 .extended_lut = "off";
defparam \Add8~17 .lut_mask = 64'h0000FFFF000044EE;
defparam \Add8~17 .shared_arith = "off";

cyclonev_lcell_comb \Add9~18 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~21_sumout ),
	.datad(!\Add8~21_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~22_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~18_cout ),
	.shareout());
defparam \Add9~18 .extended_lut = "off";
defparam \Add9~18 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~18 .shared_arith = "off";

cyclonev_lcell_comb \Add21~33 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~33_sumout ),
	.cout(\Add21~34 ),
	.shareout());
defparam \Add21~33 .extended_lut = "off";
defparam \Add21~33 .lut_mask = 64'h000055550000AAAA;
defparam \Add21~33 .shared_arith = "off";

cyclonev_lcell_comb \Add22~37 (
	.dataa(gnd),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~37_sumout ),
	.cout(\Add22~38 ),
	.shareout());
defparam \Add22~37 .extended_lut = "off";
defparam \Add22~37 .lut_mask = 64'h0000CCCC0000CCCC;
defparam \Add22~37 .shared_arith = "off";

cyclonev_lcell_comb \Add30~42 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~37_sumout ),
	.datac(!\Add24~25_sumout ),
	.datad(!\Add22~41_sumout ),
	.datae(gnd),
	.dataf(!\Add23~21_sumout ),
	.datag(gnd),
	.cin(\Add30~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~42_cout ),
	.shareout());
defparam \Add30~42 .extended_lut = "off";
defparam \Add30~42 .lut_mask = 64'h0000FA50000011BB;
defparam \Add30~42 .shared_arith = "off";

cyclonev_lcell_comb \Add31~42 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~25_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[5]~8_combout ),
	.datae(gnd),
	.dataf(!\Add23~21_sumout ),
	.datag(gnd),
	.cin(\Add31~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~42_cout ),
	.shareout());
defparam \Add31~42 .extended_lut = "off";
defparam \Add31~42 .lut_mask = 64'h000005AF000000FF;
defparam \Add31~42 .shared_arith = "off";

cyclonev_lcell_comb \Add24~37 (
	.dataa(gnd),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~37_sumout ),
	.cout(\Add24~38 ),
	.shareout());
defparam \Add24~37 .extended_lut = "off";
defparam \Add24~37 .lut_mask = 64'h0000CCCC0000CCCC;
defparam \Add24~37 .shared_arith = "off";

cyclonev_lcell_comb \Add23~33 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~33_sumout ),
	.cout(\Add23~34 ),
	.shareout());
defparam \Add23~33 .extended_lut = "off";
defparam \Add23~33 .lut_mask = 64'h0000AAAA00005555;
defparam \Add23~33 .shared_arith = "off";

cyclonev_lcell_comb \Add26~42 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~41_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[9]~0_combout ),
	.datae(gnd),
	.dataf(!\Add23~37_sumout ),
	.datag(gnd),
	.cin(\Add26~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~42_cout ),
	.shareout());
defparam \Add26~42 .extended_lut = "off";
defparam \Add26~42 .lut_mask = 64'h0000FA500000FF00;
defparam \Add26~42 .shared_arith = "off";

cyclonev_lcell_comb \Add25~42 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~21_sumout ),
	.datac(!\Add24~41_sumout ),
	.datad(!\Add22~25_sumout ),
	.datae(gnd),
	.dataf(!\Add23~37_sumout ),
	.datag(gnd),
	.cin(\Add25~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~42_cout ),
	.shareout());
defparam \Add25~42 .extended_lut = "off";
defparam \Add25~42 .lut_mask = 64'h0000FA50000011BB;
defparam \Add25~42 .shared_arith = "off";

cyclonev_lcell_comb \Add6~18 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~22_cout ),
	.sharein(\Add6~23 ),
	.combout(),
	.sumout(),
	.cout(\Add6~18_cout ),
	.shareout(\Add6~19 ));
defparam \Add6~18 .extended_lut = "off";
defparam \Add6~18 .lut_mask = 64'h00000000000000FF;
defparam \Add6~18 .shared_arith = "on";

cyclonev_lcell_comb \Add7~21 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\Add1~29_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[1]~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~21_sumout ),
	.cout(\Add7~22 ),
	.shareout());
defparam \Add7~21 .extended_lut = "off";
defparam \Add7~21 .lut_mask = 64'h000000000000569A;
defparam \Add7~21 .shared_arith = "off";

cyclonev_lcell_comb \Add8~21 (
	.dataa(!\Add4~25_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\Add1~29_sumout ),
	.datad(!\argMPiO2_uid14_sincosTest_o[1]~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~21_sumout ),
	.cout(\Add8~22 ),
	.shareout());
defparam \Add8~21 .extended_lut = "off";
defparam \Add8~21 .lut_mask = 64'h0000FFFF0000569A;
defparam \Add8~21 .shared_arith = "off";

cyclonev_lcell_comb \Add9~22 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~25_sumout ),
	.datad(!\Add8~25_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~22_cout ),
	.shareout());
defparam \Add9~22 .extended_lut = "off";
defparam \Add9~22 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~22 .shared_arith = "off";

cyclonev_lcell_comb \Add21~37 (
	.dataa(gnd),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~37_sumout ),
	.cout(\Add21~38 ),
	.shareout());
defparam \Add21~37 .extended_lut = "off";
defparam \Add21~37 .lut_mask = 64'h0000333300003333;
defparam \Add21~37 .shared_arith = "off";

cyclonev_lcell_comb \Add22~41 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~41_sumout ),
	.cout(\Add22~42 ),
	.shareout());
defparam \Add22~41 .extended_lut = "off";
defparam \Add22~41 .lut_mask = 64'h0000AAAA00005555;
defparam \Add22~41 .shared_arith = "off";

cyclonev_lcell_comb \Add30~46 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~29_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[4]~9_combout ),
	.datae(gnd),
	.dataf(!\Add23~25_sumout ),
	.datag(gnd),
	.cin(\Add30~50_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~46_cout ),
	.shareout());
defparam \Add30~46 .extended_lut = "off";
defparam \Add30~46 .lut_mask = 64'h0000FA50000000FF;
defparam \Add30~46 .shared_arith = "off";

cyclonev_lcell_comb \Add31~46 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~41_sumout ),
	.datac(!\Add24~29_sumout ),
	.datad(!\Add22~45_sumout ),
	.datae(gnd),
	.dataf(!\Add23~25_sumout ),
	.datag(gnd),
	.cin(\Add31~50_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~46_cout ),
	.shareout());
defparam \Add31~46 .extended_lut = "off";
defparam \Add31~46 .lut_mask = 64'h000005AF000011BB;
defparam \Add31~46 .shared_arith = "off";

cyclonev_lcell_comb \Add24~41 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~41_sumout ),
	.cout(\Add24~42 ),
	.shareout());
defparam \Add24~41 .extended_lut = "off";
defparam \Add24~41 .lut_mask = 64'h000055550000AAAA;
defparam \Add24~41 .shared_arith = "off";

cyclonev_lcell_comb \Add23~37 (
	.dataa(gnd),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~37_sumout ),
	.cout(\Add23~38 ),
	.shareout());
defparam \Add23~37 .extended_lut = "off";
defparam \Add23~37 .lut_mask = 64'h0000333300003333;
defparam \Add23~37 .shared_arith = "off";

cyclonev_lcell_comb \Add26~46 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~25_sumout ),
	.datac(!\Add24~45_sumout ),
	.datad(!\Add22~29_sumout ),
	.datae(gnd),
	.dataf(!\Add23~41_sumout ),
	.datag(gnd),
	.cin(\Add26~50_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~46_cout ),
	.shareout());
defparam \Add26~46 .extended_lut = "off";
defparam \Add26~46 .lut_mask = 64'h0000FA500000EE44;
defparam \Add26~46 .shared_arith = "off";

cyclonev_lcell_comb \Add25~46 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~45_sumout ),
	.datad(!\xip1E_5_uid105_sincosTest_a[8]~2_combout ),
	.datae(gnd),
	.dataf(!\Add23~41_sumout ),
	.datag(gnd),
	.cin(\Add25~50_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~46_cout ),
	.shareout());
defparam \Add25~46 .extended_lut = "off";
defparam \Add25~46 .lut_mask = 64'h0000FA50000000FF;
defparam \Add25~46 .shared_arith = "off";

cyclonev_lcell_comb \Add6~22 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~26_cout ),
	.sharein(\Add6~27 ),
	.combout(),
	.sumout(),
	.cout(\Add6~22_cout ),
	.shareout(\Add6~23 ));
defparam \Add6~22 .extended_lut = "off";
defparam \Add6~22 .lut_mask = 64'h000000FF0000FF00;
defparam \Add6~22 .shared_arith = "on";

cyclonev_lcell_comb \Add7~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~25_sumout ),
	.cout(\Add7~26 ),
	.shareout());
defparam \Add7~25 .extended_lut = "off";
defparam \Add7~25 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add7~25 .shared_arith = "off";

cyclonev_lcell_comb \Add8~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~25_sumout ),
	.cout(\Add8~26 ),
	.shareout());
defparam \Add8~25 .extended_lut = "off";
defparam \Add8~25 .lut_mask = 64'h0000FFFF00000000;
defparam \Add8~25 .shared_arith = "off";

cyclonev_lcell_comb \Add9~26 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~29_sumout ),
	.datad(!\Add8~29_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~26_cout ),
	.shareout());
defparam \Add9~26 .extended_lut = "off";
defparam \Add9~26 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~26 .shared_arith = "off";

cyclonev_lcell_comb \Add21~41 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~41_sumout ),
	.cout(\Add21~42 ),
	.shareout());
defparam \Add21~41 .extended_lut = "off";
defparam \Add21~41 .lut_mask = 64'h0000555500001111;
defparam \Add21~41 .shared_arith = "off";

cyclonev_lcell_comb \Add22~45 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~45_sumout ),
	.cout(\Add22~46 ),
	.shareout());
defparam \Add22~45 .extended_lut = "off";
defparam \Add22~45 .lut_mask = 64'h000055550000FFAA;
defparam \Add22~45 .shared_arith = "off";

cyclonev_lcell_comb \Add30~50 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~45_sumout ),
	.datac(!\Add24~33_sumout ),
	.datad(!\Add22~49_sumout ),
	.datae(gnd),
	.dataf(!\Add23~29_sumout ),
	.datag(gnd),
	.cin(\Add30~54_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~50_cout ),
	.shareout());
defparam \Add30~50 .extended_lut = "off";
defparam \Add30~50 .lut_mask = 64'h0000FA50000011BB;
defparam \Add30~50 .shared_arith = "off";

cyclonev_lcell_comb \Add31~50 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~33_sumout ),
	.datad(!\xip1E_4_uid89_sincosTest_o[3]~0_combout ),
	.datae(gnd),
	.dataf(!\Add23~29_sumout ),
	.datag(gnd),
	.cin(\Add31~54_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~50_cout ),
	.shareout());
defparam \Add31~50 .extended_lut = "off";
defparam \Add31~50 .lut_mask = 64'h000005AF000000FF;
defparam \Add31~50 .shared_arith = "off";

cyclonev_lcell_comb \Add24~45 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~45_sumout ),
	.cout(\Add24~46 ),
	.shareout());
defparam \Add24~45 .extended_lut = "off";
defparam \Add24~45 .lut_mask = 64'h0000AAAA000055FF;
defparam \Add24~45 .shared_arith = "off";

cyclonev_lcell_comb \Add23~41 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~41_sumout ),
	.cout(\Add23~42 ),
	.shareout());
defparam \Add23~41 .extended_lut = "off";
defparam \Add23~41 .lut_mask = 64'h0000AAAA00008888;
defparam \Add23~41 .shared_arith = "off";

cyclonev_lcell_comb \Add26~50 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~29_sumout ),
	.datad(!\yip1E_4_uid90_sincosTest_o[3]~0_combout ),
	.datae(gnd),
	.dataf(!\Add22~33_sumout ),
	.datag(gnd),
	.cin(\Add26~54_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~50_cout ),
	.shareout());
defparam \Add26~50 .extended_lut = "off";
defparam \Add26~50 .lut_mask = 64'h000005AF000000FF;
defparam \Add26~50 .shared_arith = "off";

cyclonev_lcell_comb \Add25~50 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~49_sumout ),
	.datac(!\Add21~29_sumout ),
	.datad(!\Add23~45_sumout ),
	.datae(gnd),
	.dataf(!\Add22~33_sumout ),
	.datag(gnd),
	.cin(\Add25~54_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~50_cout ),
	.shareout());
defparam \Add25~50 .extended_lut = "off";
defparam \Add25~50 .lut_mask = 64'h0000FA50000011BB;
defparam \Add25~50 .shared_arith = "off";

cyclonev_lcell_comb \Add6~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~29_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add6~30_cout ),
	.sharein(\Add6~31 ),
	.combout(),
	.sumout(),
	.cout(\Add6~26_cout ),
	.shareout(\Add6~27 ));
defparam \Add6~26 .extended_lut = "off";
defparam \Add6~26 .lut_mask = 64'h00000000000000FF;
defparam \Add6~26 .shared_arith = "on";

cyclonev_lcell_comb \Add7~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~29_sumout ),
	.cout(\Add7~30 ),
	.shareout());
defparam \Add7~29 .extended_lut = "off";
defparam \Add7~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add7~29 .shared_arith = "off";

cyclonev_lcell_comb \Add8~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~29_sumout ),
	.cout(\Add8~30 ),
	.shareout());
defparam \Add8~29 .extended_lut = "off";
defparam \Add8~29 .lut_mask = 64'h00000000000000FF;
defparam \Add8~29 .shared_arith = "off";

cyclonev_lcell_comb \Add9~30 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~33_sumout ),
	.datad(!\Add8~33_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~30_cout ),
	.shareout());
defparam \Add9~30 .extended_lut = "off";
defparam \Add9~30 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~30 .shared_arith = "off";

cyclonev_lcell_comb \Add21~45 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~45_sumout ),
	.cout(\Add21~46 ),
	.shareout());
defparam \Add21~45 .extended_lut = "off";
defparam \Add21~45 .lut_mask = 64'h0000CCCC00008888;
defparam \Add21~45 .shared_arith = "off";

cyclonev_lcell_comb \Add22~49 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~49_sumout ),
	.cout(\Add22~50 ),
	.shareout());
defparam \Add22~49 .extended_lut = "off";
defparam \Add22~49 .lut_mask = 64'h000055550000AA00;
defparam \Add22~49 .shared_arith = "off";

cyclonev_lcell_comb \Add30~54 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~37_sumout ),
	.datad(!\xip1E_4_uid89_sincosTest_o[2]~1_combout ),
	.datae(gnd),
	.dataf(!\Add23~33_sumout ),
	.datag(gnd),
	.cin(\Add30~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~54_cout ),
	.shareout());
defparam \Add30~54 .extended_lut = "off";
defparam \Add30~54 .lut_mask = 64'h0000FA50000000FF;
defparam \Add30~54 .shared_arith = "off";

cyclonev_lcell_comb \Add31~54 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~49_sumout ),
	.datac(!\Add24~37_sumout ),
	.datad(!\Add22~53_sumout ),
	.datae(gnd),
	.dataf(!\Add23~33_sumout ),
	.datag(gnd),
	.cin(\Add31~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~54_cout ),
	.shareout());
defparam \Add31~54 .extended_lut = "off";
defparam \Add31~54 .lut_mask = 64'h000005AF000011BB;
defparam \Add31~54 .shared_arith = "off";

cyclonev_lcell_comb \Add24~49 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~49_sumout ),
	.cout(\Add24~50 ),
	.shareout());
defparam \Add24~49 .extended_lut = "off";
defparam \Add24~49 .lut_mask = 64'h0000AAAA00000055;
defparam \Add24~49 .shared_arith = "off";

cyclonev_lcell_comb \Add23~45 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~45_sumout ),
	.cout(\Add23~46 ),
	.shareout());
defparam \Add23~45 .extended_lut = "off";
defparam \Add23~45 .lut_mask = 64'h0000333300001111;
defparam \Add23~45 .shared_arith = "off";

cyclonev_lcell_comb \Add26~54 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~53_sumout ),
	.datac(!\Add21~33_sumout ),
	.datad(!\Add23~49_sumout ),
	.datae(gnd),
	.dataf(!\Add22~37_sumout ),
	.datag(gnd),
	.cin(\Add26~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~54_cout ),
	.shareout());
defparam \Add26~54 .extended_lut = "off";
defparam \Add26~54 .lut_mask = 64'h000005AF000011BB;
defparam \Add26~54 .shared_arith = "off";

cyclonev_lcell_comb \Add25~54 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~33_sumout ),
	.datad(!\yip1E_4_uid90_sincosTest_o[2]~1_combout ),
	.datae(gnd),
	.dataf(!\Add22~37_sumout ),
	.datag(gnd),
	.cin(\Add25~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~54_cout ),
	.shareout());
defparam \Add25~54 .extended_lut = "off";
defparam \Add25~54 .lut_mask = 64'h0000FA50000000FF;
defparam \Add25~54 .shared_arith = "off";

cyclonev_lcell_comb \Add6~30 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add6~30_cout ),
	.shareout(\Add6~31 ));
defparam \Add6~30 .extended_lut = "off";
defparam \Add6~30 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \Add6~30 .shared_arith = "on";

cyclonev_lcell_comb \Add7~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~33_sumout ),
	.cout(\Add7~34 ),
	.shareout());
defparam \Add7~33 .extended_lut = "off";
defparam \Add7~33 .lut_mask = 64'h00000000000000FF;
defparam \Add7~33 .shared_arith = "off";

cyclonev_lcell_comb \Add8~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~33_sumout ),
	.cout(\Add8~34 ),
	.shareout());
defparam \Add8~33 .extended_lut = "off";
defparam \Add8~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add8~33 .shared_arith = "off";

cyclonev_lcell_comb \Add9~34 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add7~37_sumout ),
	.datad(!\Add8~37_sumout ),
	.datae(gnd),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(\Add9~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~34_cout ),
	.shareout());
defparam \Add9~34 .extended_lut = "off";
defparam \Add9~34 .lut_mask = 64'h0000EE44000005AF;
defparam \Add9~34 .shared_arith = "off";

cyclonev_lcell_comb \Add21~49 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~49_sumout ),
	.cout(\Add21~50 ),
	.shareout());
defparam \Add21~49 .extended_lut = "off";
defparam \Add21~49 .lut_mask = 64'h0000555500009999;
defparam \Add21~49 .shared_arith = "off";

cyclonev_lcell_comb \Add22~53 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~53_sumout ),
	.cout(\Add22~54 ),
	.shareout());
defparam \Add22~53 .extended_lut = "off";
defparam \Add22~53 .lut_mask = 64'h0000CCCC00009999;
defparam \Add22~53 .shared_arith = "off";

cyclonev_lcell_comb \Add30~58 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~53_sumout ),
	.datac(!\Add24~41_sumout ),
	.datad(!\Add22~57_sumout ),
	.datae(gnd),
	.dataf(!\Add23~37_sumout ),
	.datag(gnd),
	.cin(\Add30~62_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~58_cout ),
	.shareout());
defparam \Add30~58 .extended_lut = "off";
defparam \Add30~58 .lut_mask = 64'h0000FA50000011BB;
defparam \Add30~58 .shared_arith = "off";

cyclonev_lcell_comb \Add31~58 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~41_sumout ),
	.datad(!\xip1E_4_uid89_sincosTest_o[1]~2_combout ),
	.datae(gnd),
	.dataf(!\Add23~37_sumout ),
	.datag(gnd),
	.cin(\Add31~62_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~58_cout ),
	.shareout());
defparam \Add31~58 .extended_lut = "off";
defparam \Add31~58 .lut_mask = 64'h000005AF000000FF;
defparam \Add31~58 .shared_arith = "off";

cyclonev_lcell_comb \Add24~53 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~53_sumout ),
	.cout(\Add24~54 ),
	.shareout());
defparam \Add24~53 .extended_lut = "off";
defparam \Add24~53 .lut_mask = 64'h0000333300009999;
defparam \Add24~53 .shared_arith = "off";

cyclonev_lcell_comb \Add23~49 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~49_sumout ),
	.cout(\Add23~50 ),
	.shareout());
defparam \Add23~49 .extended_lut = "off";
defparam \Add23~49 .lut_mask = 64'h0000AAAA00009999;
defparam \Add23~49 .shared_arith = "off";

cyclonev_lcell_comb \Add26~58 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~37_sumout ),
	.datad(!\yip1E_4_uid90_sincosTest_o[1]~2_combout ),
	.datae(gnd),
	.dataf(!\Add22~41_sumout ),
	.datag(gnd),
	.cin(\Add26~62_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~58_cout ),
	.shareout());
defparam \Add26~58 .extended_lut = "off";
defparam \Add26~58 .lut_mask = 64'h000005AF000000FF;
defparam \Add26~58 .shared_arith = "off";

cyclonev_lcell_comb \Add25~58 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~57_sumout ),
	.datac(!\Add21~37_sumout ),
	.datad(!\Add23~53_sumout ),
	.datae(gnd),
	.dataf(!\Add22~41_sumout ),
	.datag(gnd),
	.cin(\Add25~62_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~58_cout ),
	.shareout());
defparam \Add25~58 .extended_lut = "off";
defparam \Add25~58 .lut_mask = 64'h0000FA50000011BB;
defparam \Add25~58 .shared_arith = "off";

cyclonev_lcell_comb \Add7~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add7~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~37_sumout ),
	.cout(\Add7~38 ),
	.shareout());
defparam \Add7~37 .extended_lut = "off";
defparam \Add7~37 .lut_mask = 64'h0000FFFF0000FF00;
defparam \Add7~37 .shared_arith = "off";

cyclonev_lcell_comb \Add8~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add8~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add8~37_sumout ),
	.cout(\Add8~38 ),
	.shareout());
defparam \Add8~37 .extended_lut = "off";
defparam \Add8~37 .lut_mask = 64'h000000000000FF00;
defparam \Add8~37 .shared_arith = "off";

cyclonev_lcell_comb \Add9~38 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(!\Add8~5_sumout ),
	.datad(!\aip1E_3_uid76_sincosTest_o[1]~0_combout ),
	.datae(gnd),
	.dataf(!\aip1E_3_uid76_sincosTest_o[1]~0_combout ),
	.datag(gnd),
	.cin(\Add9~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~38_cout ),
	.shareout());
defparam \Add9~38 .extended_lut = "off";
defparam \Add9~38 .lut_mask = 64'h00001B0000001BFF;
defparam \Add9~38 .shared_arith = "off";

cyclonev_lcell_comb \Add21~53 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add21~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~53_sumout ),
	.cout(\Add21~54 ),
	.shareout());
defparam \Add21~53 .extended_lut = "off";
defparam \Add21~53 .lut_mask = 64'h0000CCCC00001111;
defparam \Add21~53 .shared_arith = "off";

cyclonev_lcell_comb \Add22~57 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~57_sumout ),
	.cout(\Add22~58 ),
	.shareout());
defparam \Add22~57 .extended_lut = "off";
defparam \Add22~57 .lut_mask = 64'h0000555500001111;
defparam \Add22~57 .shared_arith = "off";

cyclonev_lcell_comb \Add30~62 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add24~45_sumout ),
	.datad(!\xip1E_4_uid89_sincosTest_o[0]~3_combout ),
	.datae(gnd),
	.dataf(!\Add23~41_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add30~62_cout ),
	.shareout());
defparam \Add30~62 .extended_lut = "off";
defparam \Add30~62 .lut_mask = 64'h0000FA50000000FF;
defparam \Add30~62 .shared_arith = "off";

cyclonev_lcell_comb \Add31~62 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~57_sumout ),
	.datac(!\Add24~45_sumout ),
	.datad(!\Add22~61_sumout ),
	.datae(gnd),
	.dataf(!\Add23~41_sumout ),
	.datag(gnd),
	.cin(\Add31~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~62_cout ),
	.shareout());
defparam \Add31~62 .extended_lut = "off";
defparam \Add31~62 .lut_mask = 64'h000005AF000011BB;
defparam \Add31~62 .shared_arith = "off";

cyclonev_lcell_comb \Add24~57 (
	.dataa(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~57_sumout ),
	.cout(\Add24~58 ),
	.shareout());
defparam \Add24~57 .extended_lut = "off";
defparam \Add24~57 .lut_mask = 64'h0000AAAA00008888;
defparam \Add24~57 .shared_arith = "off";

cyclonev_lcell_comb \Add23~53 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add23~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~53_sumout ),
	.cout(\Add23~54 ),
	.shareout());
defparam \Add23~53 .extended_lut = "off";
defparam \Add23~53 .lut_mask = 64'h0000333300008888;
defparam \Add23~53 .shared_arith = "off";

cyclonev_lcell_comb \Add26~62 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~61_sumout ),
	.datac(!\Add21~41_sumout ),
	.datad(!\Add23~57_sumout ),
	.datae(gnd),
	.dataf(!\Add22~45_sumout ),
	.datag(gnd),
	.cin(\Add26~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~62_cout ),
	.shareout());
defparam \Add26~62 .extended_lut = "off";
defparam \Add26~62 .lut_mask = 64'h000005AF000011BB;
defparam \Add26~62 .shared_arith = "off";

cyclonev_lcell_comb \Add25~62 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(!\Add21~41_sumout ),
	.datad(!\yip1E_4_uid90_sincosTest_o[0]~3_combout ),
	.datae(gnd),
	.dataf(!\Add22~45_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add25~62_cout ),
	.shareout());
defparam \Add25~62 .extended_lut = "off";
defparam \Add25~62 .lut_mask = 64'h0000FA50000000FF;
defparam \Add25~62 .shared_arith = "off";

cyclonev_lcell_comb \Add7~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\Add4~25_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add7~41_sumout ),
	.cout(\Add7~42 ),
	.shareout());
defparam \Add7~41 .extended_lut = "off";
defparam \Add7~41 .lut_mask = 64'h00000000000000FF;
defparam \Add7~41 .shared_arith = "off";

cyclonev_lcell_comb \Add8~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add8~42_cout ),
	.shareout());
defparam \Add8~42 .extended_lut = "off";
defparam \Add8~42 .lut_mask = 64'h0000FFFF00000000;
defparam \Add8~42 .shared_arith = "off";

cyclonev_lcell_comb \Add9~42 (
	.dataa(!\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.datab(!\Add7~5_sumout ),
	.datac(gnd),
	.datad(!\Add8~5_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add9~42_cout ),
	.shareout());
defparam \Add9~42 .extended_lut = "off";
defparam \Add9~42 .lut_mask = 64'h000000000000EE44;
defparam \Add9~42 .shared_arith = "off";

cyclonev_lcell_comb \Add21~57 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add21~57_sumout ),
	.cout(\Add21~58 ),
	.shareout());
defparam \Add21~57 .extended_lut = "off";
defparam \Add21~57 .lut_mask = 64'h0000555500001111;
defparam \Add21~57 .shared_arith = "off";

cyclonev_lcell_comb \Add22~61 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add22~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add22~61_sumout ),
	.cout(\Add22~62 ),
	.shareout());
defparam \Add22~61 .extended_lut = "off";
defparam \Add22~61 .lut_mask = 64'h000055550000FFAA;
defparam \Add22~61 .shared_arith = "off";

cyclonev_lcell_comb \Add31~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add31~66_cout ),
	.shareout());
defparam \Add31~66 .extended_lut = "off";
defparam \Add31~66 .lut_mask = 64'h000000000000FFFF;
defparam \Add31~66 .shared_arith = "off";

cyclonev_lcell_comb \Add24~61 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add24~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add24~61_sumout ),
	.cout(\Add24~62 ),
	.shareout());
defparam \Add24~61 .extended_lut = "off";
defparam \Add24~61 .lut_mask = 64'h0000AAAA000055FF;
defparam \Add24~61 .shared_arith = "off";

cyclonev_lcell_comb \Add23~57 (
	.dataa(!\redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add23~57_sumout ),
	.cout(\Add23~58 ),
	.shareout());
defparam \Add23~57 .extended_lut = "off";
defparam \Add23~57 .lut_mask = 64'h0000AAAA00008888;
defparam \Add23~57 .shared_arith = "off";

cyclonev_lcell_comb \Add26~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add26~66_cout ),
	.shareout());
defparam \Add26~66 .extended_lut = "off";
defparam \Add26~66 .lut_mask = 64'h000000000000FFFF;
defparam \Add26~66 .shared_arith = "off";

cyclonev_lcell_comb \Add22~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add22~66_cout ),
	.shareout());
defparam \Add22~66 .extended_lut = "off";
defparam \Add22~66 .lut_mask = 64'h000000000000FFFF;
defparam \Add22~66 .shared_arith = "off";

cyclonev_lcell_comb \Add24~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add24~66_cout ),
	.shareout());
defparam \Add24~66 .extended_lut = "off";
defparam \Add24~66 .lut_mask = 64'h000000000000FFFF;
defparam \Add24~66 .shared_arith = "off";

cyclonev_lcell_comb \Add27~6 (
	.dataa(!\Add25~17_sumout ),
	.datab(!\Add26~17_sumout ),
	.datac(!\Add26~9_sumout ),
	.datad(!\yip1E_5_uid106_sincosTest_o[13]~0_combout ),
	.datae(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.dataf(!\Add27~1_combout ),
	.datag(!\Add25~9_sumout ),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~6 .extended_lut = "on";
defparam \Add27~6 .lut_mask = 64'h55553333555A333C;
defparam \Add27~6 .shared_arith = "off";

cyclonev_lcell_comb \Add32~5 (
	.dataa(!\Add31~9_sumout ),
	.datab(!\Add30~9_sumout ),
	.datac(!\Add30~1_sumout ),
	.datad(!\Add31~5_sumout ),
	.datae(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.dataf(!\Add30~5_sumout ),
	.datag(!\Add31~1_sumout ),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add32~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add32~5 .extended_lut = "on";
defparam \Add32~5 .lut_mask = 64'h555A3333555A3C3C;
defparam \Add32~5 .shared_arith = "off";

cyclonev_lcell_comb \Add27~10 (
	.dataa(!\Add25~9_sumout ),
	.datab(!\Add26~9_sumout ),
	.datac(!\Add26~1_sumout ),
	.datad(!\Add25~5_sumout ),
	.datae(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.dataf(!\Add26~5_sumout ),
	.datag(!\Add25~1_sumout ),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~10 .extended_lut = "on";
defparam \Add27~10 .lut_mask = 64'h555A3333555A3C3C;
defparam \Add27~10 .shared_arith = "off";

cyclonev_lcell_comb \Add32~0 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add30~1_sumout ),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add30~5_sumout ),
	.datae(!\Add31~5_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add32~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add32~0 .extended_lut = "off";
defparam \Add32~0 .lut_mask = 64'h1B4EB1E41B4EB1E4;
defparam \Add32~0 .shared_arith = "off";

cyclonev_lcell_comb \Add27~0 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add26~1_sumout ),
	.datac(!\Add25~1_sumout ),
	.datad(!\Add26~5_sumout ),
	.datae(!\Add25~5_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~0 .extended_lut = "off";
defparam \Add27~0 .lut_mask = 64'h1B4EB1E41B4EB1E4;
defparam \Add27~0 .shared_arith = "off";

cyclonev_lcell_comb \Add27~1 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add26~1_sumout ),
	.datac(!\Add25~1_sumout ),
	.datad(!\Add26~5_sumout ),
	.datae(!\Add25~5_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~1 .extended_lut = "off";
defparam \Add27~1 .lut_mask = 64'h00110A1B00110A1B;
defparam \Add27~1 .shared_arith = "off";

cyclonev_lcell_comb \Add27~2 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add27~1_combout ),
	.datac(!\Add26~9_sumout ),
	.datad(!\Add25~9_sumout ),
	.datae(!\Add26~13_sumout ),
	.dataf(!\Add25~13_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~2 .extended_lut = "off";
defparam \Add27~2 .lut_mask = 64'h01235476AB89FEDC;
defparam \Add27~2 .shared_arith = "off";

cyclonev_lcell_comb \Add32~1 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add30~1_sumout ),
	.datac(!\Add31~1_sumout ),
	.datad(!\Add30~5_sumout ),
	.datae(!\Add31~5_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add32~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add32~1 .extended_lut = "off";
defparam \Add32~1 .lut_mask = 64'h00110A1B00110A1B;
defparam \Add32~1 .shared_arith = "off";

cyclonev_lcell_comb \Add32~2 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add32~1_combout ),
	.datac(!\Add30~9_sumout ),
	.datad(!\Add31~9_sumout ),
	.datae(!\Add30~13_sumout ),
	.dataf(!\Add31~13_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add32~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add32~2 .extended_lut = "off";
defparam \Add32~2 .lut_mask = 64'h01235476AB89FEDC;
defparam \Add32~2 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_5_uid106_sincosTest_o[13]~0 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add26~13_sumout ),
	.datac(!\Add25~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_5_uid106_sincosTest_o[13]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_5_uid106_sincosTest_o[13]~0 .extended_lut = "off";
defparam \yip1E_5_uid106_sincosTest_o[13]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_5_uid106_sincosTest_o[13]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_o[12]~0 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add30~9_sumout ),
	.datac(!\Add31~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_o[12]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_o[12]~0 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_o[12]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_o[12]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_o[13]~1 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add30~13_sumout ),
	.datac(!\Add31~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_o[13]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_o[13]~1 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_o[13]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_o[13]~1 .shared_arith = "off";

cyclonev_lcell_comb \Add32~3 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add32~1_combout ),
	.datac(!\xip1E_5_uid105_sincosTest_o[12]~0_combout ),
	.datad(!\xip1E_5_uid105_sincosTest_o[13]~1_combout ),
	.datae(!\Add30~17_sumout ),
	.dataf(!\Add31~17_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add32~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add32~3 .extended_lut = "off";
defparam \Add32~3 .lut_mask = 64'h00035556AAA9FFFC;
defparam \Add32~3 .shared_arith = "off";

cyclonev_lcell_comb \Add27~3 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add26~21_sumout ),
	.datac(!\Add25~21_sumout ),
	.datad(!\Add26~17_sumout ),
	.datae(!\Add27~4_combout ),
	.dataf(!\Add27~5_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~3 .extended_lut = "off";
defparam \Add27~3 .lut_mask = 64'h1B1B1B1B1B1BB1E4;
defparam \Add27~3 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_o[14]~2 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add30~17_sumout ),
	.datac(!\Add31~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_o[14]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_o[14]~2 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_o[14]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_o[14]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_o[15]~3 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add30~21_sumout ),
	.datac(!\Add31~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_o[15]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_o[15]~3 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_o[15]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_o[15]~3 .shared_arith = "off";

cyclonev_lcell_comb \Add32~4 (
	.dataa(!\Add32~1_combout ),
	.datab(!\xip1E_5_uid105_sincosTest_o[12]~0_combout ),
	.datac(!\xip1E_5_uid105_sincosTest_o[13]~1_combout ),
	.datad(!\xip1E_5_uid105_sincosTest_o[14]~2_combout ),
	.datae(!\xip1E_5_uid105_sincosTest_o[15]~3_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add32~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add32~4 .extended_lut = "off";
defparam \Add32~4 .lut_mask = 64'h0001FFFE0001FFFE;
defparam \Add32~4 .shared_arith = "off";

cyclonev_lcell_comb \Add5~0 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add4~5_sumout ),
	.datac(!\Add4~9_sumout ),
	.datad(!\Add4~13_sumout ),
	.datae(!\Add4~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add5~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add5~0 .extended_lut = "off";
defparam \Add5~0 .lut_mask = 64'h00007FFF00007FFF;
defparam \Add5~0 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_3_uid76_sincosTest_a[12]~0 (
	.dataa(!\Add5~0_combout ),
	.datab(!\Add4~21_sumout ),
	.datac(!\Add4~25_sumout ),
	.datad(!\Add6~1_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid76_sincosTest_a[12]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid76_sincosTest_a[12]~0 .extended_lut = "off";
defparam \aip1E_3_uid76_sincosTest_a[12]~0 .lut_mask = 64'h06F606F606F606F6;
defparam \aip1E_3_uid76_sincosTest_a[12]~0 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_4_uid92_sincosTest_a[11]~0 (
	.dataa(!\Add5~0_combout ),
	.datab(!\Add4~21_sumout ),
	.datac(!\Add4~25_sumout ),
	.datad(!\Add6~1_sumout ),
	.datae(!\Add7~5_sumout ),
	.dataf(!\Add8~5_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_4_uid92_sincosTest_a[11]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_4_uid92_sincosTest_a[11]~0 .extended_lut = "off";
defparam \aip1E_4_uid92_sincosTest_a[11]~0 .lut_mask = 64'h000006F6F909FFFF;
defparam \aip1E_4_uid92_sincosTest_a[11]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[9]~0 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~21_sumout ),
	.datac(!\Add22~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[9]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[9]~0 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[9]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[9]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[13]~1 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~17_sumout ),
	.datac(!\Add22~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[13]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[13]~1 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[13]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[13]~1 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[4]~0 (
	.dataa(!\Add1~13_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[5]~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[4]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[4]~0 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[4]~0 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[4]~0 .shared_arith = "off";

cyclonev_lcell_comb \Add5~1 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add4~5_sumout ),
	.datac(!\Add4~9_sumout ),
	.datad(!\Add4~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add5~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add5~1 .extended_lut = "off";
defparam \Add5~1 .lut_mask = 64'h7F807F807F807F80;
defparam \Add5~1 .shared_arith = "off";

cyclonev_lcell_comb \Add5~2 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add4~5_sumout ),
	.datac(!\Add4~9_sumout ),
	.datad(!\Add4~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add5~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add5~2 .extended_lut = "off";
defparam \Add5~2 .lut_mask = 64'h7FFF7FFF7FFF7FFF;
defparam \Add5~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[8]~2 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~25_sumout ),
	.datac(!\Add22~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[8]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[8]~2 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[8]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[8]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[12]~3 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~13_sumout ),
	.datac(!\Add22~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[12]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[12]~3 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[12]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[12]~3 .shared_arith = "off";

cyclonev_lcell_comb \Add5~3 (
	.dataa(!\Add4~1_sumout ),
	.datab(!\Add4~5_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add5~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add5~3 .extended_lut = "off";
defparam \Add5~3 .lut_mask = 64'h7777777777777777;
defparam \Add5~3 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[3]~1 (
	.dataa(!\Add1~9_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[4]~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[3]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[3]~1 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[3]~1 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[3]~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[7]~4 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~29_sumout ),
	.datac(!\Add22~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[7]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[7]~4 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[7]~4 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[7]~4 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[11]~5 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~5_sumout ),
	.datac(!\Add22~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[11]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[11]~5 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[11]~5 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[11]~5 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[2]~2 (
	.dataa(!\Add1~5_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[3]~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[2]~2 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[2]~2 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[6]~6 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~33_sumout ),
	.datac(!\Add22~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[6]~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[6]~6 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[6]~6 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[10]~7 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~1_sumout ),
	.datac(!\Add22~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[10]~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[10]~7 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[10]~7 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[10]~7 .shared_arith = "off";

cyclonev_lcell_comb \absA_uid18_sincosTest_q[1]~3 (
	.dataa(!\Add1~1_sumout ),
	.datab(!\firstQuadrant_uid15_sincosTest_b[0]~1_sumout ),
	.datac(!\argMPiO2_uid14_sincosTest_o[2]~1_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\absA_uid18_sincosTest_q[1]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \absA_uid18_sincosTest_q[1]~3 .extended_lut = "off";
defparam \absA_uid18_sincosTest_q[1]~3 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \absA_uid18_sincosTest_q[1]~3 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[5]~8 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~37_sumout ),
	.datac(!\Add22~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[5]~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[5]~8 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[5]~8 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[5]~8 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_5_uid105_sincosTest_a[4]~9 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~41_sumout ),
	.datac(!\Add22~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_5_uid105_sincosTest_a[4]~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_5_uid105_sincosTest_a[4]~9 .extended_lut = "off";
defparam \xip1E_5_uid105_sincosTest_a[4]~9 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_5_uid105_sincosTest_a[4]~9 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid89_sincosTest_o[3]~0 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~45_sumout ),
	.datac(!\Add22~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid89_sincosTest_o[3]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid89_sincosTest_o[3]~0 .extended_lut = "off";
defparam \xip1E_4_uid89_sincosTest_o[3]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid89_sincosTest_o[3]~0 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid90_sincosTest_o[3]~0 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~49_sumout ),
	.datac(!\Add23~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid90_sincosTest_o[3]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid90_sincosTest_o[3]~0 .extended_lut = "off";
defparam \yip1E_4_uid90_sincosTest_o[3]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid90_sincosTest_o[3]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid89_sincosTest_o[2]~1 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~49_sumout ),
	.datac(!\Add22~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid89_sincosTest_o[2]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid89_sincosTest_o[2]~1 .extended_lut = "off";
defparam \xip1E_4_uid89_sincosTest_o[2]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid89_sincosTest_o[2]~1 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid90_sincosTest_o[2]~1 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~53_sumout ),
	.datac(!\Add23~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid90_sincosTest_o[2]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid90_sincosTest_o[2]~1 .extended_lut = "off";
defparam \yip1E_4_uid90_sincosTest_o[2]~1 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid90_sincosTest_o[2]~1 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid89_sincosTest_o[1]~2 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~53_sumout ),
	.datac(!\Add22~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid89_sincosTest_o[1]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid89_sincosTest_o[1]~2 .extended_lut = "off";
defparam \xip1E_4_uid89_sincosTest_o[1]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid89_sincosTest_o[1]~2 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid90_sincosTest_o[1]~2 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~57_sumout ),
	.datac(!\Add23~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid90_sincosTest_o[1]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid90_sincosTest_o[1]~2 .extended_lut = "off";
defparam \yip1E_4_uid90_sincosTest_o[1]~2 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid90_sincosTest_o[1]~2 .shared_arith = "off";

cyclonev_lcell_comb \aip1E_3_uid76_sincosTest_o[1]~0 (
	.dataa(!\Add5~0_combout ),
	.datab(!\Add4~21_sumout ),
	.datac(!\Add4~25_sumout ),
	.datad(!\Add6~1_sumout ),
	.datae(!\Add7~41_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\aip1E_3_uid76_sincosTest_o[1]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \aip1E_3_uid76_sincosTest_o[1]~0 .extended_lut = "off";
defparam \aip1E_3_uid76_sincosTest_o[1]~0 .lut_mask = 64'h09090FFF09090FFF;
defparam \aip1E_3_uid76_sincosTest_o[1]~0 .shared_arith = "off";

cyclonev_lcell_comb \xip1E_4_uid89_sincosTest_o[0]~3 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add21~57_sumout ),
	.datac(!\Add22~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xip1E_4_uid89_sincosTest_o[0]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xip1E_4_uid89_sincosTest_o[0]~3 .extended_lut = "off";
defparam \xip1E_4_uid89_sincosTest_o[0]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \xip1E_4_uid89_sincosTest_o[0]~3 .shared_arith = "off";

cyclonev_lcell_comb \yip1E_4_uid90_sincosTest_o[0]~3 (
	.dataa(!\redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add24~61_sumout ),
	.datac(!\Add23~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\yip1E_4_uid90_sincosTest_o[0]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \yip1E_4_uid90_sincosTest_o[0]~3 .extended_lut = "off";
defparam \yip1E_4_uid90_sincosTest_o[0]~3 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \yip1E_4_uid90_sincosTest_o[0]~3 .shared_arith = "off";

cyclonev_lcell_comb \Add27~4 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add25~9_sumout ),
	.datac(!\Add26~1_sumout ),
	.datad(!\Add25~1_sumout ),
	.datae(!\Add26~5_sumout ),
	.dataf(!\Add25~5_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~4 .extended_lut = "off";
defparam \Add27~4 .lut_mask = 64'h0000050500220527;
defparam \Add27~4 .shared_arith = "off";

cyclonev_lcell_comb \Add27~5 (
	.dataa(!\redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\Add25~17_sumout ),
	.datac(!\Add26~13_sumout ),
	.datad(!\Add25~13_sumout ),
	.datae(!\Add26~9_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add27~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add27~5 .extended_lut = "off";
defparam \Add27~5 .lut_mask = 64'h0022052700220527;
defparam \Add27~5 .shared_arith = "off";

cyclonev_lcell_comb \s[4]~5 (
	.dataa(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add34~0_combout ),
	.datac(!\Add29~3_combout ),
	.datad(!\Add29~2_combout ),
	.datae(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.dataf(!\Add29~1_combout ),
	.datag(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q ),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[4]~5 .extended_lut = "on";
defparam \s[4]~5 .lut_mask = 64'h69690F0F69690FF0;
defparam \s[4]~5 .shared_arith = "off";

cyclonev_lcell_comb \c[0]~0 (
	.dataa(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[0]~0 .extended_lut = "off";
defparam \c[0]~0 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \c[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \c[1]~1 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q ),
	.datad(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datae(!\redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.dataf(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[1]~1 .extended_lut = "off";
defparam \c[1]~1 .lut_mask = 64'h0A2828285F7D7D7D;
defparam \c[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \c[2]~2 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add29~0_combout ),
	.datac(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[2]~2 .extended_lut = "off";
defparam \c[2]~2 .lut_mask = 64'h7272727272727272;
defparam \c[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \c[3]~3 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add29~1_combout ),
	.datac(!\Add29~2_combout ),
	.datad(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[3]~3 .extended_lut = "off";
defparam \c[3]~3 .lut_mask = 64'h287D287D287D287D;
defparam \c[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \c[4]~4 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add29~1_combout ),
	.datac(!\Add29~2_combout ),
	.datad(!\Add29~3_combout ),
	.datae(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(c_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \c[4]~4 .extended_lut = "off";
defparam \c[4]~4 .lut_mask = 64'h02A857FD02A857FD;
defparam \c[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \s[0]~0 (
	.dataa(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[0]~0 .extended_lut = "off";
defparam \s[0]~0 .lut_mask = 64'h4747474747474747;
defparam \s[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \s[1]~1 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q ),
	.datad(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datae(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ),
	.dataf(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[1]~1 .extended_lut = "off";
defparam \s[1]~1 .lut_mask = 64'h051405BEAFBEAF14;
defparam \s[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \s[2]~2 (
	.dataa(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(!\Add29~0_combout ),
	.dataf(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[2]~2 .extended_lut = "off";
defparam \s[2]~2 .lut_mask = 64'hC8C0FBF3040C373F;
defparam \s[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \s[3]~4 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\Add29~1_combout ),
	.datac(!\Add29~2_combout ),
	.datad(!\s[3]~3_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(s_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[3]~4 .extended_lut = "off";
defparam \s[3]~4 .lut_mask = 64'h14FF14FF14FF14FF;
defparam \s[3]~4 .shared_arith = "off";

cyclonev_lcell_comb \Add34~0 (
	.dataa(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q ),
	.dataf(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add34~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add34~0 .extended_lut = "off";
defparam \Add34~0 .lut_mask = 64'h0800000000000000;
defparam \Add34~0 .shared_arith = "off";

cyclonev_lcell_comb \Add29~3 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(!\redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datad(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add29~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add29~3 .extended_lut = "off";
defparam \Add29~3 .lut_mask = 64'h3BC43BC43BC43BC4;
defparam \Add29~3 .shared_arith = "off";

cyclonev_lcell_comb \Add29~2 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q ),
	.datad(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datae(!\redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.dataf(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add29~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add29~2 .extended_lut = "off";
defparam \Add29~2 .lut_mask = 64'h00C080C000000000;
defparam \Add29~2 .shared_arith = "off";

cyclonev_lcell_comb \Add29~1 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(!\redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.datad(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add29~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add29~1 .extended_lut = "off";
defparam \Add29~1 .lut_mask = 64'h3BC43BC43BC43BC4;
defparam \Add29~1 .shared_arith = "off";

cyclonev_lcell_comb \Add29~0 (
	.dataa(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datab(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q ),
	.datac(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q ),
	.datad(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datae(!\redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q ),
	.dataf(!\redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add29~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add29~0 .extended_lut = "off";
defparam \Add29~0 .lut_mask = 64'hFFC0D5C0003F2A3F;
defparam \Add29~0 .shared_arith = "off";

cyclonev_lcell_comb \s[3]~3 (
	.dataa(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q ),
	.datab(!\redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q ),
	.datac(!\redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q ),
	.datad(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q ),
	.datae(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q ),
	.dataf(!\redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\s[3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \s[3]~3 .extended_lut = "off";
defparam \s[3]~3 .lut_mask = 64'h040C0C0CC8C0C0C0;
defparam \s[3]~3 .shared_arith = "off";

endmodule

module sincos2_dspba_delay (
	xin,
	delay_signals_0_0,
	delay_signals_1_0,
	delay_signals_2_0,
	delay_signals_3_0,
	delay_signals_4_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[4:0] xin;
output 	delay_signals_0_0;
output 	delay_signals_1_0;
output 	delay_signals_2_0;
output 	delay_signals_3_0;
output 	delay_signals_4_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

endmodule

module sincos2_dspba_delay_1 (
	xin,
	delay_signals_0_0,
	delay_signals_1_0,
	delay_signals_2_0,
	delay_signals_3_0,
	delay_signals_4_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[4:0] xin;
output 	delay_signals_0_0;
output 	delay_signals_1_0;
output 	delay_signals_2_0;
output 	delay_signals_3_0;
output 	delay_signals_4_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(xin[1]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(xin[2]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(xin[3]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(xin[4]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

endmodule

module sincos2_dspba_delay_2 (
	xin,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[4:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos2_dspba_delay_3 (
	delay_signals_0_0,
	xin,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[4:0] xin;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos2_dspba_delay_4 (
	xin,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[4:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos2_dspba_delay_5 (
	xin,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[4:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module sincos2_dspba_delay_6 (
	xin,
	delay_signals_0_0,
	clk,
	aclr)/* synthesis synthesis_greybox=0 */;
input 	[4:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[1][0]~q ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~q ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[1][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\delay_signals[1][0]~q ),
	.prn(vcc));
defparam \delay_signals[1][0] .is_wysiwyg = "true";
defparam \delay_signals[1][0] .power_up = "low";

endmodule

module sincos2_dspba_delay_7 (
	delay_signals_0_0,
	clk,
	aclr,
	a_9)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	a_9;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[1][0]~0_combout ;
wire \delay_signals[1][0]~q ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~q ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

cyclonev_lcell_comb \delay_signals[1][0]~0 (
	.dataa(!a_9),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\delay_signals[1][0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \delay_signals[1][0]~0 .extended_lut = "off";
defparam \delay_signals[1][0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \delay_signals[1][0]~0 .shared_arith = "off";

dffeas \delay_signals[1][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~0_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\delay_signals[1][0]~q ),
	.prn(vcc));
defparam \delay_signals[1][0] .is_wysiwyg = "true";
defparam \delay_signals[1][0] .power_up = "low";

endmodule

module sincos2_dspba_delay_8 (
	delay_signals_0_0,
	clk,
	aclr,
	xin)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	[4:0] xin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[1][0]~q ;


dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[1][0]~q ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[1][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\delay_signals[1][0]~q ),
	.prn(vcc));
defparam \delay_signals[1][0] .is_wysiwyg = "true";
defparam \delay_signals[1][0] .power_up = "low";

endmodule
