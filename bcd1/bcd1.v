module bcd1 (clk, reset, x, bcd1_out);
  input clk, reset, x;
  output [3:0] bcd1_out;

  reg [3:0] count_reg;    // 4-bit レジスタ

  assign bcd1_out = count_reg;

  always @(posedge clk or negedge reset) begin
    if (reset == 1'b0) begin
      /*** レジスタの初期値設定 ***/
      ............
    end else begin
      if ( ............ ) begin  // x が 1'b1 のきカウンタが動く
        if ( ............ ) begin  // 「ある条件でカウンタの値を 0 に戻す」 or 「カウントアップ」
          /*** カウンタの値を 0 に ***/
          ............
        end else begin
          /*** カウントアップ ***/
          ............
        end  // END: if ( ) begin  // 「ある条件でカウンタの値を 0 に戻す」 or 「カウントアップ」
      end  // END: if ( ) begin  // x が 1'b1 のきカウンタが動く
    end  // END: if (reset == 1'b0) begin
  end  // END: always @(posedge clk or negedge reset) begin
endmodule // bcd1
