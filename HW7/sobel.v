// verilog_out version 6.89.1
// options:  veriloggen -EE sobel_E.IFF
// bdlpars options:  -EE -info_base_name sobel ../../sobel.c
// bdltran options:  -EE -c2000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl /proj/cad/cwb-6.1/packages/cycloneV-float.FLIB +lfl sobel-auto.FLIB +lfl sobel-amacro-auto.FLIB -lfc sobel-auto.FCNT +lfc sobel-amacro-auto.FCNT -lml sobel-auto.MLIB -lmc sobel-auto.MCNT sobel.IFF 
// timestamp_0: 20231031173556_08933_98405
// timestamp_5: 20231031190227_28227_95902
// timestamp_9: 20231031190229_28227_41948
// timestamp_C: 20231031190229_28227_22549
// timestamp_E: 20231031190229_28227_45102
// timestamp_V: 20231031190230_28424_52974

module sobel ( input_row_a00 ,input_row_a01 ,input_row_a02 ,sobel_ret ,CLOCK ,RESET );
input	[7:0]	input_row_a00 ;	// line#=../../sobel.c:37
input	[7:0]	input_row_a01 ;	// line#=../../sobel.c:37
input	[7:0]	input_row_a02 ;	// line#=../../sobel.c:37
output	[7:0]	sobel_ret ;	// line#=../../sobel.c:37
input		CLOCK ;
input		RESET ;
wire		C_02 ;
wire		C_01 ;
wire	[10:0]	sub12s_11_102i2 ;
wire	[1:0]	sub12s_11_102i1 ;
wire	[9:0]	sub12s_11_102ot ;
wire	[10:0]	sub12s_11_101i2 ;
wire	[1:0]	sub12s_11_101i1 ;
wire	[9:0]	sub12s_11_101ot ;
wire	[8:0]	sub12u_10_101i2 ;
wire	[7:0]	sub12u_10_101i1 ;
wire	[9:0]	sub12u_10_101ot ;
wire	[9:0]	add12s_11_11_11i2 ;
wire	[8:0]	add12s_11_11_11i1 ;
wire	[10:0]	add12s_11_11_11ot ;
wire	[10:0]	add12s_11_111i2 ;
wire	[8:0]	add12s_11_111i1 ;
wire	[10:0]	add12s_11_111ot ;
wire	[6:0]	add8u_91i2 ;
wire	[7:0]	add8u_91i1 ;
wire	[8:0]	add8u_91ot ;
wire	[10:0]	sub12s_111i2 ;
wire	[10:0]	sub12s_111i1 ;
wire	[10:0]	sub12s_111ot ;
wire	[7:0]	sub12u_101i2 ;
wire	[8:0]	sub12u_101i1 ;
wire	[9:0]	sub12u_101ot ;
wire	[7:0]	sub8u2i2 ;
wire	[7:0]	sub8u2i1 ;
wire	[8:0]	sub8u2ot ;
wire	[7:0]	sub8u1i2 ;
wire	[7:0]	sub8u1i1 ;
wire	[8:0]	sub8u1ot ;
wire	[9:0]	add12s_111i2 ;
wire	[10:0]	add12s_111i1 ;
wire	[10:0]	add12s_111ot ;
wire	[7:0]	add12u_101i2 ;
wire	[8:0]	add12u_101i1 ;
wire	[9:0]	add12u_101ot ;
wire	[8:0]	add8u1ot ;
reg	[7:0]	RG_line_buffer ;	// line#=../../sobel.c:28
reg	[7:0]	RG_line_buffer_1 ;	// line#=../../sobel.c:28
reg	[7:0]	RG_line_buffer_2 ;	// line#=../../sobel.c:28
reg	[7:0]	sobel_ret_r ;	// line#=../../sobel.c:37
reg	[9:0]	sumX1_t1 ;
reg	sumX1_t1_c1 ;
reg	[9:0]	sumY1_t1 ;
reg	sumY1_t1_c1 ;
reg	[7:0]	add8u1i1 ;
reg	add8u1i1_c1 ;
reg	[7:0]	add8u1i2 ;
reg	add8u1i2_c1 ;
reg	[7:0]	SUM2_t ;
reg	SUM2_t_c1 ;

sobel_sub12s_11_10 INST_sub12s_11_10_1 ( .i1(sub12s_11_101i1) ,.i2(sub12s_11_101i2) ,
	.o1(sub12s_11_101ot) );	// line#=../../sobel.c:81
sobel_sub12s_11_10 INST_sub12s_11_10_2 ( .i1(sub12s_11_102i1) ,.i2(sub12s_11_102i2) ,
	.o1(sub12s_11_102ot) );	// line#=../../sobel.c:84
sobel_sub12u_10_10 INST_sub12u_10_10_1 ( .i1(sub12u_10_101i1) ,.i2(sub12u_10_101i2) ,
	.o1(sub12u_10_101ot) );	// line#=../../sobel.c:74
sobel_add12s_11_11_1 INST_add12s_11_11_1_1 ( .i1(add12s_11_11_11i1) ,.i2(add12s_11_11_11i2) ,
	.o1(add12s_11_11_11ot) );	// line#=../../sobel.c:74
sobel_add12s_11_11 INST_add12s_11_11_1 ( .i1(add12s_11_111i1) ,.i2(add12s_11_111i2) ,
	.o1(add12s_11_111ot) );	// line#=../../sobel.c:75
sobel_add8u_9 INST_add8u_9_1 ( .i1(add8u_91i1) ,.i2(add8u_91i2) ,.o1(add8u_91ot) );	// line#=../../sobel.c:57,75
sobel_sub12s_11 INST_sub12s_11_1 ( .i1(sub12s_111i1) ,.i2(sub12s_111i2) ,.o1(sub12s_111ot) );	// line#=../../sobel.c:75
sobel_sub12u_10 INST_sub12u_10_1 ( .i1(sub12u_101i1) ,.i2(sub12u_101i2) ,.o1(sub12u_101ot) );	// line#=../../sobel.c:74
sobel_sub8u INST_sub8u_1 ( .i1(sub8u1i1) ,.i2(sub8u1i2) ,.o1(sub8u1ot) );	// line#=../../sobel.c:75
sobel_sub8u INST_sub8u_2 ( .i1(sub8u2i1) ,.i2(sub8u2i2) ,.o1(sub8u2ot) );	// line#=../../sobel.c:74
sobel_add12s_11 INST_add12s_11_1 ( .i1(add12s_111i1) ,.i2(add12s_111i2) ,.o1(add12s_111ot) );	// line#=../../sobel.c:74
sobel_add12u_10 INST_add12u_10_1 ( .i1(add12u_101i1) ,.i2(add12u_101i2) ,.o1(add12u_101ot) );	// line#=../../sobel.c:75
sobel_add8u INST_add8u_1 ( .i1(add8u1i1) ,.i2(add8u1i2) ,.o1(add8u1ot) );	// line#=../../sobel.c:87
assign	sobel_ret = sobel_ret_r ;	// line#=../../sobel.c:37
assign	sub12s_11_101i1 = 2'h0 ;	// line#=../../sobel.c:81
assign	sub12s_11_101i2 = add12s_111ot ;	// line#=../../sobel.c:74,81
assign	sub12s_11_102i1 = 2'h0 ;	// line#=../../sobel.c:84
assign	sub12s_11_102i2 = sub12s_111ot ;	// line#=../../sobel.c:75,84
assign	C_01 = |sumY1_t1 [9:8] ;	// line#=../../sobel.c:85
assign	C_02 = |sumX1_t1 [9:8] ;	// line#=../../sobel.c:82
always @ ( add12s_111ot or sub12s_11_101ot )	// line#=../../sobel.c:74,81
	begin
	sumX1_t1_c1 = ~add12s_111ot [10] ;	// line#=../../sobel.c:74
	case ( { add12s_111ot [10] , sumX1_t1_c1 } )
	2'b10 :
		sumX1_t1 = sub12s_11_101ot ;	// line#=../../sobel.c:81
	2'b01 :
		sumX1_t1 = add12s_111ot [9:0] ;	// line#=../../sobel.c:74
	default :
		sumX1_t1 = 10'hx ;
	endcase
	end
always @ ( sub12s_111ot or sub12s_11_102ot )	// line#=../../sobel.c:75,84
	begin
	sumY1_t1_c1 = ~sub12s_111ot [10] ;	// line#=../../sobel.c:75
	case ( { sub12s_111ot [10] , sumY1_t1_c1 } )
	2'b10 :
		sumY1_t1 = sub12s_11_102ot ;	// line#=../../sobel.c:84
	2'b01 :
		sumY1_t1 = sub12s_111ot [9:0] ;	// line#=../../sobel.c:75
	default :
		sumY1_t1 = 10'hx ;
	endcase
	end
always @ ( sumX1_t1 or C_02 )	// line#=../../sobel.c:82,87
	begin
	add8u1i1_c1 = ~C_02 ;
	case ( { C_02 , add8u1i1_c1 } )
	2'b10 :
		add8u1i1 = 8'hff ;	// line#=../../sobel.c:82
	2'b01 :
		add8u1i1 = sumX1_t1 [7:0] ;
	default :
		add8u1i1 = 8'hx ;
	endcase
	end
always @ ( sumY1_t1 or C_01 )	// line#=../../sobel.c:85,87
	begin
	add8u1i2_c1 = ~C_01 ;
	case ( { C_01 , add8u1i2_c1 } )
	2'b10 :
		add8u1i2 = 8'hff ;	// line#=../../sobel.c:85
	2'b01 :
		add8u1i2 = sumY1_t1 [7:0] ;
	default :
		add8u1i2 = 8'hx ;
	endcase
	end
always @ ( add8u1ot )	// line#=../../sobel.c:87,89
	begin
	SUM2_t_c1 = ~add8u1ot [8] ;	// line#=../../sobel.c:87
	case ( { add8u1ot [8] , SUM2_t_c1 } )
	2'b10 :
		SUM2_t = 8'hff ;	// line#=../../sobel.c:89
	2'b01 :
		SUM2_t = add8u1ot [7:0] ;	// line#=../../sobel.c:87
	default :
		SUM2_t = 8'hx ;
	endcase
	end
always @ ( posedge CLOCK or posedge RESET )	// line#=../../sobel.c:92,93
	if ( RESET )
		sobel_ret_r <= 8'h00 ;
	else
		sobel_ret_r <= ~SUM2_t ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../sobel.c:63
	if ( RESET )
		RG_line_buffer_2 <= 8'h00 ;
	else
		RG_line_buffer_2 <= input_row_a02 ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../sobel.c:63
	if ( RESET )
		RG_line_buffer_1 <= 8'h00 ;
	else
		RG_line_buffer_1 <= input_row_a01 ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../sobel.c:63
	if ( RESET )
		RG_line_buffer <= 8'h00 ;
	else
		RG_line_buffer <= input_row_a00 ;
assign	add12s_111i1 = add12s_11_11_11ot ;	// line#=../../sobel.c:74
assign	add12s_111i2 = sub12u_10_101ot ;	// line#=../../sobel.c:74
assign	add8u_91i1 = RG_line_buffer ;	// line#=../../sobel.c:57,75
assign	add8u_91i2 = input_row_a00 [7:1] ;	// line#=../../sobel.c:57,75
assign	sub12s_111i1 = add12s_11_111ot ;	// line#=../../sobel.c:75
assign	sub12s_111i2 = { 1'h0 , add12u_101ot } ;	// line#=../../sobel.c:75
assign	sub8u1i1 = RG_line_buffer ;	// line#=../../sobel.c:57,75
assign	sub8u1i2 = input_row_a02 ;	// line#=../../sobel.c:75
assign	add12s_11_111i1 = sub8u1ot ;	// line#=../../sobel.c:75
assign	add12s_11_111i2 = { 1'h0 , add8u_91ot , input_row_a00 [0] } ;	// line#=../../sobel.c:57,75
assign	add12u_101i1 = { RG_line_buffer_2 , 1'h0 } ;	// line#=../../sobel.c:57,75
assign	add12u_101i2 = RG_line_buffer_2 ;	// line#=../../sobel.c:57,75
assign	sub8u2i1 = input_row_a02 ;	// line#=../../sobel.c:74
assign	sub8u2i2 = RG_line_buffer ;	// line#=../../sobel.c:57,74
assign	sub12u_101i1 = { input_row_a01 , 1'h0 } ;	// line#=../../sobel.c:74
assign	sub12u_101i2 = RG_line_buffer_2 ;	// line#=../../sobel.c:57,74
assign	add12s_11_11_11i1 = sub8u2ot ;	// line#=../../sobel.c:74
assign	add12s_11_11_11i2 = sub12u_101ot ;	// line#=../../sobel.c:74
assign	sub12u_10_101i1 = input_row_a00 ;	// line#=../../sobel.c:74
assign	sub12u_10_101i2 = { RG_line_buffer_1 , 1'h0 } ;	// line#=../../sobel.c:57,74

endmodule

module sobel_sub12s_11_10 ( i1 ,i2 ,o1 );
input	[1:0]	i1 ;
input	[10:0]	i2 ;
output	[9:0]	o1 ;

assign	o1 = ( { { 8{ i1 [1] } } , i1 } - i2 ) ;

endmodule

module sobel_sub12u_10_10 ( i1 ,i2 ,o1 );
input	[7:0]	i1 ;
input	[8:0]	i2 ;
output	[9:0]	o1 ;

assign	o1 = ( { 2'h0 , i1 } - { 1'h0 , i2 } ) ;

endmodule

module sobel_add12s_11_11_1 ( i1 ,i2 ,o1 );
input	[8:0]	i1 ;
input	[9:0]	i2 ;
output	[10:0]	o1 ;

assign	o1 = ( { { 2{ i1 [8] } } , i1 } + { { 1{ i2 [9] } } , i2 } ) ;

endmodule

module sobel_add12s_11_11 ( i1 ,i2 ,o1 );
input	[8:0]	i1 ;
input	[10:0]	i2 ;
output	[10:0]	o1 ;

assign	o1 = ( { { 2{ i1 [8] } } , i1 } + i2 ) ;

endmodule

module sobel_add8u_9 ( i1 ,i2 ,o1 );
input	[7:0]	i1 ;
input	[6:0]	i2 ;
output	[8:0]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 2'h0 , i2 } ) ;

endmodule

module sobel_sub12s_11 ( i1 ,i2 ,o1 );
input	[10:0]	i1 ;
input	[10:0]	i2 ;
output	[10:0]	o1 ;

assign	o1 = ( i1 - i2 ) ;

endmodule

module sobel_sub12u_10 ( i1 ,i2 ,o1 );
input	[8:0]	i1 ;
input	[7:0]	i2 ;
output	[9:0]	o1 ;

assign	o1 = ( { 1'h0 , i1 } - { 2'h0 , i2 } ) ;

endmodule

module sobel_sub8u ( i1 ,i2 ,o1 );
input	[7:0]	i1 ;
input	[7:0]	i2 ;
output	[8:0]	o1 ;

assign	o1 = ( { 1'h0 , i1 } - { 1'h0 , i2 } ) ;

endmodule

module sobel_add12s_11 ( i1 ,i2 ,o1 );
input	[10:0]	i1 ;
input	[9:0]	i2 ;
output	[10:0]	o1 ;

assign	o1 = ( i1 + { { 1{ i2 [9] } } , i2 } ) ;

endmodule

module sobel_add12u_10 ( i1 ,i2 ,o1 );
input	[8:0]	i1 ;
input	[7:0]	i2 ;
output	[9:0]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 2'h0 , i2 } ) ;

endmodule

module sobel_add8u ( i1 ,i2 ,o1 );
input	[7:0]	i1 ;
input	[7:0]	i2 ;
output	[8:0]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + { 1'h0 , i2 } ) ;

endmodule