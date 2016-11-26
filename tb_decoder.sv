`timescale 1ns / 1ns

module tb_decoder;
  logic [3:0] data;
  logic [6:0] out;

  decoder d(data, out);

    initial begin
        data = 4'd0;

        forever #10 data ++;
    end

  initial $monitor($stime,  data, out);
endmodule