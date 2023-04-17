module AES_Decryption(data_in, key_in, data_out);

input [127:0] data_in, key_in;
output [127:0] data_out;

wire [127:0] ro0, ro1, ro2, ro3, ro4, ro5, ro6, ro7, ro8, ro9; 
wire [127:0] ko0, ko1, ko2, ko3, ko4, ko5, ko6, ko7, ko8;

assign ro0 = data_in ^ key_in;

Mid_Round r1(4'b0000, ro0, key_in, ko0, ro1);
Mid_Round r2(4'b0001, ro1, ko0, ko1, ro2);
Mid_Round r3(4'b0010, ro2, ko1, ko2, ro3);
Mid_Round r4(4'b0011, ro3, ko2, ko3, ro4);

Mid_Round r5(4'b0100, ro4, ko3, ko4, ro5);
Mid_Round r6(4'b0101, ro5, ko4, ko5, ro6);
Mid_Round r7(4'b0110, ro6, ko5, ko6, ro7);
Mid_Round r8(4'b0111, ro7, ko6, ko7, ro8);

Mid_Round r9(4'b1000, ro8, ko7, ko8, ro9);
Round_last r10(4'b1001, ro9, ko8, data_out);

endmodule