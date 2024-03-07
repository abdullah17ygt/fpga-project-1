module updowncounter( 
  input clk,rst,a,
  output reg [3:0] out=4'b0000
);
 reg x=1;
 wire slow_clk,fast,slct;
clk dut (.slow(slow_clk),.clk(clk),.fast(fast));

assign slct = a? fast:slow_clk ;

always @(posedge slct) begin

/*if(rst)
out<=0;*/

      if (x) begin
       out = out + 1;   
        if(out == 15)begin
           x = !x;           
          end
       end
   else begin
   
      out = out - 1;
      if(out == 0)begin

        x = !x;
        
         end
      end
end

 
endmodule