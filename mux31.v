module mux31(in1, in2, in3, s, out);

input in1, in2, in3;
output out;
input [1:0] s;

reg out_wire;
reg out;

always@(*)
  begin
  	out= (s==2'b00)?in1:(s==2'b01)?in2:(s==2'b10)?in3:in3;
  end
endmodule

module main_tb;
	wire out;
	reg in1, in2, in3;
	reg [1:0] s;

	main m1(
	.in1 (in1),
	.in2 (in2),
	.in3 (in3),
	.out (out),
	.s (s)		
);
initial
begin
	in1 = 0; 
	in2 = 0; 
	in3 = 0;
	s = 2'b00; 
#1;
	in1 = 1; 
	in2 = 0; 
	in3 = 0;
	s = 2'b00; 
end 


initial
begin

$display("\t\tin1,\tin2,\tin3,\ts,\tout"); 
$monitor("%d,\t%b,\t%b,\t%b,\t%d, \t%b",$time, in1, in2, in3, s, out); 
end 
    
 
initial 

#100 $finish; 




endmodule
