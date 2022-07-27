//module data_types(input );
// 0000000000000000000000000000010110110011001100110011000000000000 5.7
//endmodule


module relu (input [31:0]Y, output reg [31:0]O);
wire [31:0] abs_Y;

assign abs_Y = (Y[31]) ? (Y^32'hFFFFFFFF) + 32'h01 : Y ;

always @(Y)
begin
if (Y[31])
	begin
	O = 32'h0 ;
	end
else
	begin
	O = abs_Y;
	end
end
endmodule