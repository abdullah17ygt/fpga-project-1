module button_tb();

reg clk =0, rst=0,button,switch;
wire [3:0] out;

button dut (.clk(clk), .button(button), .out(out),.switch(switch));

always begin
    clk= ~clk;
    #5;
end

initial begin
rst=1;
#100;
switch=1;
  button=1 ;
  #50;
  button=0;
  #2;
  button=1;
  #50;
  rst=1;
  #50;
  rst=0;
  
  
end    

endmodule