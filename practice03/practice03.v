//	==================================================
module  mux2to1_cond(	out,
						in0,
						in1,
						sel);

output			out				;
input			in0				;
input			in1				;
input			sel				;

assign	out = (sel)? in1 : in0	;

endmodule

//	==================================================
module  mux2to1_if(		out,
						in0,
						in1,
						sel);

output			out				;
input			in0				;
input			in1				;
input			sel				;

reg				out				;

// always @(in0 or in1 or sel)
// always @(in0 , in1 , sel)
always @(*) begin
	if(sel == 1'b0) begin
		out = in0	;
	end else begin
		out = in1	;
	end
end

endmodule

//	==================================================
module  mux2to1_case(	out,
						in0,
						in1,
						sel);

output			out				;
input			in0				;
input			in1				;
input			sel				;



endmodule

//	==================================================
module  mux4to1_inst(	out,
						in0,
						in1,
						in2,
						in3,
						sel);

output			out				;
input			in0				;
input			in1				;
input	[1:0]	sel				;



endmodule

//	==================================================
module  mux4to1_if(		out,
						in0,
						in1,
						in2,
						in3,
						sel);

output			out				;
input			in0				;
input			in1				;
input	[1:0]	sel				;



endmodule

//	==================================================
module  mux4to1_case(	out,
						in0,
						in1,
						in2,
						in3,
						sel);

output			out				;
input			in0				;
input			in1				;
input	[1:0]	sel				;



endmodule
