module start_stop_tb();

reg clk =0, rst=0,button,start_stop,switch;
wire [3:0] out;

start_stop dut (.clk(clk), .button(button), .out(out),.start_stop(start_stop),.switch(switch),.rst(rst));

always begin
    clk= ~clk;
    #5;
end

initial begin
switch=1;
rst=1;
#100;
start_stop=1;
#100;
start_stop=0;
#2;
start_stop=1;
#100;
  button=1 ;
  #50;
  button=0;
  #2;
  button=1;
  #50;
  
  
  
end    

endmodule