/*
CLK ʱ���ź�
CLR �첽����
pause ��ͣ��
MSH,MSL �ٷ���ĸ�λ�͵�λ
SH,SL ��ĸ�λ�͵�λ
MH,ML �����źŵĸ�λ�͵�λ*/
module timer(clk,clr,pause,msh,msl,sh,sl,mh,ml);
input clk,clr,pause;
output  [3:0] msh,msl,sh,sl,mh,ml;
reg [3:0] msh,msl,sh,sl,mh,ml;
reg cn1,cn2;   //cn1Ϊ�ٷ�������Ľ�λ��cn2Ϊ����ֵĽ�λ
always @(negedge clk or posedge clr) 
begin
    if (clr) 
    begin
        
    {msh,msl}<=8'h00;
    cn1<=0;
    end
    else if(!pause)
    begin
        if(msl==9)
        begin
            msl<=0;
        if(msh==9)
        begin
            msh<=0;
            cn1<=1;
        end 
        else
            msh<=msh+1;
        end 
    else
    begin
        msl<=msl+1;
        cn1<=0;
    end  
    end    
end
always @(posedge cn1 or posedge clr)
 begin
    if (clr)
    begin 
    {sh,sl}<=8'h00;
    cn2<=0;
    end 
    else if (sl==9)
    begin
    sl<=0;
    if (sh==5)
    begin
        sh<=0;
        cn2<=1;
    end
    else
    sh<=sh+1;
end
else 
begin
    sl<=sl+1;
    cn2<=0;
end
 end
always@(posedge cn2 or posedge clr)
begin
    if(clr)
    begin
        {mh,ml}<=8'h00;
    end 
    else if (ml==9)
    begin
        ml<=0;
        if(mh==5)
        mh<=0;
        else
        mh<=mh+1;
    end 
    else
    ml<=ml+1;
end 
endmodule