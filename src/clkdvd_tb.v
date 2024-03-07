`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2022 11:11:38
// Design Name: 
// Module Name: clkdvd_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clkdvd_tb;

reg clk=0 ,rst=1;
reg  [1:0]x;
wire  out;



clkdvd dut( .clk(clk),  .x(x), .out(out));


always begin
 clk = !clk;
 
 #5;
end 

 initial begin

 #50;
 rst=0;
x=2'b00;
#120;
x=2'b01;
#120;
x=2'b11;
#120;
x=2'b10;
#120;
 end
endmodule
