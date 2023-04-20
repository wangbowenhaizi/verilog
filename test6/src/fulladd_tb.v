`timescale 10ns/1ns
//`include "fulladd.v"
module fulladd_tb;
output in1,in2,cin;
reg in1,in2,cin;
wire cout,sum;
initial
begin
    in1<=1'b0;
    in2<=1'b0;
    cin<=1'b0;
end
always #10 in1<={$random}%2;
always #10 in2<={$random}%2;
always #10 cin<={$random}%2;
fulladd fulladd_inst(in1,in2,cin,sum,cout);
initial
begin
    $dumpfile("wave.vcd");
    $dumpvars(0,fulladd_tb);
    #1000 $finish;
end
endmodule