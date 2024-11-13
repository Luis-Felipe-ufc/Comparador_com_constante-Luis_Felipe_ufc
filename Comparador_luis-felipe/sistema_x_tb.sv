module sistema_x_tb;
  logic a,b,c,d;
  logic Q;
  
  // instantiating the module to map connections
  sistema_x comp( .a(a), .b(b), .c(c), .d(d), .Q(Q) );
  
 initial begin
  integer i;
  for (i = 0; i < 16; i = i + 1) begin
    {a, b, c, d} = i;  // Atribui o valor binário de 'i' aos bits de I3, I2, I1 e I0
    #5;                    // Espera 5 unidades de tempo antes de passar para a próxima combinação
  end
end
  
   initial
    begin
      $display("                Tempo     Entradas LUT       Saídas");
      $display("                        a    b    c   d         Q");
      $display("                ====   ==================   =========");
      $monitor($time,"    %b    %b    %b    %b        %b",a, b, c, d, Q);
    end
  
endmodule
