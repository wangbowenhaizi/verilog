module halfadd(in1,in2,sum,cout);
input [3:0] in1,in2;
output wire cout;
output wire [3:0] sum;
assign {cout,sum}=in1+in2;
endmodule