module updowncounter_tb;

reg clk = 0, rst=1 ,a;
wire [3:0] out;

updowncounter dut (.clk(clk),.a(a), .rst(rst), .out(out));

always begin
    clk= ~clk;
    #5;
end

initial begin
    #10;
    rst = 0;
   a=1;
   #800;
   a=0;
    #500;
   
  
    
    end

endmodule