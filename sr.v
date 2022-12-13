module sr(q,qbar,clk,s,r); 
input s,clk,r; 
output reg q, qbar; 
always@(posedge clk) 
begin
if(s==1)
begin
q=1;
qbar=~q;
end
else if(r==1)
begin
q=0;
qbar=~q;
end
else if(s==0 & r==0)
begin
q<=q;
qbar<=~q;
end
end 
endmodule
