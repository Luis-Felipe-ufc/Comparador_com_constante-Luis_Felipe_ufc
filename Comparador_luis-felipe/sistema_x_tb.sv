module sistema_x_tb;
  logic a,b,c,d;
  logic Q;
  
  // instantiating the module to map connections
  sistema_x comp( .a(a), .b(b), .c(c), .d(d), .Q(Q) );
  
 initial begin
  integer i;
  for (i = 0; i < 16; i = i + 1) begin
    {a, b, c, d} = i;  
    #5;                    
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
