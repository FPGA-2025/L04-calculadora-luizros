module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

  wire [7:0] soma     = entrada_A + entrada_B;
  wire [7:0] subtracao = entrada_A - entrada_B;

  assign saida =
    (codigo == 3'b001) ? entrada_A :
    (codigo == 3'b010) ? entrada_B :
    (codigo == 3'b011) ? soma      :
    (codigo == 3'b100) ? subtracao :
                         8'b00000000; 

endmodule
