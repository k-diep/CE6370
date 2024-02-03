// verilog_out version 6.89.1
// options:  veriloggen -EE ave8_E.IFF
// bdlpars options:  -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name ave8_sw ../../ave8_sw.c -process=ave8
// bdltran options:  -EE -c2000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl ave8-amacro-auto.FLIB +lfl ave8-auto.FLIB -lfc ave8-auto.FCNT +lfc ave8-amacro-auto.FCNT -lml ave8-auto.MLIB -lmc ave8-auto.MCNT ave8.IFF 
// timestamp_0: 20231029144942_15137_12930
// timestamp_5: 20231029144946_15746_97562
// timestamp_9: 20231029144947_15746_42542
// timestamp_C: 20231029144947_15746_79982
// timestamp_E: 20231029144948_15746_84034
// timestamp_V: 20231029144949_16405_11149

module ave8 ( in0 ,enable ,ave8_ret ,CLOCK ,RESET );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:23
input		enable ;	// line#=../../ave8_sw.c:23
output	[0:31]	ave8_ret ;	// line#=../../ave8_sw.c:23
input		CLOCK ;
input		RESET ;
wire		ST1_01d ;
wire		ST1_02d ;
wire		ST1_03d ;
wire		ST1_04d ;

ave8_fsm INST_fsm ( .CLOCK(CLOCK) ,.RESET(RESET) ,.ST1_04d(ST1_04d) ,.ST1_03d(ST1_03d) ,
	.ST1_02d(ST1_02d) ,.ST1_01d(ST1_01d) ,.enable(enable) );
ave8_dat INST_dat ( .in0(in0) ,.enable(enable) ,.ave8_ret(ave8_ret) ,.CLOCK(CLOCK) ,
	.RESET(RESET) ,.ST1_04d(ST1_04d) ,.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,
	.ST1_01d(ST1_01d) );

endmodule

module ave8_fsm ( CLOCK ,RESET ,ST1_04d ,ST1_03d ,ST1_02d ,ST1_01d ,enable );
input		CLOCK ;
input		RESET ;
output		ST1_04d ;
output		ST1_03d ;
output		ST1_02d ;
output		ST1_01d ;
input		enable ;	// line#=../../ave8_sw.c:23
reg	[0:1]	B01_streg ;

parameter	ST1_01 = 2'h0 ;
parameter	ST1_02 = 2'h1 ;
parameter	ST1_03 = 2'h2 ;
parameter	ST1_04 = 2'h3 ;

assign	ST1_01d = ( ( B01_streg == ST1_01 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_02d = ( ( B01_streg == ST1_02 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_03d = ( ( B01_streg == ST1_03 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_04d = ( ( B01_streg == ST1_04 ) ? 1'h1 : 1'h0 ) ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		B01_streg <= ST1_01 ;
	else
		case ( B01_streg )
		ST1_01 :
			if ( ( ( ~enable ) != 1'h0 ) )
				B01_streg <= ST1_03 ;
			else
				B01_streg <= ST1_02 ;
		ST1_02 :
			B01_streg <= ST1_03 ;
		ST1_03 :
			B01_streg <= ST1_04 ;
		ST1_04 :
			B01_streg <= ST1_01 ;
		default :
			B01_streg <= ST1_01 ;
		endcase

endmodule

module ave8_dat ( in0 ,enable ,ave8_ret ,CLOCK ,RESET ,ST1_04d ,ST1_03d ,ST1_02d ,
	ST1_01d );
input	[0:7]	in0 ;	// line#=../../ave8_sw.c:23
input		enable ;	// line#=../../ave8_sw.c:23
output	[0:31]	ave8_ret ;	// line#=../../ave8_sw.c:23
input		CLOCK ;
input		RESET ;
input		ST1_04d ;
input		ST1_03d ;
input		ST1_02d ;
input		ST1_01d ;
wire		M_75 ;
wire	[0:38]	add48s_47_471i2 ;
wire	[0:46]	add48s_47_471i1 ;
wire	[0:46]	add48s_47_471ot ;
wire	[0:1]	add44s_43_431i2 ;
wire	[0:42]	add44s_43_431i1 ;
wire	[0:42]	add44s_43_431ot ;
wire	[0:8]	add12u_11_102i2 ;
wire	[0:8]	add12u_11_102i1 ;
wire	[0:9]	add12u_11_102ot ;
wire	[0:8]	add12u_11_101i2 ;
wire	[0:8]	add12u_11_101i1 ;
wire	[0:9]	add12u_11_101ot ;
wire	[0:4]	add8u_9_11i2 ;
wire	[0:7]	add8u_9_11i1 ;
wire	[0:8]	add8u_9_11ot ;
wire	[0:5]	add8u_91i2 ;
wire	[0:7]	add8u_91i1 ;
wire	[0:8]	add8u_91ot ;
wire	[0:3]	seven_segment_decoder3i1 ;
wire	[0:7]	seven_segment_decoder3ot ;
wire	[0:3]	seven_segment_decoder2i1 ;
wire	[0:7]	seven_segment_decoder2ot ;
wire	[0:3]	seven_segment_decoder1i1 ;
wire	[0:7]	seven_segment_decoder1ot ;
wire	[0:39]	sub44s_431i2 ;
wire	[0:41]	sub44s_431i1 ;
wire	[0:42]	sub44s_431ot ;
wire	[0:38]	sub40u1i2 ;
wire	[0:7]	sub40u1i1 ;
wire	[0:39]	sub40u1ot ;
wire	[0:31]	sub36u_341i2 ;
wire	[0:33]	sub36u_341i1 ;
wire	[0:33]	sub36u_341ot ;
wire	[0:19]	sub32s1i2 ;
wire	[0:31]	sub32s1i1 ;
wire	[0:31]	sub32s1ot ;
wire	[0:10]	sub20u1i2 ;
wire	[0:18]	sub20u1i1 ;
wire	[0:19]	sub20u1ot ;
wire	[0:8]	sub16s1i2 ;
wire	[0:15]	sub16s1i1 ;
wire	[0:15]	sub16s1ot ;
wire	[0:7]	sub16u_141i2 ;
wire	[0:12]	sub16u_141i1 ;
wire	[0:13]	sub16u_141ot ;
wire	[0:3]	sub4s2i2 ;
wire	[0:3]	sub4s2i1 ;
wire	[0:3]	sub4s2ot ;
wire	[0:3]	sub4s1i2 ;
wire	[0:3]	sub4s1i1 ;
wire	[0:3]	sub4s1ot ;
wire	[0:48]	add81_81s1i2 ;
wire	[0:80]	add81_81s1i1 ;
wire	[0:80]	add81_81s1ot ;
wire	[0:54]	add71_71s1i2 ;
wire	[0:70]	add71_71s1i1 ;
wire	[0:70]	add71_71s1ot ;
wire	[0:46]	add56s_551i2 ;
wire	[0:54]	add56s_551i1 ;
wire	[0:54]	add56s_551ot ;
wire	[0:42]	add48s_471i2 ;
wire	[0:46]	add48s_471i1 ;
wire	[0:46]	add48s_471ot ;
wire	[0:38]	add44s_431i2 ;
wire	[0:42]	add44s_431i1 ;
wire	[0:42]	add44s_431ot ;
wire	[0:28]	add36u_341i2 ;
wire	[0:33]	add36u_341i1 ;
wire	[0:33]	add36u_341ot ;
wire	[0:5]	add32s1i2 ;
wire	[0:31]	add32s1i1 ;
wire	[0:31]	add32s1ot ;
wire	[0:5]	add12s1i2 ;
wire	[0:11]	add12s1i1 ;
wire	[0:11]	add12s1ot ;
wire	[0:9]	add12u_111i2 ;
wire	[0:9]	add12u_111i1 ;
wire	[0:10]	add12u_111ot ;
wire	[0:7]	add8u4i2 ;
wire	[0:7]	add8u4i1 ;
wire	[0:8]	add8u4ot ;
wire	[0:7]	add8u3i2 ;
wire	[0:7]	add8u3i1 ;
wire	[0:8]	add8u3ot ;
wire	[0:7]	add8u2i2 ;
wire	[0:7]	add8u2i1 ;
wire	[0:8]	add8u2ot ;
wire	[0:7]	add8u1i2 ;
wire	[0:7]	add8u1i1 ;
wire	[0:8]	add8u1ot ;
wire	[0:1]	add4s1i2 ;
wire	[0:3]	add4s1i1 ;
wire	[0:3]	add4s1ot ;
wire	[0:1]	add3s1i2 ;
wire	[0:2]	add3s1i1 ;
wire	[0:3]	add3s1ot ;
wire		add1s1i3 ;
wire		add1s1i2 ;
wire		add1s1i1 ;
wire		add1s1ot ;
wire		RG_buffer_en ;
wire		RG_buffer_1_en ;
wire		RG_buffer_2_en ;
wire		RG_buffer_3_en ;
wire		RG_buffer_4_en ;
wire		RG_buffer_5_en ;
wire		RG_buffer_6_en ;
wire		ave8_ret_r_en ;
wire		RG_buffer_7_en ;
reg	[0:7]	RG_buffer ;	// line#=../../ave8_sw.c:17
reg	[0:7]	RG_buffer_1 ;	// line#=../../ave8_sw.c:17
reg	[0:7]	RG_buffer_2 ;	// line#=../../ave8_sw.c:17
reg	[0:7]	RG_buffer_3 ;	// line#=../../ave8_sw.c:17
reg	[0:7]	RG_buffer_4 ;	// line#=../../ave8_sw.c:17
reg	[0:7]	RG_buffer_5 ;	// line#=../../ave8_sw.c:17
reg	[0:7]	RG_buffer_6 ;	// line#=../../ave8_sw.c:17
reg	[0:7]	RG_buffer_7 ;	// line#=../../ave8_sw.c:17
reg	RG_08 ;
reg	[0:7]	RG_out0_v ;	// line#=../../ave8_sw.c:26
reg	[0:2]	RG_10 ;
reg	[0:31]	ave8_ret_r ;	// line#=../../ave8_sw.c:23
reg	[0:6]	M_79 ;
reg	[0:6]	M_78 ;
reg	[0:6]	M_77 ;
reg	[0:7]	RG_buffer_7_t ;
reg	RG_buffer_7_t_c1 ;
reg	RG_08_t ;

ave8_add48s_47_47 INST_add48s_47_47_1 ( .i1(add48s_47_471i1) ,.i2(add48s_47_471i2) ,
	.o1(add48s_47_471ot) );	// line#=../../ave8_sw.c:70
ave8_add44s_43_43 INST_add44s_43_43_1 ( .i1(add44s_43_431i1) ,.i2(add44s_43_431i2) ,
	.o1(add44s_43_431ot) );	// line#=../../ave8_sw.c:70
ave8_add12u_11_10 INST_add12u_11_10_1 ( .i1(add12u_11_101i1) ,.i2(add12u_11_101i2) ,
	.o1(add12u_11_101ot) );	// line#=../../ave8_sw.c:56,61
ave8_add12u_11_10 INST_add12u_11_10_2 ( .i1(add12u_11_102i1) ,.i2(add12u_11_102i2) ,
	.o1(add12u_11_102ot) );	// line#=../../ave8_sw.c:61
ave8_add8u_9_1 INST_add8u_9_1_1 ( .i1(add8u_9_11i1) ,.i2(add8u_9_11i2) ,.o1(add8u_9_11ot) );	// line#=../../ave8_sw.c:69
ave8_add8u_9 INST_add8u_9_1 ( .i1(add8u_91i1) ,.i2(add8u_91i2) ,.o1(add8u_91ot) );	// line#=../../ave8_sw.c:69
always @ ( seven_segment_decoder1i1 )	// line#=../../ave8_sw.c:75,76,77,79,80
	case ( seven_segment_decoder1i1 )
	4'h0 :
		M_79 = 7'h40 ;	// line#=../../ave8_sw.c:20
	4'h1 :
		M_79 = 7'h79 ;	// line#=../../ave8_sw.c:20
	4'h2 :
		M_79 = 7'h24 ;	// line#=../../ave8_sw.c:20
	4'h3 :
		M_79 = 7'h30 ;	// line#=../../ave8_sw.c:20
	4'h4 :
		M_79 = 7'h31 ;	// line#=../../ave8_sw.c:20
	4'h5 :
		M_79 = 7'h12 ;	// line#=../../ave8_sw.c:20
	4'h6 :
		M_79 = 7'h02 ;	// line#=../../ave8_sw.c:20
	4'h7 :
		M_79 = 7'h78 ;	// line#=../../ave8_sw.c:20
	4'h8 :
		M_79 = 7'h00 ;	// line#=../../ave8_sw.c:20
	4'h9 :
		M_79 = 7'h10 ;	// line#=../../ave8_sw.c:20
	default :
		M_79 = 7'h00 ;
	endcase
assign	seven_segment_decoder1ot = { M_79 , 1'h0 } ;	// line#=../../ave8_sw.c:75,76,77,79,80
always @ ( seven_segment_decoder2i1 )	// line#=../../ave8_sw.c:75,76,77,79,80
	case ( seven_segment_decoder2i1 )
	4'h0 :
		M_78 = 7'h40 ;	// line#=../../ave8_sw.c:20
	4'h1 :
		M_78 = 7'h79 ;	// line#=../../ave8_sw.c:20
	4'h2 :
		M_78 = 7'h24 ;	// line#=../../ave8_sw.c:20
	4'h3 :
		M_78 = 7'h30 ;	// line#=../../ave8_sw.c:20
	4'h4 :
		M_78 = 7'h31 ;	// line#=../../ave8_sw.c:20
	4'h5 :
		M_78 = 7'h12 ;	// line#=../../ave8_sw.c:20
	4'h6 :
		M_78 = 7'h02 ;	// line#=../../ave8_sw.c:20
	4'h7 :
		M_78 = 7'h78 ;	// line#=../../ave8_sw.c:20
	4'h8 :
		M_78 = 7'h00 ;	// line#=../../ave8_sw.c:20
	4'h9 :
		M_78 = 7'h10 ;	// line#=../../ave8_sw.c:20
	default :
		M_78 = 7'h00 ;
	endcase
assign	seven_segment_decoder2ot = { M_78 , 1'h0 } ;	// line#=../../ave8_sw.c:75,76,77,79,80
always @ ( seven_segment_decoder3i1 )	// line#=../../ave8_sw.c:75,76,77,79,80
	case ( seven_segment_decoder3i1 )
	4'h0 :
		M_77 = 7'h40 ;	// line#=../../ave8_sw.c:20
	4'h1 :
		M_77 = 7'h79 ;	// line#=../../ave8_sw.c:20
	4'h2 :
		M_77 = 7'h24 ;	// line#=../../ave8_sw.c:20
	4'h3 :
		M_77 = 7'h30 ;	// line#=../../ave8_sw.c:20
	4'h4 :
		M_77 = 7'h31 ;	// line#=../../ave8_sw.c:20
	4'h5 :
		M_77 = 7'h12 ;	// line#=../../ave8_sw.c:20
	4'h6 :
		M_77 = 7'h02 ;	// line#=../../ave8_sw.c:20
	4'h7 :
		M_77 = 7'h78 ;	// line#=../../ave8_sw.c:20
	4'h8 :
		M_77 = 7'h00 ;	// line#=../../ave8_sw.c:20
	4'h9 :
		M_77 = 7'h10 ;	// line#=../../ave8_sw.c:20
	default :
		M_77 = 7'h00 ;
	endcase
assign	seven_segment_decoder3ot = { M_77 , 1'h0 } ;	// line#=../../ave8_sw.c:75,76,77,79,80
ave8_sub44s_43 INST_sub44s_43_1 ( .i1(sub44s_431i1) ,.i2(sub44s_431i2) ,.o1(sub44s_431ot) );	// line#=../../ave8_sw.c:70
ave8_sub40u INST_sub40u_1 ( .i1(sub40u1i1) ,.i2(sub40u1i2) ,.o1(sub40u1ot) );	// line#=../../ave8_sw.c:70
ave8_sub36u_34 INST_sub36u_34_1 ( .i1(sub36u_341i1) ,.i2(sub36u_341i2) ,.o1(sub36u_341ot) );	// line#=../../ave8_sw.c:70
ave8_sub32s INST_sub32s_1 ( .i1(sub32s1i1) ,.i2(sub32s1i2) ,.o1(sub32s1ot) );	// line#=../../ave8_sw.c:69
ave8_sub20u INST_sub20u_1 ( .i1(sub20u1i1) ,.i2(sub20u1i2) ,.o1(sub20u1ot) );	// line#=../../ave8_sw.c:69
ave8_sub16s INST_sub16s_1 ( .i1(sub16s1i1) ,.i2(sub16s1i2) ,.o1(sub16s1ot) );	// line#=../../ave8_sw.c:69
ave8_sub16u_14 INST_sub16u_14_1 ( .i1(sub16u_141i1) ,.i2(sub16u_141i2) ,.o1(sub16u_141ot) );	// line#=../../ave8_sw.c:69
ave8_sub4s INST_sub4s_1 ( .i1(sub4s1i1) ,.i2(sub4s1i2) ,.o1(sub4s1ot) );	// line#=../../ave8_sw.c:71
ave8_sub4s INST_sub4s_2 ( .i1(sub4s2i1) ,.i2(sub4s2i2) ,.o1(sub4s2ot) );	// line#=../../ave8_sw.c:71
ave8_add81_81s INST_add81_81s_1 ( .i1(add81_81s1i1) ,.i2(add81_81s1i2) ,.o1(add81_81s1ot) );	// line#=../../ave8_sw.c:70
ave8_add71_71s INST_add71_71s_1 ( .i1(add71_71s1i1) ,.i2(add71_71s1i2) ,.o1(add71_71s1ot) );	// line#=../../ave8_sw.c:70
ave8_add56s_55 INST_add56s_55_1 ( .i1(add56s_551i1) ,.i2(add56s_551i2) ,.o1(add56s_551ot) );	// line#=../../ave8_sw.c:70
ave8_add48s_47 INST_add48s_47_1 ( .i1(add48s_471i1) ,.i2(add48s_471i2) ,.o1(add48s_471ot) );	// line#=../../ave8_sw.c:70
ave8_add44s_43 INST_add44s_43_1 ( .i1(add44s_431i1) ,.i2(add44s_431i2) ,.o1(add44s_431ot) );	// line#=../../ave8_sw.c:70
ave8_add36u_34 INST_add36u_34_1 ( .i1(add36u_341i1) ,.i2(add36u_341i2) ,.o1(add36u_341ot) );	// line#=../../ave8_sw.c:70
ave8_add32s INST_add32s_1 ( .i1(add32s1i1) ,.i2(add32s1i2) ,.o1(add32s1ot) );	// line#=../../ave8_sw.c:69
ave8_add12s INST_add12s_1 ( .i1(add12s1i1) ,.i2(add12s1i2) ,.o1(add12s1ot) );	// line#=../../ave8_sw.c:69
ave8_add12u_11 INST_add12u_11_1 ( .i1(add12u_111i1) ,.i2(add12u_111i2) ,.o1(add12u_111ot) );	// line#=../../ave8_sw.c:61
ave8_add8u INST_add8u_1 ( .i1(add8u1i1) ,.i2(add8u1i2) ,.o1(add8u1ot) );	// line#=../../ave8_sw.c:61
ave8_add8u INST_add8u_2 ( .i1(add8u2i1) ,.i2(add8u2i2) ,.o1(add8u2ot) );	// line#=../../ave8_sw.c:61
ave8_add8u INST_add8u_3 ( .i1(add8u3i1) ,.i2(add8u3i2) ,.o1(add8u3ot) );	// line#=../../ave8_sw.c:56,61
ave8_add8u INST_add8u_4 ( .i1(add8u4i1) ,.i2(add8u4i2) ,.o1(add8u4ot) );	// line#=../../ave8_sw.c:56,61
ave8_add4s INST_add4s_1 ( .i1(add4s1i1) ,.i2(add4s1i2) ,.o1(add4s1ot) );	// line#=../../ave8_sw.c:70
ave8_add3s INST_add3s_1 ( .i1(add3s1i1) ,.i2(add3s1i2) ,.o1(add3s1ot) );	// line#=../../ave8_sw.c:69
ave8_add1s INST_add1s_1 ( .i1(add1s1i1) ,.i2(add1s1i2) ,.i3(add1s1i3) ,.o1(add1s1ot) );	// line#=../../ave8_sw.c:70,71
assign	ave8_ret = ave8_ret_r ;	// line#=../../ave8_sw.c:23
always @ ( posedge CLOCK )	// line#=../../ave8_sw.c:61,65
	RG_out0_v <= add12u_111ot [0:7] ;
always @ ( posedge CLOCK )	// line#=../../ave8_sw.c:69
	RG_10 <= add32s1ot [0:2] ;
assign	M_75 = ( add81_81s1ot [0] & ( |add81_81s1ot [38:80] ) ) ;	// line#=../../ave8_sw.c:70
assign	add1s1i1 = add81_81s1ot [37] ;	// line#=../../ave8_sw.c:70,71
assign	add1s1i2 = add4s1ot [1] ;	// line#=../../ave8_sw.c:70,71
assign	add1s1i3 = M_75 ;	// line#=../../ave8_sw.c:70,71
assign	add3s1i1 = RG_10 ;	// line#=../../ave8_sw.c:69
assign	add3s1i2 = { 1'h0 , ( RG_10 [0] & RG_08 ) } ;	// line#=../../ave8_sw.c:69
assign	add4s1i1 = add81_81s1ot [34:37] ;	// line#=../../ave8_sw.c:70
assign	add4s1i2 = { 1'h0 , M_75 } ;	// line#=../../ave8_sw.c:70
assign	add8u1i1 = RG_buffer_1 ;	// line#=../../ave8_sw.c:61
assign	add8u1i2 = RG_buffer_2 ;	// line#=../../ave8_sw.c:61
assign	add8u2i1 = RG_buffer_3 ;	// line#=../../ave8_sw.c:61
assign	add8u2i2 = RG_buffer_4 ;	// line#=../../ave8_sw.c:61
assign	add8u3i1 = RG_buffer_5 ;	// line#=../../ave8_sw.c:56,61
assign	add8u3i2 = RG_buffer_6 ;	// line#=../../ave8_sw.c:56,61
assign	add8u4i1 = RG_buffer_7 ;	// line#=../../ave8_sw.c:56,61
assign	add8u4i2 = RG_buffer ;	// line#=../../ave8_sw.c:56,61
assign	add12u_111i1 = add12u_11_102ot ;	// line#=../../ave8_sw.c:61
assign	add12u_111i2 = add12u_11_101ot ;	// line#=../../ave8_sw.c:56,61
assign	add12s1i1 = { 1'h0 , add8u_91ot , add12u_111ot [6:7] } ;	// line#=../../ave8_sw.c:61,65,69
assign	add12s1i2 = sub16u_141ot [0:5] ;	// line#=../../ave8_sw.c:69
assign	add32s1i1 = sub32s1ot ;	// line#=../../ave8_sw.c:69
assign	add32s1i2 = sub16s1ot [0:5] ;	// line#=../../ave8_sw.c:69
assign	add36u_341i1 = sub36u_341ot ;	// line#=../../ave8_sw.c:70
assign	add36u_341i2 = { add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] } ;	// line#=../../ave8_sw.c:69,70
assign	add44s_431i1 = sub44s_431ot ;	// line#=../../ave8_sw.c:70
assign	add44s_431i2 = sub44s_431ot [0:38] ;	// line#=../../ave8_sw.c:70
assign	add48s_471i1 = { add44s_43_431ot , sub40u1ot [2:5] } ;	// line#=../../ave8_sw.c:70
assign	add48s_471i2 = sub44s_431ot ;	// line#=../../ave8_sw.c:70
assign	add56s_551i1 = { add48s_471ot , sub40u1ot [6:13] } ;	// line#=../../ave8_sw.c:70
assign	add56s_551i2 = { add44s_431ot , sub44s_431ot [39:42] } ;	// line#=../../ave8_sw.c:70
assign	add71_71s1i1 = { add56s_551ot , sub40u1ot [14:29] } ;	// line#=../../ave8_sw.c:70
assign	add71_71s1i2 = { add48s_47_471ot , add44s_431ot [39:42] , sub44s_431ot [39:42] } ;	// line#=../../ave8_sw.c:70
assign	add81_81s1i1 = { add71_71s1ot , sub40u1ot [30:39] } ;	// line#=../../ave8_sw.c:70
assign	add81_81s1i2 = { add44s_431ot , sub44s_431ot [39:42] , 2'h0 } ;	// line#=../../ave8_sw.c:70
assign	sub4s1i1 = RG_out0_v [4:7] ;	// line#=../../ave8_sw.c:71
assign	sub4s1i2 = { add3s1ot [2:3] , 2'h0 } ;	// line#=../../ave8_sw.c:69,71
assign	sub4s2i1 = sub4s1ot ;	// line#=../../ave8_sw.c:71
assign	sub4s2i2 = { add1s1ot , add4s1ot [2:3] , 1'h0 } ;	// line#=../../ave8_sw.c:70,71
assign	sub16u_141i1 = { add12u_111ot [0:7] , 5'h00 } ;	// line#=../../ave8_sw.c:61,65,69
assign	sub16u_141i2 = add12u_111ot [0:7] ;	// line#=../../ave8_sw.c:61,65,69
assign	sub16s1i1 = { sub16u_141ot , 2'h0 } ;	// line#=../../ave8_sw.c:69
assign	sub16s1i2 = { 1'h0 , add12u_111ot [0:7] } ;	// line#=../../ave8_sw.c:61,65,69
assign	sub20u1i1 = { add8u_9_11ot , add12u_111ot [5:7] , 7'h00 } ;	// line#=../../ave8_sw.c:61,65,69
assign	sub20u1i2 = { add8u_91ot , add12u_111ot [6:7] } ;	// line#=../../ave8_sw.c:61,65,69
assign	sub32s1i1 = { add12s1ot , sub16u_141ot [6:13] , 12'h000 } ;	// line#=../../ave8_sw.c:69
assign	sub32s1i2 = sub20u1ot ;	// line#=../../ave8_sw.c:69
assign	sub36u_341i1 = { add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot , 2'h0 } ;	// line#=../../ave8_sw.c:69,70
assign	sub36u_341i2 = { add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , 
	add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot [0] , add3s1ot } ;	// line#=../../ave8_sw.c:69,70
assign	sub40u1i1 = RG_out0_v ;	// line#=../../ave8_sw.c:70
assign	sub40u1i2 = { add36u_341ot , add3s1ot [1:3] , 2'h0 } ;	// line#=../../ave8_sw.c:69,70
assign	sub44s_431i1 = { sub40u1ot , 2'h0 } ;	// line#=../../ave8_sw.c:70
assign	sub44s_431i2 = sub40u1ot ;	// line#=../../ave8_sw.c:70
assign	seven_segment_decoder1i1 = add3s1ot ;	// line#=../../ave8_sw.c:69,75,76,77,79
						// ,80
assign	seven_segment_decoder2i1 = add4s1ot ;	// line#=../../ave8_sw.c:70,75,76,77,79
						// ,80
assign	seven_segment_decoder3i1 = sub4s2ot ;	// line#=../../ave8_sw.c:71,75,76,77,79
						// ,80
assign	add8u_91i1 = add12u_111ot [0:7] ;	// line#=../../ave8_sw.c:61,65,69
assign	add8u_91i2 = add12u_111ot [0:5] ;	// line#=../../ave8_sw.c:61,65,69
assign	add8u_9_11i1 = add12u_111ot [0:7] ;	// line#=../../ave8_sw.c:61,65,69
assign	add8u_9_11i2 = add12u_111ot [0:4] ;	// line#=../../ave8_sw.c:61,65,69
assign	add12u_11_101i1 = add8u3ot ;	// line#=../../ave8_sw.c:56,61
assign	add12u_11_101i2 = add8u4ot ;	// line#=../../ave8_sw.c:56,61
assign	add12u_11_102i1 = add8u1ot ;	// line#=../../ave8_sw.c:61
assign	add12u_11_102i2 = add8u2ot ;	// line#=../../ave8_sw.c:61
assign	add44s_43_431i1 = sub44s_431ot ;	// line#=../../ave8_sw.c:70
assign	add44s_43_431i2 = sub40u1ot [0:1] ;	// line#=../../ave8_sw.c:70
assign	add48s_47_471i1 = { add44s_431ot , sub44s_431ot [39:42] } ;	// line#=../../ave8_sw.c:70
assign	add48s_47_471i2 = add44s_431ot [0:38] ;	// line#=../../ave8_sw.c:70
assign	RG_buffer_en = ST1_02d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:46
	if ( RESET )
		RG_buffer <= 8'h00 ;
	else if ( RG_buffer_en )
		RG_buffer <= RG_buffer_7 ;
assign	RG_buffer_1_en = ST1_02d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:44
	if ( RESET )
		RG_buffer_1 <= 8'h00 ;
	else if ( RG_buffer_1_en )
		RG_buffer_1 <= RG_buffer ;
assign	RG_buffer_2_en = ST1_02d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:44
	if ( RESET )
		RG_buffer_2 <= 8'h00 ;
	else if ( RG_buffer_2_en )
		RG_buffer_2 <= RG_buffer_1 ;
assign	RG_buffer_3_en = ST1_02d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:44
	if ( RESET )
		RG_buffer_3 <= 8'h00 ;
	else if ( RG_buffer_3_en )
		RG_buffer_3 <= RG_buffer_2 ;
assign	RG_buffer_4_en = ST1_02d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:44
	if ( RESET )
		RG_buffer_4 <= 8'h00 ;
	else if ( RG_buffer_4_en )
		RG_buffer_4 <= RG_buffer_3 ;
assign	RG_buffer_5_en = ST1_02d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:44
	if ( RESET )
		RG_buffer_5 <= 8'h00 ;
	else if ( RG_buffer_5_en )
		RG_buffer_5 <= RG_buffer_4 ;
assign	RG_buffer_6_en = ST1_02d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:44
	if ( RESET )
		RG_buffer_6 <= 8'h00 ;
	else if ( RG_buffer_6_en )
		RG_buffer_6 <= RG_buffer_5 ;
always @ ( ST1_02d or RG_buffer_6 or enable or ST1_01d or in0 )	// line#=../../ave8_sw.c:41
	begin
	RG_buffer_7_t_c1 = ( ST1_01d & enable ) ;	// line#=../../ave8_sw.c:46
	case ( { RG_buffer_7_t_c1 , ST1_02d } )
	2'b10 :
		RG_buffer_7_t = in0 ;	// line#=../../ave8_sw.c:46
	2'b01 :
		RG_buffer_7_t = RG_buffer_6 ;	// line#=../../ave8_sw.c:44
	default :
		RG_buffer_7_t = 8'hx ;
	endcase
	end
assign	RG_buffer_7_en = ( RG_buffer_7_t_c1 | ST1_02d ) ;	// line#=../../ave8_sw.c:41
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:41
	if ( RESET )
		RG_buffer_7 <= 8'h00 ;
	else if ( RG_buffer_7_en )
		RG_buffer_7 <= RG_buffer_7_t ;	// line#=../../ave8_sw.c:41,44,46
always @ ( ST1_03d or sub16s1ot or add32s1ot or ST1_01d or enable )
	case ( { ST1_01d , ST1_03d } )
	2'b10 :
		RG_08_t = enable ;	// line#=../../ave8_sw.c:41
	2'b01 :
		RG_08_t = |{ add32s1ot [3:31] , sub16s1ot [6:15] } ;	// line#=../../ave8_sw.c:69
	default :
		RG_08_t = 1'hx ;
	endcase
always @ ( posedge CLOCK )
	RG_08 <= RG_08_t ;	// line#=../../ave8_sw.c:41,69
assign	ave8_ret_r_en = ST1_04d ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../ave8_sw.c:75,76,77,79,80
	if ( RESET )
		ave8_ret_r <= 32'h00000000 ;
	else if ( ave8_ret_r_en )
		ave8_ret_r <= { 8'h00 , seven_segment_decoder1ot , seven_segment_decoder2ot , 
		seven_segment_decoder3ot } ;

endmodule

module ave8_add48s_47_47 ( i1 ,i2 ,o1 );
input	[0:46]	i1 ;
input	[0:38]	i2 ;
output	[0:46]	o1 ;

assign	o1 = ( i1 + { { 8{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add44s_43_43 ( i1 ,i2 ,o1 );
input	[0:42]	i1 ;
input	[0:1]	i2 ;
output	[0:42]	o1 ;

assign	o1 = ( i1 + { { 41{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add12u_11_10 ( i1 ,i2 ,o1 );
input	[0:8]	i1 ;
input	[0:8]	i2 ;
output	[0:9]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule

module ave8_add8u_9_1 ( i1 ,i2 ,o1 );
input	[0:7]	i1 ;
input	[0:4]	i2 ;
output	[0:8]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 4'h0 , i2 } ) ;

endmodule

module ave8_add8u_9 ( i1 ,i2 ,o1 );
input	[0:7]	i1 ;
input	[0:5]	i2 ;
output	[0:8]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 3'h0 , i2 } ) ;

endmodule

module ave8_sub44s_43 ( i1 ,i2 ,o1 );
input	[0:41]	i1 ;
input	[0:39]	i2 ;
output	[0:42]	o1 ;

assign	o1 = ( { { 1{ i1 [0] } } , i1 } - { { 3{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_sub40u ( i1 ,i2 ,o1 );
input	[0:7]	i1 ;
input	[0:38]	i2 ;
output	[0:39]	o1 ;

assign	o1 = ( { 32'h00000000 , i1 } - { 1'h0 , i2 } ) ;

endmodule

module ave8_sub36u_34 ( i1 ,i2 ,o1 );
input	[0:33]	i1 ;
input	[0:31]	i2 ;
output	[0:33]	o1 ;

assign	o1 = ( i1 - { 2'h0 , i2 } ) ;

endmodule

module ave8_sub32s ( i1 ,i2 ,o1 );
input	[0:31]	i1 ;
input	[0:19]	i2 ;
output	[0:31]	o1 ;

assign	o1 = ( i1 - { { 12{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_sub20u ( i1 ,i2 ,o1 );
input	[0:18]	i1 ;
input	[0:10]	i2 ;
output	[0:19]	o1 ;

assign	o1 = ( { 1'h0 , i1 } - { 9'h000 , i2 } ) ;

endmodule

module ave8_sub16s ( i1 ,i2 ,o1 );
input	[0:15]	i1 ;
input	[0:8]	i2 ;
output	[0:15]	o1 ;

assign	o1 = ( i1 - { { 7{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_sub16u_14 ( i1 ,i2 ,o1 );
input	[0:12]	i1 ;
input	[0:7]	i2 ;
output	[0:13]	o1 ;

assign	o1 = ( { 1'h0 , i1 } - { 6'h00 , i2 } ) ;

endmodule

module ave8_sub4s ( i1 ,i2 ,o1 );
input	[0:3]	i1 ;
input	[0:3]	i2 ;
output	[0:3]	o1 ;

assign	o1 = ( i1 - i2 ) ;

endmodule

module ave8_add81_81s ( i1 ,i2 ,o1 );
input	[0:80]	i1 ;
input	[0:48]	i2 ;
output	[0:80]	o1 ;

assign	o1 = ( i1 + { { 32{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add71_71s ( i1 ,i2 ,o1 );
input	[0:70]	i1 ;
input	[0:54]	i2 ;
output	[0:70]	o1 ;

assign	o1 = ( i1 + { { 16{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add56s_55 ( i1 ,i2 ,o1 );
input	[0:54]	i1 ;
input	[0:46]	i2 ;
output	[0:54]	o1 ;

assign	o1 = ( i1 + { { 8{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add48s_47 ( i1 ,i2 ,o1 );
input	[0:46]	i1 ;
input	[0:42]	i2 ;
output	[0:46]	o1 ;

assign	o1 = ( i1 + { { 4{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add44s_43 ( i1 ,i2 ,o1 );
input	[0:42]	i1 ;
input	[0:38]	i2 ;
output	[0:42]	o1 ;

assign	o1 = ( i1 + { { 4{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add36u_34 ( i1 ,i2 ,o1 );
input	[0:33]	i1 ;
input	[0:28]	i2 ;
output	[0:33]	o1 ;

assign	o1 = ( i1 + { 5'h00 , i2 } ) ;

endmodule

module ave8_add32s ( i1 ,i2 ,o1 );
input	[0:31]	i1 ;
input	[0:5]	i2 ;
output	[0:31]	o1 ;

assign	o1 = ( i1 + { { 26{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add12s ( i1 ,i2 ,o1 );
input	[0:11]	i1 ;
input	[0:5]	i2 ;
output	[0:11]	o1 ;

assign	o1 = ( i1 + { { 6{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add12u_11 ( i1 ,i2 ,o1 );
input	[0:9]	i1 ;
input	[0:9]	i2 ;
output	[0:10]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule

module ave8_add8u ( i1 ,i2 ,o1 );
input	[0:7]	i1 ;
input	[0:7]	i2 ;
output	[0:8]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule

module ave8_add4s ( i1 ,i2 ,o1 );
input	[0:3]	i1 ;
input	[0:1]	i2 ;
output	[0:3]	o1 ;

assign	o1 = ( i1 + { { 2{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add3s ( i1 ,i2 ,o1 );
input	[0:2]	i1 ;
input	[0:1]	i2 ;
output	[0:3]	o1 ;

assign	o1 = ( { { 1{ i1 [0] } } , i1 } + { { 2{ i2 [0] } } , i2 } ) ;

endmodule

module ave8_add1s ( i1 ,i2 ,i3 ,o1 );
input		i1 ;
input		i2 ;
input		i3 ;
output		o1 ;

assign	o1 = ( i1 + i2 + i3 ) ;

endmodule