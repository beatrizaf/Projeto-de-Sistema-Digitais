// Code your design here
module somador(A, B, Soma, FLAG);
  input  byte A, B;
  output byte Soma;
  output bit  FLAG;
  
  always_comb begin
    Soma = A + B;
    
    if (A < 0 && B < 0 && Soma < 0)
        FLAG = 1;
    else 
        FLAG = 0;
    
    if (A >= 0 && B >= 0 && Soma <= 0)
        FLAG = 0;
    else 
        FLAG = 1;
    
  end
endmodule: somador
