
module tb;

reg		d	;
reg		clk	;

initial	clk = 1'b0;
always	#20	clk	= ~clk;

wire	q1	;
wire	q2	;

block		dut0(	.q		(	q1		),
					.d		(	d		),
					.clk	(	clk		));

nonblock	dut1(	.q		(	q2		),
					.d		(	d		),
					.clk	(	clk		));

initial	begin
	#0		d = 1'b0	;
	#50		d = 1'b0	;
	#50		d = 1'b1	;
	#50		d = 1'b1	;
	#50		d = 1'b0	;
	#50		d = 1'b1	;
	#50		d = 1'b0	;
	#50		$finish		;
end

endmodule
