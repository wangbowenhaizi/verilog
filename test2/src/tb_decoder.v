`timescale 1ns/1ns
module tb_decoder();
    reg in1,in2,in3;
    wire [7:0] out;
    initial
    begin
    in1=1'b0; in2=1'b0; in3=1'b0;
    end
    always #10 in1<={$random}%2;
    always #10 in2<={$random}%2;
    always #10 in3<={$random}%2;
    initial
    begin
        $timeformat(-9,0,"ns",6);
        $monitor($time,":in1=%b in2=%b in3=%b out=%b",in1,in2,in3,out);
    end
    decoder3_8 decoder(.in1(in1),.in2(in2),.in3(in3),.out(out));
    initial
    begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb_decoder);
    #1000 $finish;    
    end
    endmodule