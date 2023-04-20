`timescale 1ns/1ns
module flip_tb();
output clk,rstn;
output key_in;
reg clk,rstn;
reg key_in;
wire led_out;
initial
begin
    clk<=1'b1;
    rstn<=1'b0;
    key_in<=1'b0;
    #50 rstn<=1'b1;

end
    always #100 clk=~clk;
    always #120 rstn=~rstn;
    always #50 key_in<={$random}%2;
    flip flip_inst(clk,rstn,key_in,led_out);

initial
begin
    $dumpfile("wave.vcd");
    $dumpvars(0,flip_tb);
    #2000 $finish;
end
endmodule