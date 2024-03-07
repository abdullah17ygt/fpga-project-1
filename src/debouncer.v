module debouncer( 
input  clk,rst,
input  din,
output reg [7:0] dout,dout1,dout2

    );
always@(posedge clk or negedge rst)begin
    if(rst) begin
         dout<=8'b00; dout1<=8'b00; dout2<=8'b00; 
    end
    else begin
         dout<=din; dout1<=dout; dout2<=dout1; 
    end
 end
   
endmodule
