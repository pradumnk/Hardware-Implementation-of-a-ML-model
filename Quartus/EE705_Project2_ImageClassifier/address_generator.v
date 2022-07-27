module address_gen(address_enable, clock, reset, address_a, address_b);
input address_enable, clock, reset;
output reg [15:0] address_a, address_b;

initial
begin
	 address_a <= 16'b0; 
	 address_b <= 16'b1;
end
always @ (posedge clock)

begin
	if (reset) begin  
      address_a <= 16'b0; 
		address_b <= 16'b1; 
	end
   else  begin
		if (address_enable == 1'b1) begin
			address_a <= address_a + 2'b10;
			address_b <= address_b + 2'b10;
		end
	end
end

endmodule