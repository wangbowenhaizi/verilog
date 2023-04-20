
module fulladd(in1,in2,cin,cout,sum);
//`include "halfadd.v";
input in1,in2,cin;
output cout,sum;
reg sum;
reg cout;
reg h0_sum;  //半加器0输出的sum信号
reg h0_cout;  //半加器0输出的进位信号
reg h1_cout;  //半加器1输出的进位信号

always @( *) 
begin
    halfadd(in1,in2,h0_cout,h0_sum);
     halfadd(h0_cout,cin,h1_cout,sum);
     cout = h0_cout|h1_cout;
end 

task halfadd;
input in3;
input in4;
output cout1;
output sum1;
 {cout1,sum1}=in3+in4;
endtask
    

/*or 
halfadd halfadd_inst(in1,in2,h0_sum,h0_cout);
halfadd halfadd_inst1(h0_sum,cin,h1_cout,cout);
assign cout = h0_cout|h1_cout; */  
endmodule
