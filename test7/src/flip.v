module flip(clk,rstn,key_in,led_out);
input clk,rstn,key_in;
output led_out;
reg led_out;
/*ͬ��ʱ���߼�
always @(posedge clk) 
begin
    if(!rstn)
     led_out<=1'b0;
    else 
     led_out<=key_in;
end
*/
//�첽ʱ���߼�
always @(posedge clk or negedge rstn) 
begin
    if(!rstn)
    begin
    led_out<=1'b0;
    end 
    else 
    led_out<=key_in;
end
 endmodule