`timescale 1ns/1ns
//`include "select.v"
module tb_mux();
reg in1;
reg in2;
reg sel;
wire out;
initial 
begin
    in1<=1'b0;
    in2<=1'b1;
    sel<=1'b0;
end
always #10 in1 <={$random}%2;
always #10 in2 <={$random}%2;
always #10 sel <={$random}%2;
mux mux_test(.out(out),.in1(in2),.in2(in3),.sel(sel));
initial
begin
    $timeformat(-9,0,"ns",6);
    $monitor($time,":in1=%b in2=%b se1=%b out=%b",in1,in2,sel,out);
    #1000 $finish;
end
initial
begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_mux);
    #1000 $finish;    
end
endmodule