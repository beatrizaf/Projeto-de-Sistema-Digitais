module tb_counter;
  bit  Reset, Clk, UD, Load;
  bit  [3:0] Entrada;
  bit  [3:0] Out;             

  counter cont(.reset(Reset), .clk(Clk), .UD(UD), .load(Load), .entrada(Entrada), .out(Out));

  always #5 Clk = ~Clk;

  initial begin
    
     $dumpfile("dump.vcd");
     $dumpvars(1);
    
     $display("Inicio");
     $monitor("Time = %d, Reset = %d,  Load = %b, Entrada =%d, UP/Down = %b,  Contagem = %d", $time, Reset, Load, Entrada, UD, Out);
    
     Entrada = 9;
     Clk   = 1;
     Reset = 1;
     UD    = 1;
     Load  = 0; #10 
     Reset = 0; #06 
     Reset = 1; #05 
     Load  = 1; #35 
     #05 
     Load  = 0; #05 
     UD    = 0; #40 
     #05 
     UD    = 1; #100
     #05 
     Load  = 1; #20
     #05 
     Reset = 0; #10 
     #05 
     Load  = 0; #15 
     #05 
     Reset = 1; #05 
     UD    = 0; #50
     #05 
     UD    = 1; #150
      
     $display("Fim");
     $finish;
  end
  
endmodule
