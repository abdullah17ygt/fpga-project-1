module count_speed ( 
  
  input clk, rst, x,
   output reg [7:0]out
);
 wire slow_clk,slct_clk;
clkdvd divider(.out(slow_clk),.x(2'b01),.clk(clk));

 assign slct_clk= x? clk: slow_clk;
 
 
always @(posedge slct_clk) begin
    if (rst) begin 
      out <= 8'b0;   
    end else begin
	 out <= out + 1;
  end
  end
   
    
    
endmodule
