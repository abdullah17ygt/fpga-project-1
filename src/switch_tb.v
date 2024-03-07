module switch_tb();

reg clk =0 , rst=0,z,y;
wire [3:0] out;

switch dut (.clk(clk), .z(z), .out(out),.y(y));

always begin
    clk= ~clk;
    #5;
end

initial begin
    
   z=1;
   #250;
   z=0;
   #250; 
    y=0;
    #250;
    y=1;
    #250;
        
    y=0;
    #250;
    y=1;
    #250;   
     y=0;
    #250;
    y=1;
    #250;
    rst=0;
    
  
end    











endmodule
