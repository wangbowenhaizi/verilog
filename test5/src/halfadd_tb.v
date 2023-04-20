`timescale 1ns/1ns
module halfadd_tb();
reg [3:0] in1,in2;
wire sum,cout;
initial
 begin
    in1<=4'b0000;
    in2<=4'b0000;

    #100 in1<=4'b0001; 
         in2<=4'b0001;
     #100 in1<=4'b0010; 
         in2<=4'b0010;
     #100 in1<=4'b0100; 
          in2<=4'b0100;
     #100 in1<=4'b1000; 
          in2<=4'b1000;
end
halfadd halfadd_inst(in1,in2,sum,cout);
    initial
    begin
    $dumpfile("wave.vcd");
    $dumpvars(0,halfadd_tb);
    #1000 $finish; 
    end 


endmodule
