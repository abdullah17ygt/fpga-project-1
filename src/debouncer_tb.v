module debouncer_tb();

reg clk =0,din, rst=0;
wire dout,dout1,dout2;


debouncer dut (.clk(clk), .rst(rst), .din(din),.dout(dout),.dout1(dout1),.dout2(dout2));

always begin
    clk= ~clk;
    #5;
end
initial begin
din=1;
#50;
din=0;
#50;


end








endmodule