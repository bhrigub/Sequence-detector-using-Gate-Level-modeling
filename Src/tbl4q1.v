module tb();
wire top1,top2;
reg tip,trst;
reg tclk=0;

glmsd t1 (top1,tip,tclk,trst);
glmsdno t2 (top2, tip, tclk,trst);
always 
begin
  tclk=~tclk; #5;
end
initial
begin
trst=1; tip=1; #10
trst=0; #10  
tip=1; #10 
tip=0; #10 
tip=1; #10 
tip=0; #10 
tip=0; #10 
tip=1; #10 
tip=1; #10 
tip=1; #10 
repeat (50) 
begin 
tip=$random; #10;
end
end
endmodule