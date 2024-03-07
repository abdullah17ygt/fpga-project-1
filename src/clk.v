module clk(
input clk,
output reg slow =0, fast=0  );
reg [27:0]counter=0,counter1=0;
    
    always@ (posedge clk) begin
    counter <= counter +1;
    if (counter == 2) begin 
        slow <= !slow;
        counter <= 0;      
    end
	 counter1<=counter1+1;
	 
	 if(counter1 == 1)begin
	 fast<=!fast;
	 counter1<=0;
	 
	 end
end
endmodule
