module Inverse_MixColumns(Imc_in, Imc_out);

input [127:0] Imc_in;
output [127:0] Imc_out;

assign Imc_out[127:120] = Imc_func(Imc_in[127:120], Imc_in[119:112], Imc_in[111:104], Imc_in[103:96]);
assign Imc_out[119:112] = Imc_func(Imc_in[119:112], Imc_in[111:104], Imc_in[103:96], Imc_in[127:120]);
assign Imc_out[111:104] = Imc_func(Imc_in[111:104], Imc_in[103:96], Imc_in[127:120], Imc_in[119:112]);
assign Imc_out[103:96] = Imc_func(Imc_in[103:96], Imc_in[127:120], Imc_in[119:112], Imc_in[111:104]);

assign Imc_out[95:88] = Imc_func(Imc_in[95:88], Imc_in[87:80], Imc_in[79:72], Imc_in[71:64]);
assign Imc_out[87:80] = Imc_func(Imc_in[87:80], Imc_in[79:72], Imc_in[71:64], Imc_in[95:88]);
assign Imc_out[79:72] = Imc_func(Imc_in[79:72], Imc_in[71:64], Imc_in[95:88], Imc_in[87:80]);
assign Imc_out[71:64] = Imc_func(Imc_in[71:64], Imc_in[95:88], Imc_in[87:80], Imc_in[79:72]);

assign Imc_out[63:56] = Imc_func(Imc_in[63:56], Imc_in[55:48], Imc_in[47:40], Imc_in[39:32]);
assign Imc_out[55:48] = Imc_func(Imc_in[55:48], Imc_in[47:40], Imc_in[39:32], Imc_in[63:56]);
assign Imc_out[47:40] = Imc_func(Imc_in[47:40], Imc_in[39:32], Imc_in[63:56], Imc_in[55:48]);
assign Imc_out[39:32] = Imc_func(Imc_in[39:32], Imc_in[63:56], Imc_in[55:48], Imc_in[47:40]);

assign Imc_out[31:24] = Imc_func(Imc_in[31:24], Imc_in[23:16], Imc_in[15:8], Imc_in[7:0]);
assign Imc_out[23:16] = Imc_func(Imc_in[23:16], Imc_in[15:8], Imc_in[7:0], Imc_in[31:24]);
assign Imc_out[15:8] = Imc_func(Imc_in[15:8], Imc_in[7:0], Imc_in[31:24], Imc_in[23:16]);
assign Imc_out[7:0] = Imc_func(Imc_in[7:0], Imc_in[31:24], Imc_in[23:16], Imc_in[15:8]);


function [7:0] Imc_func;

input [7:0] ip1, ip2, ip3, ip4;

  begin
  
    Imc_func[7] = (8'h0E * ip1) ^ (8'h0B * ip2) ^ (8'h0D * ip3) ^ (8'h09 * ip4);
    Imc_func[6] = (8'h09 * ip1) ^ (8'h0E * ip2) ^ (8'h0B * ip3) ^ (8'h0D * ip4);
    Imc_func[5] = (8'h0D * ip1) ^ (8'h09 * ip2) ^ (8'h0E * ip3) ^ (8'h0B * ip4);
    Imc_func[4] = (8'h0B * ip1) ^ (8'h0D * ip2) ^ (8'h09 * ip3) ^ (8'h0E * ip4);
    Imc_func[3] = (8'h0E * ip1) ^ (8'h0B * ip2) ^ (8'h0D * ip3) ^ (8'h09 * ip4);
    Imc_func[2] = (8'h09 * ip1) ^ (8'h0E * ip2) ^ (8'h0B * ip3) ^ (8'h0D * ip4);
    Imc_func[1] = (8'h0D * ip1) ^ (8'h09 * ip2) ^ (8'h0E * ip3) ^ (8'h0B * ip4);
    Imc_func[0] = (8'h0B * ip1) ^ (8'h0D * ip2) ^ (8'h09 * ip3) ^ (8'h0E * ip4);
	 
  end
  
endfunction

endmodule
