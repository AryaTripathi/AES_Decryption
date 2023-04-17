module Mid_Round(rc, data_in, key_in, key_out, data_out);

input [3:0] rc;
input [127:0] key_in, data_in;
output [127:0] key_out, data_out;

wire [127:0] sb, sr, m_c;

Key_Gen kg1(rc, key_in, key_out);
Inverse_MixColumns mc1(data_in, sb);
shift_row sr1(sb, sr);
Inverse_subbytes sb1(sr, m_c);

assign data_out = key_out ^ m_c;

endmodule
