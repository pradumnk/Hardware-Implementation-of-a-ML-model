//module data_types(input );
// 0000000000000000000000000000010110110011001100110011000000000000 5.7
//endmodule


module sigmoid_approx (input [31:0]Y, output reg [31:0]O);
wire [31:0] abs_Y;

assign abs_Y = (Y[31]) ? (Y^32'hFFFFFFFF) + 32'h01 : Y ;

always @(Y)
begin
if (Y[31])
	begin
	O = {16'h0, 1'b0, abs_Y[18:4]};
	if(abs_Y[30:16] > 4)
		begin
		O = 32'h0 ;
		end
	end
	else
	begin
	O = {16'h0, 1'b1, abs_Y[18:4]};
	if(abs_Y[30:16] > 4)
		begin
		O = 32'd65536;
		end
	end
	end

endmodule