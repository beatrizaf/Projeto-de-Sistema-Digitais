// Code your testbench here
// or browse Examples

module tb_somador;
  byte A_tb, B_tb, Soma_tb;
  bit  Flag;
  
  somador duv(.A(A_tb), .B(B_tb), .Soma(Soma_tb), .FLAG(Flag));
  
  initial begin
    
    $monitor("%d + %d = %d   %d", A_tb, B_tb, Soma_tb, Flag);

    $display("    A    +     B    =   SOMA  | FLAG");
    
      A_tb = 8'b01001;       B_tb = 8'b0010;    #1
      A_tb = 8'b01111111;    B_tb = 8'b11101111;#1
      A_tb = 8'b10001;       B_tb = 8'b10000;   #1
      A_tb = -127;           B_tb = -2;         #1 //SOMA COM ERRO obs: corrigir
      A_tb = 101;            B_tb = 111;        #1 //SOMA COM ERRO

      $finish(); 
    
  end
endmodule
