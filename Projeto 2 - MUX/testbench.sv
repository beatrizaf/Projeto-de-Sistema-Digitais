module MUX_TB;
 
  	bit [7:0] E0_tb, E1_tb, E2_tb, E3_tb, E4_tb, E5_tb, E6_tb, E7_tb;
    bit [2:0] Sinal_tb;
 	bit [7:0] Saida_tb;
 
  	MUX mux(.E0(E0_tb), .E1(E1_tb), .E2(E2_tb), .E3(E3_tb), .E4(E4_tb), .E5(E5_tb), .E6(E6_tb), .E7(E7_tb), .Sinal(Sinal_tb), .Saida(Saida_tb));
 
	initial begin
      
      $display("\n************* MUX *************");
      
      $monitor ("E0 = %d \nE1 = %d \nE2 = %d \nE3 = %d \nE4 = %d \nE5 = %d \nE6 = %d \nE7 = %d \nSinal = %b Saida = %d\n", E0_tb, E1_tb, E2_tb, E3_tb, E4_tb, E5_tb, E6_tb, E7_tb, Sinal_tb, Saida_tb);
            
      	E0_tb = 8'b00000000; 
        E1_tb = 8'b00000010; 
        E2_tb = 8'b00000010; 
        E3_tb = 8'b00000111; 
      	E4_tb = 8'b00000100; 
        E5_tb = 8'b00001000; 
        E6_tb = 8'b00001111; 
        E7_tb = 8'b01000000; 
      
      	Sinal_tb = 3'b101;#1
     
		$finish(); 
    end
endmodule
