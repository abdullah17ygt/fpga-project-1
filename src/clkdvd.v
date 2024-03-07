module clkdvd (

  
  input  clk,  
  input [1:0] x,
 
  output reg out
  
  
);

reg a,b,c,d;

reg [3:0]y=0,y1=0,y2=0,y3=0 ;


  always@ (*) begin
  
  case(x)
  
  2'b00:   out=a;
  2'b01:   out=b;
  2'b11:   out=c;
  2'b10:   out=d;
  
  endcase
  
  end
  

   
  always @ (posedge clk) begin
   y <= y+1;
   if ((y %2)==1) begin
    a  = 1;
   end 
   else begin
    a = 0;
   end
 end
   
 always @ (posedge a) begin
   y1 <= y1+1;
   if ((y %4)==1)  begin
    b = 1;
   end else begin
    b = 0;
   end
  end
 
  always @ (posedge b) begin
   y2 <= y2+1;
   if ((y %8)==1)  begin
    c = 1;
   end else begin
    c = 0;
   end
 end
 always @ (posedge c) begin
   y3 <= y3+1;
   if ((y %16)==1)  begin
    d = 1;
   end else begin
    d = 0;
   end
 end
 
 


 

	



endmodule	
	
