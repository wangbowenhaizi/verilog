`timescale 1ns/1ns
module timer_tb();
wire [3:0] msh,msl,sh,sl,mh,ml;
//output clk,clr,pause;
reg clk,clr,pause;
initial 
begin
    clk=0;
    clr=1;
    pause=0;
    #10 
    clr=0;
end
    always #10 clk=~clk;
    timer time_test(clk,clr,pause,msh,msl,sh,sl,mh,ml);
    initial
    begin
     $dumpfile("wave.vcd");
    $dumpvars(0,timer_tb);
    #20000 $finish;
    end 
endmodule