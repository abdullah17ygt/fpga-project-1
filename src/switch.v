module switch ( 
  input clk,rst,z,y,
  output reg [3:0] out=4'b0000
);


wire sclt,slow,fast,counter;

clk dut (.slow(slow), .fast(fast),.clk(clk));
assign sclt = z? fast: slow;


always@ (posedge sclt) begin
if (y) begin
    out = out + 1; 
    
        
   end

else begin
   out <= out - 1; 
   
      
  end
end




 
endmodule



