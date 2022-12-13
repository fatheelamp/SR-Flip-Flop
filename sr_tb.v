module sr_tb;
reg s,clk,r;
wire q, qbar;
//sr srff(.q(q),.qbar(qbar),.s(s),.r(r),.clk(clk));
sr srff(q,qbar,clk,s,r); 
initial begin 
clk = 0;
forever #1 clk=~clk;
end

initial 
begin
s=0;   r=1;
#10 s=0;r=0;
#10 s=1;r=0;
#10 s=1;r=1;
#10 $finish;
end

initial begin
$monitor("simtime=%t | s=%d |r=%d |clk=%d|q=%d|qbar=%d",$time,s,r,clk,q,qbar);

$dumpfile("srff.vcd");
$dumpvars();
end
endmodule
