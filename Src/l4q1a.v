module glmsd (output op, input ip, clk,rst);
wire [5:0] df;
wire temp;
dff2 d0 (df[0],ip,clk,rst);
dff2 d1 (df[1],df[0],clk,rst);
dff2 d2 (df[2],df[1],clk,rst);
dff2 d3 (df[3],df[2],clk,rst);
dff2 d4 (df[4],df[3],clk,rst);
dff2 d5 (df[5],df[4],clk,rst);
assign temp=(ip)&(df[0])&(~df[1])&(~df[2])&(df[3])&(~df[4])&(df[5]);
dff2 d6 (op,temp,clk,rst);
endmodule


module glmsdno (output op, input ip, clk,rst);
wire [5:0] df;
wire temp;
wire tr;
assign tr=op;
dff2 d0 (df[0],ip,clk,rst);
dff2 d1 (df[1],df[0],clk,(rst+tr));
dff2 d2 (df[2],df[1],clk,(rst+tr));
dff2 d3 (df[3],df[2],clk,(rst+tr));
dff2 d4 (df[4],df[3],clk,(rst+tr));
dff2 d5 (df[5],df[4],clk,(rst+tr));
assign temp=(ip)&(df[0])&(~df[1])&(~df[2])&(df[3])&(~df[4])&(df[5]);
dff2 d6 (op,temp,clk,rst);
endmodule