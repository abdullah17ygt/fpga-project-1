module start_stop (

  input clk,rst, button,switch, start_stop,
  output reg [3:0] out = 4'b0

    );
  reg change=0,ns=0,ss=0,start=0;
  wire slct,fast,slow,d_button_syc,start_stop_ayc;
  
debouncer dut (.din(button),.clk(clk),.dfinal(d_button_syc),.dstartstop(start_stop_syc),.dss(start_stop));
clk dt(.clk(clk),.slow(slow),.fast(fast));

assign slct = switch? fast:slow;
always@ (posedge clk) begin
    
				ns <= d_button_syc;
		if(d_button_syc==1 && ns == 0)begin
		  
            change<=!change;  
  end
        end
        
        always@ (posedge clk) begin
    
				ss <= start_stop_syc;
				
        if(start_stop_syc ==1 && ss == 0)begin
		  
            start<=!start;  
  end
        end
     
always@ (posedge slct, negedge rst) begin 


		if (~rst) begin
	 
			out <= 0;
		
            end
    else begin
        if (start) begin
            out<=out;
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
end

endmodule
