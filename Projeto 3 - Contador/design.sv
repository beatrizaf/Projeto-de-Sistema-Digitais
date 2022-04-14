module counter(reset, clk, UD, load, entrada, out); 
   input  reset, clk, UD, load;
   input  [3:0] entrada;
   output bit [3:0] out;

  always @(posedge clk or negedge reset) begin
    
    if (!reset)
       out <= 0;
    
    else if (load)
       out <= entrada;
    
    else  
       case (UD)
          1: out <= out + 1;
          0: out <= out - 1;
       endcase 
  end
  
endmodule
