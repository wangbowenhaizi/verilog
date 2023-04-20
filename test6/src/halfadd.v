module halfadd(in1,in2,sum,cout);
input  in1,in2;
output wire cout;
output wire sum;
assign {cout,sum}=in1+in2;
endmodule