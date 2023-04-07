module mux(in1,in2,sel,out);

input in1;
input in2;
input sel;
output reg out;
always @(*) 
begin
    if(sel)
    out<=in1;
    else
    out<=in2;
end
endmodule