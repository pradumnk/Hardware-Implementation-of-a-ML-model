module ann_architecture (input clk, input reset, output out);

localparam log2_slow_down_factor = 4;
reg [log2_slow_down_factor-1 : 0] k_bit_counter = 0 ;
wire clk_address;
assign clk_address = k_bit_counter[ log2_slow_down_factor-1 ] ;
always @(posedge clk) begin
	k_bit_counter = k_bit_counter + 1 ;
end

//GENERATING ADDRESS
wire [15:0] address_a1, address_b1;
wire address_enable =1;
address_gen address_gen_unit1 (address_enable, clk_address, reset, 
										address_a1, address_b1);

//READING INPUT IMAGE & STORING TO REG
wire [31:0] x_a, x_b;
ip2 ip1_inst (address_a1, address_b1, clk_address, x_a, x_b);

integer Xin_i=-4;
reg [31:0] Xin [-4:65];
always @(posedge clk_address)
begin
Xin[Xin_i] <= x_a;
Xin[Xin_i+1] <= x_b;
if(Xin_i<64)
Xin_i <= Xin_i + 2;
end


//READING WEIGHTS OF LAYER01 & STORING TO REG
wire [31:0] W01_a, W01_b;
WeightsLayer01 WeightsLaye01_inst (address_a1, address_b1, clk_address, W01_a, W01_b);

integer Win01_i=-4;
reg [31:0] Win01 [-4:513];
always @(posedge clk_address)
begin
Win01[Win01_i] <= W01_a;
Win01[Win01_i+1] <= W01_b;
if(Win01_i<512)
Win01_i <= Win01_i + 2;
end

//READING BIASES OF LAYER01 & STORING TO REG
wire [31:0] B01_a, B01_b;
BiasesLayer01 BiasesLaye01_inst (address_a1, address_b1, clk_address, B01_a, B01_b);

integer Bin01_i=-4;
reg [31:0] Bin01 [-4:9];
always @(posedge clk_address)
begin
Bin01[Bin01_i] <= B01_a;
Bin01[Bin01_i+1] <= B01_b;
if(Bin01_i<8)
Bin01_i <= Bin01_i + 2;
end


//READING WEIGHTS OF LAYER12 & STORING TO REG
wire [31:0] W12_a, W12_b;
WeightsLayer12 WeightsLaye12_inst (address_a1, address_b1, clk_address, W12_a, W12_b);

integer Win12_i=-4;
reg [31:0] Win12 [-4:17];
always @(posedge clk_address)
begin
Win12[Win12_i] <= W12_a;
Win12[Win12_i+1] <= W12_b;
if(Win12_i<16)
Win12_i <= Win12_i + 2;
end

//READING BIASES OF LAYER12 & STORING TO REG
wire [31:0] B12_a, B12_b;
BiasesLayer12 BiasesLaye12_inst (address_a1, address_b1, clk_address, B12_a, B12_b);

integer Bin12_i=-4;
reg [31:0] Bin12 [-4:3];
always @(posedge clk_address)
begin
Bin12[Bin12_i] <= B12_a;
Bin12[Bin12_i+1] <= B12_b;
if(Bin12_i<2)
Bin12_i <= Bin12_i + 2;
end

//LAYER 0-1 IMPLEMENTATION
//MULTIPLIER
genvar j;
wire [31:0] multiplier_op_stage01_1_wire[0:511];
generate 
	for(j=0;j<64;j=j+1) 
	begin : Mult_stage1_1
	multiplier_fp_32bit mult1_1 (clk, Xin[j], Win01[j], multiplier_op_stage01_1_wire[j]);
	multiplier_fp_32bit mult1_2 (clk, Xin[j], Win01[1*64+j], multiplier_op_stage01_1_wire[1*64+j]);
	multiplier_fp_32bit mult1_3 (clk, Xin[j], Win01[2*64+j], multiplier_op_stage01_1_wire[2*64+j]);
	multiplier_fp_32bit mult1_4 (clk, Xin[j], Win01[3*64+j], multiplier_op_stage01_1_wire[3*64+j]);
	multiplier_fp_32bit mult1_5 (clk, Xin[j], Win01[4*64+j], multiplier_op_stage01_1_wire[4*64+j]);
	multiplier_fp_32bit mult1_6 (clk, Xin[j], Win01[5*64+j], multiplier_op_stage01_1_wire[5*64+j]);
	multiplier_fp_32bit mult1_7 (clk, Xin[j], Win01[6*64+j], multiplier_op_stage01_1_wire[6*64+j]);
	multiplier_fp_32bit mult1_8 (clk, Xin[j], Win01[7*64+j], multiplier_op_stage01_1_wire[7*64+j]);
	end
endgenerate


//ADDER
wire [31:0] adder_op_stage01_1_wire[0:255];
generate 
	for(j=0;j<64;j=j+2) 
	begin : add_stage01_1
	add_fp_32bit adder01_1_1 (clk, multiplier_op_stage01_1_wire[j], 
					multiplier_op_stage01_1_wire[j+1], adder_op_stage01_1_wire[(j)/2]);
					
	add_fp_32bit adder01_1_2 (clk, multiplier_op_stage01_1_wire[1*64+j], 
					multiplier_op_stage01_1_wire[1*64+j+1], adder_op_stage01_1_wire[(1*64+j)/2]);
					
	add_fp_32bit adder01_1_3 (clk, multiplier_op_stage01_1_wire[2*64+j], 
					multiplier_op_stage01_1_wire[2*64+j+1], adder_op_stage01_1_wire[(2*64+j)/2]);
					
	add_fp_32bit adder01_1_4 (clk, multiplier_op_stage01_1_wire[3*64+j], 
					multiplier_op_stage01_1_wire[3*64+j+1], adder_op_stage01_1_wire[(3*64+j)/2]);
					
	add_fp_32bit adder01_1_5 (clk, multiplier_op_stage01_1_wire[4*64+j], 
					multiplier_op_stage01_1_wire[4*64+j+1], adder_op_stage01_1_wire[(4*64+j)/2]);
					
	add_fp_32bit adder01_1_6 (clk, multiplier_op_stage01_1_wire[5*64+j], 
					multiplier_op_stage01_1_wire[5*64+j+1], adder_op_stage01_1_wire[(5*64+j)/2]);
					
	add_fp_32bit adder01_1_7 (clk, multiplier_op_stage01_1_wire[6*64+j], 
					multiplier_op_stage01_1_wire[6*64+j+1], adder_op_stage01_1_wire[(6*64+j)/2]);
	
	add_fp_32bit adder01_1_8 (clk, multiplier_op_stage01_1_wire[7*64+j], 
					multiplier_op_stage01_1_wire[7*64+j+1], adder_op_stage01_1_wire[(7*64+j)/2]);
	end
endgenerate


wire [31:0] adder_op_stage01_2_wire[0:127];
generate 
	for(j=0;j<32;j=j+2) 
	begin : add_stage01_2
	add_fp_32bit adder01_2_1 (clk, adder_op_stage01_1_wire[j], 
					adder_op_stage01_1_wire[j+1], adder_op_stage01_2_wire[(j)/2]);
					
	add_fp_32bit adder01_2_2 (clk, adder_op_stage01_1_wire[1*32+j], 
					adder_op_stage01_1_wire[1*32+j+1], adder_op_stage01_2_wire[(1*32+j)/2]);
					
	add_fp_32bit adder01_2_3 (clk, adder_op_stage01_1_wire[2*32+j], 
					adder_op_stage01_1_wire[2*32+j+1], adder_op_stage01_2_wire[(2*32+j)/2]);
					
	add_fp_32bit adder01_2_4 (clk, adder_op_stage01_1_wire[3*32+j], 
					adder_op_stage01_1_wire[3*32+j+1], adder_op_stage01_2_wire[(3*32+j)/2]);
					
	add_fp_32bit adder01_2_5 (clk, adder_op_stage01_1_wire[4*32+j], 
					adder_op_stage01_1_wire[4*32+j+1], adder_op_stage01_2_wire[(4*32+j)/2]);
					
	add_fp_32bit adder01_2_6 (clk, adder_op_stage01_1_wire[5*32+j], 
					adder_op_stage01_1_wire[5*32+j+1], adder_op_stage01_2_wire[(5*32+j)/2]);
					
	add_fp_32bit adder01_2_7 (clk, adder_op_stage01_1_wire[6*32+j], 
					adder_op_stage01_1_wire[6*32+j+1], adder_op_stage01_2_wire[(6*32+j)/2]);
	
	add_fp_32bit adder01_2_8 (clk, adder_op_stage01_1_wire[7*32+j], 
					adder_op_stage01_1_wire[7*32+j+1], adder_op_stage01_2_wire[(7*32+j)/2]);
	end
endgenerate



wire [31:0] adder_op_stage01_3_wire[0:63];
generate 
	for(j=0;j<16;j=j+2) 
	begin : add_stage01_3
	add_fp_32bit adder01_3_1 (clk, adder_op_stage01_2_wire[j], 
					adder_op_stage01_2_wire[j+1], adder_op_stage01_3_wire[(j)/2]);
					
	add_fp_32bit adder01_3_2 (clk, adder_op_stage01_2_wire[1*16+j], 
					adder_op_stage01_2_wire[1*16+j+1], adder_op_stage01_3_wire[(1*16+j)/2]);
					
	add_fp_32bit adder01_3_3 (clk, adder_op_stage01_2_wire[2*16+j], 
					adder_op_stage01_2_wire[2*16+j+1], adder_op_stage01_3_wire[(2*16+j)/2]);
					
	add_fp_32bit adder01_3_4 (clk, adder_op_stage01_2_wire[3*16+j], 
					adder_op_stage01_2_wire[3*16+j+1], adder_op_stage01_3_wire[(3*16+j)/2]);
					
	add_fp_32bit adder01_3_5 (clk, adder_op_stage01_2_wire[4*16+j], 
					adder_op_stage01_2_wire[4*16+j+1], adder_op_stage01_3_wire[(4*16+j)/2]);
					
	add_fp_32bit adder01_3_6 (clk, adder_op_stage01_2_wire[5*16+j], 
					adder_op_stage01_2_wire[5*16+j+1], adder_op_stage01_3_wire[(5*16+j)/2]);
					
	add_fp_32bit adder01_3_7 (clk, adder_op_stage01_2_wire[6*16+j], 
					adder_op_stage01_2_wire[6*16+j+1], adder_op_stage01_3_wire[(6*16+j)/2]);
	
	add_fp_32bit adder01_3_8 (clk, adder_op_stage01_2_wire[7*16+j], 
					adder_op_stage01_2_wire[7*16+j+1], adder_op_stage01_3_wire[(7*16+j)/2]);
	end
endgenerate




wire [31:0] adder_op_stage01_4_wire[0:31];
generate 
	for(j=0;j<8;j=j+2) 
	begin : add_stage01_4
	add_fp_32bit adder01_4_1 (clk, adder_op_stage01_3_wire[j], 
					adder_op_stage01_3_wire[j+1], adder_op_stage01_4_wire[(j)/2]);
					
	add_fp_32bit adder01_4_2 (clk, adder_op_stage01_3_wire[1*8+j], 
					adder_op_stage01_3_wire[1*8+j+1], adder_op_stage01_4_wire[(1*8+j)/2]);
					
	add_fp_32bit adder01_4_3 (clk, adder_op_stage01_3_wire[2*8+j], 
					adder_op_stage01_3_wire[2*8+j+1], adder_op_stage01_4_wire[(2*8+j)/2]);
					
	add_fp_32bit adder01_4_4 (clk, adder_op_stage01_3_wire[3*8+j], 
					adder_op_stage01_3_wire[3*8+j+1], adder_op_stage01_4_wire[(3*8+j)/2]);
					
	add_fp_32bit adder01_4_5 (clk, adder_op_stage01_3_wire[4*8+j], 
					adder_op_stage01_3_wire[4*8+j+1], adder_op_stage01_4_wire[(4*8+j)/2]);
					
	add_fp_32bit adder01_4_6 (clk, adder_op_stage01_3_wire[5*8+j], 
					adder_op_stage01_3_wire[5*8+j+1], adder_op_stage01_4_wire[(5*8+j)/2]);
					
	add_fp_32bit adder01_4_7 (clk, adder_op_stage01_3_wire[6*8+j], 
					adder_op_stage01_3_wire[6*8+j+1], adder_op_stage01_4_wire[(6*8+j)/2]);
	
	add_fp_32bit adder01_4_8 (clk, adder_op_stage01_3_wire[7*8+j], 
					adder_op_stage01_3_wire[7*8+j+1], adder_op_stage01_4_wire[(7*8+j)/2]);
	end
endgenerate



wire [31:0] adder_op_stage01_5_wire[0:15];
generate 
	for(j=0;j<4;j=j+2) 
	begin : add_stage01_5
	add_fp_32bit adder01_5_1 (clk, adder_op_stage01_4_wire[j], 
					adder_op_stage01_4_wire[j+1], adder_op_stage01_5_wire[(j)/2]);
					
	add_fp_32bit adder01_5_2 (clk, adder_op_stage01_4_wire[1*4+j], 
					adder_op_stage01_4_wire[1*4+j+1], adder_op_stage01_5_wire[(1*4+j)/2]);
					
	add_fp_32bit adder01_5_3 (clk, adder_op_stage01_4_wire[2*4+j], 
					adder_op_stage01_4_wire[2*4+j+1], adder_op_stage01_5_wire[(2*4+j)/2]);
					
	add_fp_32bit adder01_5_4 (clk, adder_op_stage01_4_wire[3*4+j], 
					adder_op_stage01_4_wire[3*4+j+1], adder_op_stage01_5_wire[(3*4+j)/2]);
					
	add_fp_32bit adder01_5_5 (clk, adder_op_stage01_4_wire[4*4+j], 
					adder_op_stage01_4_wire[4*4+j+1], adder_op_stage01_5_wire[(4*4+j)/2]);
					
	add_fp_32bit adder01_5_6 (clk, adder_op_stage01_4_wire[5*4+j], 
					adder_op_stage01_4_wire[5*4+j+1], adder_op_stage01_5_wire[(5*4+j)/2]);
					
	add_fp_32bit adder01_5_7 (clk, adder_op_stage01_4_wire[6*4+j], 
					adder_op_stage01_4_wire[6*4+j+1], adder_op_stage01_5_wire[(6*4+j)/2]);
	
	add_fp_32bit adder01_5_8 (clk, adder_op_stage01_4_wire[7*4+j], 
					adder_op_stage01_4_wire[7*4+j+1], adder_op_stage01_5_wire[(7*4+j)/2]);
	end
endgenerate



wire [31:0] adder_op_stage01_6_wire[0:7];
generate 
	for(j=0;j<2;j=j+2) 
	begin : add_stage01_6
	add_fp_32bit adder01_6_1 (clk, adder_op_stage01_5_wire[j], 
					adder_op_stage01_5_wire[j+1], adder_op_stage01_6_wire[(j)/2]);
					
	add_fp_32bit adder01_6_2 (clk, adder_op_stage01_5_wire[1*2+j], 
					adder_op_stage01_5_wire[1*2+j+1], adder_op_stage01_6_wire[(1*2+j)/2]);
					
	add_fp_32bit adder01_6_3 (clk, adder_op_stage01_5_wire[2*2+j], 
					adder_op_stage01_5_wire[2*2+j+1], adder_op_stage01_6_wire[(2*2+j)/2]);
					
	add_fp_32bit adder01_6_4 (clk, adder_op_stage01_5_wire[3*2+j], 
					adder_op_stage01_5_wire[3*2+j+1], adder_op_stage01_6_wire[(3*2+j)/2]);
					
	add_fp_32bit adder01_6_5 (clk, adder_op_stage01_5_wire[4*2+j], 
					adder_op_stage01_5_wire[4*2+j+1], adder_op_stage01_6_wire[(4*2+j)/2]);
					
	add_fp_32bit adder01_5_6 (clk, adder_op_stage01_5_wire[5*2+j], 
					adder_op_stage01_5_wire[5*2+j+1], adder_op_stage01_6_wire[(5*2+j)/2]);
					
	add_fp_32bit adder01_6_7 (clk, adder_op_stage01_5_wire[6*2+j], 
					adder_op_stage01_5_wire[6*2+j+1], adder_op_stage01_6_wire[(6*2+j)/2]);
	
	add_fp_32bit adder01_6_8 (clk, adder_op_stage01_5_wire[7*2+j], 
					adder_op_stage01_5_wire[7*2+j+1], adder_op_stage01_6_wire[(7*2+j)/2]);
	end
endgenerate


wire [31:0] adder_op_stage01_7_wire[0:7];
generate 
	for(j=0;j<8;j=j+1) 
	begin : add_stage01_7
	add_fp_32bit adder01_7_1 (clk, adder_op_stage01_6_wire[j], 
					Bin01[j], adder_op_stage01_7_wire[j]);
	end
endgenerate



wire [31:0] adder_op_stage01_7_wire_FixedPt[0:7];
generate 
	for(j=0;j<8;j=j+1) 
	begin : ConversionStage1
	float32_fixed32 convertor_stage1_1 (clk, adder_op_stage01_7_wire[j], adder_op_stage01_7_wire_FixedPt[j]);
	end
endgenerate


wire [31:0] stage1_op_FixedPt[0:7];
generate
	for(j=0;j<8;j=j+1)
	begin : Activation_Stage1_1
	sigmoid_approx activation_function_inst1 (adder_op_stage01_7_wire_FixedPt[j], stage1_op_FixedPt[j]);
	end
endgenerate


wire [31:0] stage1_op[0:7];
generate 
	for(j=0;j<8;j=j+1) 
	begin : ConversionStage1_2
	fixed32_float32 convertor_stage1_2 (clk, stage1_op_FixedPt[j], stage1_op[j]);
	end
endgenerate


//LAYER 1-2 IMPLEMENTATION
//MULTIPLIER

wire [31:0] multiplier_op_stage12_1_wire[0:15];
generate 
	for(j=0;j<8;j=j+1) 
	begin : Mult_stage2_1
	multiplier_fp_32bit mult2_1 (clk, stage1_op[j], Win12[j], multiplier_op_stage12_1_wire[j]);
	multiplier_fp_32bit mult2_2 (clk, stage1_op[j], Win12[1*8+j], multiplier_op_stage12_1_wire[1*8+j]);
	end
endgenerate


//ADDER
wire [31:0] adder_op_stage12_1_wire[0:7];
generate 
	for(j=0;j<8;j=j+2) 
	begin : add_stage12_1
	add_fp_32bit adder12_1_1 (clk, multiplier_op_stage12_1_wire[j], 
					multiplier_op_stage12_1_wire[j+1], adder_op_stage12_1_wire[(j)/2]);
					
	add_fp_32bit adder12_1_2 (clk, multiplier_op_stage12_1_wire[1*8+j], 
					multiplier_op_stage12_1_wire[1*8+j+1], adder_op_stage12_1_wire[(1*8+j)/2]);
	end
endgenerate


wire [31:0] adder_op_stage12_2_wire[0:3];
generate 
	for(j=0;j<4;j=j+2) 
	begin : add_stage12_2
	add_fp_32bit adder12_2_1 (clk, adder_op_stage12_1_wire[j], 
					adder_op_stage12_1_wire[j+1], adder_op_stage12_2_wire[(j)/2]);
					
	add_fp_32bit adder12_2_2 (clk, adder_op_stage12_1_wire[1*4+j], 
					adder_op_stage12_1_wire[1*4+j+1], adder_op_stage12_2_wire[(1*4+j)/2]);
	end
endgenerate



wire [31:0] adder_op_stage12_3_wire[0:1];
generate 
	for(j=0;j<2;j=j+2) 
	begin : add_stage12_3
	add_fp_32bit adder12_3_1 (clk, adder_op_stage12_2_wire[j], 
					adder_op_stage12_2_wire[j+1], adder_op_stage12_3_wire[(j)/2]);
					
	add_fp_32bit adder12_3_2 (clk, adder_op_stage12_2_wire[1*2+j], 
					adder_op_stage12_2_wire[1*2+j+1], adder_op_stage12_3_wire[(1*2+j)/2]);
					
	end
endgenerate



wire [31:0] adder_op_stage12_4_wire[0:1];
generate 
	for(j=0;j<2;j=j+1) 
	begin : add_stage12_4
	add_fp_32bit adder12_4_1 (clk, adder_op_stage12_3_wire[j], 
					Bin12[j], adder_op_stage12_4_wire[j]);
	end
endgenerate



wire [31:0] adder_op_stage12_4_wire_FixedPt[0:1];
generate 
	for(j=0;j<2;j=j+1) 
	begin : ConversionStage2_1
	float32_fixed32 convertor_stage2_1 (clk, adder_op_stage12_4_wire[j], adder_op_stage12_4_wire_FixedPt[j]);
	end
endgenerate


wire [31:0] stage2_op_FixedPt[0:1];
generate
	for(j=0;j<2;j=j+1)
	begin : Activation_Stage2
	sigmoid_approx activation_function_inst2 (adder_op_stage12_4_wire_FixedPt[j], stage2_op_FixedPt[j]);
	end
endgenerate

assign out = (stage2_op_FixedPt[0][15:0]>stage2_op_FixedPt[1][15:0])? 1'd0 : 1'd1;

endmodule
