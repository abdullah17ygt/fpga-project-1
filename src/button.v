module button (

  input clk,rst, button,switch, 
  output reg [3:0] out=4'b0

    );
  reg change=0,ns=0;
  wire slct,fast,slow,d_button_syc;
  
debouncer dut (.din(button),.clk(clk),.dfinal(d_button_syc));

clk dt(.clk(clk),.slow(slow),.fast(fast));

assign slct = switch? fast:slow;

always@ (posedge clk) begin
    
				ns <= d_button_syc;
				
        if(d_button_syc==1 && ns==0)begin
		  
            change<=!change;  
  end
        end
     
always@ (posedge slct, negedge rst) begin 
        if (~rst) begin
	 
             out <= 0;
        end
    else begin
        if (change) begin
            out <= out+1;
   
        end

        else begin
            out <= out-1;
      end
   end
 end


endmodule
