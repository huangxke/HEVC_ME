module test_rdR_sel;
reg [3:0] rdR_sel;
reg [6:0] sub_area2_row_count;
reg clk;
initial begin
	clk = 1'b0;
	rdR_sel = 0;
	sub_area2_row_count = 7'd12;
	#10 rdR_sel = sub_area2_row_count[3:0] - 4'd10;
	#10 rdR_sel = sub_area2_row_count - 4'd10;
	#10 sub_area2_row_count = 7'd18;
	#10 rdR_sel = sub_area2_row_count[3:0] - 4'd10;
	#10 rdR_sel = sub_area2_row_count - 4'd10;
	#10 sub_area2_row_count = 7'd43;
	#10 rdR_sel = sub_area2_row_count[3:0] - 4'd36;
	#10 rdR_sel = sub_area2_row_count - 4'd36;
end
always
	#5 clk <= ~clk;
endmodule