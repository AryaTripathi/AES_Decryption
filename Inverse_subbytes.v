module Inverse_subbytes(sb_in, sb_out);

input [127:0] sb_in;
output [127:0] sb_out;

     Inverse_sbox s0(sb_in[127:120], sb_out[127:120]);
     Inverse_sbox s1(sb_in[119:112], sb_out[119:112]);
     Inverse_sbox s2(sb_in[111:104], sb_out[111:104]);
     Inverse_sbox s3(sb_in[103:96], sb_out[103:96]);
     
     Inverse_sbox s4(sb_in[95:88], sb_out[95:88]);
     Inverse_sbox s5(sb_in[87:80], sb_out[87:80]);
     Inverse_sbox s6(sb_in[79:72], sb_out[79:72]);
     Inverse_sbox s7(sb_in[71:64], sb_out[71:64]);
     
     Inverse_sbox s8(sb_in[63:56], sb_out[63:56]);
     Inverse_sbox s9(sb_in[55:48], sb_out[55:48]);
     Inverse_sbox s10(sb_in[47:40], sb_out[47:40]);
     Inverse_sbox s11(sb_in[39:32], sb_out[39:32]);
     
     Inverse_sbox s12(sb_in[31:24], sb_out[31:24]);
     Inverse_sbox s13(sb_in[23:16], sb_out[23:16]);
     Inverse_sbox s14(sb_in[15:8], sb_out[15:8]);
     Inverse_sbox s16(sb_in[7:0], sb_out[7:0]);
	  
endmodule