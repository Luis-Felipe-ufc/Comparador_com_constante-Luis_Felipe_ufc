`timescale 1ns/10ps
module sistema_x (Q, d, c, b, a);
  input logic a, b, c, d;
  output logic Q;
  logic [3:0] X, B;
  
  wire w1, w2, w3, w4;
  
  assign X = {a, b, c, d};
  assign B = 4'b0101;
  
  XNOR2X1HVT XNOR2_BIT_3( .A(X[3]), .B(B[3]), .Y(w1));
  XNOR2X1HVT XNOR2_BIT_2( .A(X[2]), .B(B[2]), .Y(w2));
  XNOR2X1HVT XNOR2_BIT_1( .A(X[1]), .B(B[1]), .Y(w3));
  XNOR2X1HVT XNOR2_BIT_0( .A(X[0]), .B(B[0]), .Y(w4));
  AND4X1HVT AND4( .A(w1), .B(w2), .C(w3), .D(w4), .Y(Q));
  
endmodule
