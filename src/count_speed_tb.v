module count_speed_tb();
reg clk=0 , rst; 
wire [7:0]out;
reg x;

count_speed dut (.clk(clk), .rst(rst), .x(x), .out(out));


always begin 
clk= #5!clk;
end
 initial begin
 rst =1;
 
 x=0;
 #20;
 rst=0;
 #200
 x = 1;
 end
 

   
endmodule
