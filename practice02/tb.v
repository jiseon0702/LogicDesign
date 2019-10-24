//	==================================================
//	Copyright (c) 2019 Sookmyung Women's University.
//	--------------------------------------------------
//	FILE 			: prj02.v
//	DEPARTMENT		: EE
//	AUTHOR			: WOONG CHOI
//	EMAIL			: woongchoi@sookmyung.ac.kr
//	--------------------------------------------------
//	RELEASE HISTORY
//	--------------------------------------------------
//	VERSION			DATE
//	0.0				2019-08-07
//	--------------------------------------------------
//	PURPOSE			: Dataflow, Behavior, Golden
//	==================================================

//module	tb_prj02		;
//// --------------------------------------------------
//// instances
//// --------------------------------------------------
//reg			a		;
//reg			b		;
//reg			ci		;
//
//wire		s1		;
//wire		co1		;
//
//wire		s2		;
//wire		co2		;
//
//wire		s3		;
//wire		co3		;
//
//fa_dataflow	dut_1(	.s	( s1	),
//					.co	( co1	),
//					.a	( a		),
//					.b	( b		),
//					.ci	( ci	));
//
//fa_behavior	dut_2(	.s	( s2	),
//					.co	( co2	),
//					.a	( a		),
//					.b	( b		),
//					.ci	( ci	));
//
//fa_case		dut_3(	.s	( s3	),
//					.co	( co3	),
//					.a	( a		),
//					.b	( b		),
//					.ci	( ci	));
//// --------------------------------------------------
//// stimulus
//// --------------------------------------------------
//initial begin
//	$display("Dataflow Level:	s1, co1");
//	$display("Behavioral Level:	s2, co2");
//	$display("Using 'case':		s3, co3");
//	$display("============================================================================");
//	$display("	ci	a	b	s1	co1	s2	co2	s3	co3");
//	$display("============================================================================");
//	#(50)	{ci, a, b} = 3'b_000;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	{ci, a, b} = 3'b_001;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	{ci, a, b} = 3'b_010;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	{ci, a, b} = 3'b_011;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	{ci, a, b} = 3'b_100;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	{ci, a, b} = 3'b_101;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	{ci, a, b} = 3'b_110;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	{ci, a, b} = 3'b_111;	#(50)	$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//	#(50)	$finish				;  
//end
//
//endmodule

module	tb2		;
// --------------------------------------------------
// instances
// --------------------------------------------------
reg		[3:0]	a		;
reg		[3:0]	b		;
reg				ci		;

wire	[3:0]	s1		;
wire			co1		;

wire	[3:0]	s2		;
wire			co2		;


fa4_inst	dut_1(	.s	( s1	),
					.co	( co1	),
					.a	( a		),
					.b	( b		),
					.ci	( ci	));

fa4_mbit	dut_2(	.s	( s2	),
					.co	( co2	),
					.a	( a		),
					.b	( b		),
					.ci	( ci	));

// --------------------------------------------------
// stimulus
// --------------------------------------------------
initial begin
	$display("Using Instances:	s1, co1");
	$display("Using Multi-bit:	s2, co2");
	$display("============================================================================");
	$display("	ci	a	b	s1	co1	s2	co2");
	$display("============================================================================");
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	{ci, a, b} = $random();	#(50)	$display("	%d\t%d\t%d\t%d\t%d\t%d\t%d", ci, a, b, s1, co1, s2, co2);
	#(50)	$finish;  
end

endmodule


//// --------------------------------------------------
//// stimulus - w/ clock
//// --------------------------------------------------
//parameter	tCLK = 10	;
//reg			CLK			;
//
//initial		CLK = 1'b1	;
//
//always begin
//#(0.5*tCLK)
//			CLK = ~CLK	;
//end
//
//integer		i  		;
//
//always begin
//	$display("============================================================================");
//	$display("	ci	a	b	s1	co1	s2	co2	s3	co3");
//	$display("============================================================================");
//	for	(i = 0; i < 8; i = i+1) begin
//		@(posedge CLK) begin
//			{ci, a, b} = i	;
//			#(0.1*tCLK)		;
//			$display("	%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", ci, a, b, s1, co1, s2, co2, s3, co3);
//		end
//	end
//	#(tCLK)	$finish	;
//end
//
//endmodule
