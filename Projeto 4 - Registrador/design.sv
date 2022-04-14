module register(cp1, cp2, p0, p1, p2, p3, p4, p5, p6, p7, pl, ds, saida, QB);
  input  cp1, cp2, p0, p1, p2, p3, p4, p5, p6, p7, pl, ds;
  output reg saida, QB;
  
  bit [7:0] temp;
  
  assign QB = ~ saida;
    
  always @(pl or posedge cp1 or posedge cp2) begin
    
    if (pl) begin
      
      if ((!cp1 & cp2) | (cp1 & !cp2)) begin
          temp <= temp >> 1;
          temp[7] <= ds;
          saida = temp[7];
      end
      
    end
    
    else begin
      temp[0] = p7;
      temp[1] = p6;
      temp[2] = p5;
      temp[3] = p4;
      temp[4] = p3;
      temp[5] = p2;
      temp[6] = p1;
      temp[7] = p0;
      saida = temp[7]; 
    end
    
  end
endmodule
