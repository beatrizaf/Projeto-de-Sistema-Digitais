module  MUX(E0, E1, E2, E3, E4, E5, E6, E7, Sinal, Saida);
    input  bit [7:0] E0, E1, E2, E3, E4, E5, E6, E7;
    input  bit [2:0] Sinal;
    output bit [7:0] Saida;
 
  	always @(E0 or E1 or E2 or E3 or E4 or E5 or E6 or E7 or Sinal) begin
      
      if (Sinal == 3'b000) begin
         Saida <= E0;
      end else if (Sinal == 3'b001) begin
         Saida <= E1;
      end else if (Sinal == 3'b010) begin
         Saida <= E2;
      end else if (Sinal == 3'b011) begin
         Saida <= E3;
      end else if (Sinal == 3'b100) begin
         Saida <= E4;
      end else if (Sinal == 3'b101) begin
         Saida <= E5;
      end else if (Sinal == 3'b110) begin
         Saida <= E6;
      end else if (Sinal == 3'b111) begin
         Saida <= E7;
      end
      
	end
endmodule: MUX
