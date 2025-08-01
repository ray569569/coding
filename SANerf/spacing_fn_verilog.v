module spacing_fn(
	clk,
	rst_n,
    i_valid,
	i_data,
	o_valid,
	o_data
);

//declaration
//I/O 
input 				clk    ;
input 				rst_n  ;
input 				i_valid;
input 		 [7:0]  i_data ; //3.5

output logic 		o_valid;
output logic [31:0] o_data ; //fp32

//register
logic [31:0] o_data_comb; //fp32

logic i_valid_1, i_valid_2;
//design

always_ff(posedge clk) begin
	if(~rst_n) begin
		i_valid_1 <= 0;
		i_data_1  <= 0;
	end
	else begin
		i_valid_1 <= i_valid;
		i_data_1  <= i_valid & i_data;
	end
end

always_ff@(negedge rst_n or posedge clk) begin
	if(~rst_n) begin
		o_data  <= 0;
		o_valid <= 0;
	end
	else begin
		if(i_valid_1) begin
			o_data  <= out_data;
			o_valid <= 1;
		end
		else begin
			o_data  <= 0;
			o_valid <= 0;
		end
	end
end

always_comb begin
	case(i_data_1) 
        8'b00000000: out_data = 8'b00000000;
        8'b00000001: out_data = 8'b00000000;
        8'b00000010: out_data = 8'b00000001;
        8'b00000011: out_data = 8'b00000010;
        8'b00000100: out_data = 8'b00000010;
        8'b00000101: out_data = 8'b00000010;
        8'b00000110: out_data = 8'b00000011;
        8'b00000111: out_data = 8'b00000100;
        8'b00001000: out_data = 8'b00000100;
        8'b00001001: out_data = 8'b00000100;
        8'b00001010: out_data = 8'b00000101;
        8'b00001011: out_data = 8'b00000110;
        8'b00001100: out_data = 8'b00000110;
        8'b00001101: out_data = 8'b00000110;
        8'b00001110: out_data = 8'b00000111;
        8'b00001111: out_data = 8'b00001000;
        8'b00010000: out_data = 8'b00001000;
        8'b00010001: out_data = 8'b00001000;
        8'b00010010: out_data = 8'b00001001;
        8'b00010011: out_data = 8'b00001010;
        8'b00010100: out_data = 8'b00001010;
        8'b00010101: out_data = 8'b00001010;
        8'b00010110: out_data = 8'b00001011;
        8'b00010111: out_data = 8'b00001100;
        8'b00011000: out_data = 8'b00001100;
        8'b00011001: out_data = 8'b00001100;
        8'b00011010: out_data = 8'b00001101;
        8'b00011011: out_data = 8'b00001110;
        8'b00011100: out_data = 8'b00001110;
        8'b00011101: out_data = 8'b00001110;
        8'b00011110: out_data = 8'b00001111;
        8'b00011111: out_data = 8'b00010000;
        8'b00100000: out_data = 8'b00010000;
        8'b00100001: out_data = 8'b00010000;
        8'b00100010: out_data = 8'b00010001;
        8'b00100011: out_data = 8'b00010001;
        8'b00100100: out_data = 8'b00010010;
        8'b00100101: out_data = 8'b00010010;
        8'b00100110: out_data = 8'b00010011;
        8'b00100111: out_data = 8'b00010011;
        8'b00101000: out_data = 8'b00010011;
        8'b00101001: out_data = 8'b00010100;
        8'b00101010: out_data = 8'b00010100;
        8'b00101011: out_data = 8'b00010100;
        8'b00101100: out_data = 8'b00010100;
        8'b00101101: out_data = 8'b00010101;
        8'b00101110: out_data = 8'b00010101;
        8'b00101111: out_data = 8'b00010101;
        8'b00110000: out_data = 8'b00010101;
        8'b00110001: out_data = 8'b00010110;
        8'b00110010: out_data = 8'b00010110;
        8'b00110011: out_data = 8'b00010110;
        8'b00110100: out_data = 8'b00010110;
        8'b00110101: out_data = 8'b00010110;
        8'b00110110: out_data = 8'b00010111;
        8'b00110111: out_data = 8'b00010111;
        8'b00111000: out_data = 8'b00010111;
        8'b00111001: out_data = 8'b00010111;
        8'b00111010: out_data = 8'b00010111;
        8'b00111011: out_data = 8'b00010111;
        8'b00111100: out_data = 8'b00010111;
        8'b00111101: out_data = 8'b00011000;
        8'b00111110: out_data = 8'b00011000;
        8'b00111111: out_data = 8'b00011000;
        8'b01000000: out_data = 8'b00011000;
        8'b01000001: out_data = 8'b00011000;
        8'b01000010: out_data = 8'b00011000;
        8'b01000011: out_data = 8'b00011000;
        8'b01000100: out_data = 8'b00011000;
        8'b01000101: out_data = 8'b00011001;
        8'b01000110: out_data = 8'b00011001;
        8'b01000111: out_data = 8'b00011001;
        8'b01001000: out_data = 8'b00011001;
        8'b01001001: out_data = 8'b00011001;
        8'b01001010: out_data = 8'b00011001;
        8'b01001011: out_data = 8'b00011001;
        8'b01001100: out_data = 8'b00011001;
        8'b01001101: out_data = 8'b00011001;
        8'b01001110: out_data = 8'b00011001;
        8'b01001111: out_data = 8'b00011010;
        8'b01010000: out_data = 8'b00011010;
        8'b01010001: out_data = 8'b00011010;
        8'b01010010: out_data = 8'b00011010;
        8'b01010011: out_data = 8'b00011010;
        8'b01010100: out_data = 8'b00011010;
        8'b01010101: out_data = 8'b00011010;
        8'b01010110: out_data = 8'b00011010;
        8'b01010111: out_data = 8'b00011010;
        8'b01011000: out_data = 8'b00011010;
        8'b01011001: out_data = 8'b00011010;
        8'b01011010: out_data = 8'b00011010;
        8'b01011011: out_data = 8'b00011010;
        8'b01011100: out_data = 8'b00011010;
        8'b01011101: out_data = 8'b00011010;
        8'b01011110: out_data = 8'b00011011;
        8'b01011111: out_data = 8'b00011011;
        8'b01100000: out_data = 8'b00011011;
        8'b01100001: out_data = 8'b00011011;
        8'b01100010: out_data = 8'b00011011;
        8'b01100011: out_data = 8'b00011011;
        8'b01100100: out_data = 8'b00011011;
        8'b01100101: out_data = 8'b00011011;
        8'b01100110: out_data = 8'b00011011;
        8'b01100111: out_data = 8'b00011011;
        8'b01101000: out_data = 8'b00011011;
        8'b01101001: out_data = 8'b00011011;
        8'b01101010: out_data = 8'b00011011;
        8'b01101011: out_data = 8'b00011011;
        8'b01101100: out_data = 8'b00011011;
        8'b01101101: out_data = 8'b00011011;
        8'b01101110: out_data = 8'b00011011;
        8'b01101111: out_data = 8'b00011011;
        8'b01110000: out_data = 8'b00011011;
        8'b01110001: out_data = 8'b00011011;
        8'b01110010: out_data = 8'b00011100;
        8'b01110011: out_data = 8'b00011100;
        8'b01110100: out_data = 8'b00011100;
        8'b01110101: out_data = 8'b00011100;
        8'b01110110: out_data = 8'b00011100;
        8'b01110111: out_data = 8'b00011100;
        8'b01111000: out_data = 8'b00011100;
        8'b01111001: out_data = 8'b00011100;
        8'b01111010: out_data = 8'b00011100;
        8'b01111011: out_data = 8'b00011100;
        8'b01111100: out_data = 8'b00011100;
        8'b01111101: out_data = 8'b00011100;
        8'b01111110: out_data = 8'b00011100;
        8'b01111111: out_data = 8'b00011100;
        8'b10000000: out_data = 8'b11000000;
        8'b10000001: out_data = 8'b11000000;
        8'b10000010: out_data = 8'b11000001;
        8'b10000011: out_data = 8'b11000010;
        8'b10000100: out_data = 8'b11000010;
        8'b10000101: out_data = 8'b11000010;
        8'b10000110: out_data = 8'b11000011;
        8'b10000111: out_data = 8'b11000100;
        8'b10001000: out_data = 8'b11000100;
        8'b10001001: out_data = 8'b11000100;
        8'b10001010: out_data = 8'b11000101;
        8'b10001011: out_data = 8'b11000110;
        8'b10001100: out_data = 8'b11000110;
        8'b10001101: out_data = 8'b11000110;
        8'b10001110: out_data = 8'b11000111;
        8'b10001111: out_data = 8'b11001000;
        8'b10010000: out_data = 8'b11001000;
        8'b10010001: out_data = 8'b11001000;
        8'b10010010: out_data = 8'b11001001;
        8'b10010011: out_data = 8'b11001010;
        8'b10010100: out_data = 8'b11001010;
        8'b10010101: out_data = 8'b11001010;
        8'b10010110: out_data = 8'b11001011;
        8'b10010111: out_data = 8'b11001100;
        8'b10011000: out_data = 8'b11001100;
        8'b10011001: out_data = 8'b11001100;
        8'b10011010: out_data = 8'b11001101;
        8'b10011011: out_data = 8'b11001110;
        8'b10011100: out_data = 8'b11001110;
        8'b10011101: out_data = 8'b11001110;
        8'b10011110: out_data = 8'b11001111;
        8'b10011111: out_data = 8'b11010000;
        8'b10100000: out_data = 8'b11010000;
        8'b10100001: out_data = 8'b11010000;
        8'b10100010: out_data = 8'b11010001;
        8'b10100011: out_data = 8'b11010010;
        8'b10100100: out_data = 8'b11010010;
        8'b10100101: out_data = 8'b11010010;
        8'b10100110: out_data = 8'b11010011;
        8'b10100111: out_data = 8'b11010100;
        8'b10101000: out_data = 8'b11010100;
        8'b10101001: out_data = 8'b11010100;
        8'b10101010: out_data = 8'b11010101;
        8'b10101011: out_data = 8'b11010110;
        8'b10101100: out_data = 8'b11010110;
        8'b10101101: out_data = 8'b11010110;
        8'b10101110: out_data = 8'b11010111;
        8'b10101111: out_data = 8'b11011000;
        8'b10110000: out_data = 8'b11011000;
        8'b10110001: out_data = 8'b11011000;
        8'b10110010: out_data = 8'b11011001;
        8'b10110011: out_data = 8'b11011010;
        8'b10110100: out_data = 8'b11011010;
        8'b10110101: out_data = 8'b11011010;
        8'b10110110: out_data = 8'b11011011;
        8'b10110111: out_data = 8'b11011100;
        8'b10111000: out_data = 8'b11011100;
        8'b10111001: out_data = 8'b11011100;
        8'b10111010: out_data = 8'b11011101;
        8'b10111011: out_data = 8'b11011110;
        8'b10111100: out_data = 8'b11011110;
        8'b10111101: out_data = 8'b11011110;
        8'b10111110: out_data = 8'b11011111;
        8'b10111111: out_data = 8'b11100000;
        8'b11000000: out_data = 8'b11100000;
        8'b11000001: out_data = 8'b11100000;
        8'b11000010: out_data = 8'b11100001;
        8'b11000011: out_data = 8'b11100010;
        8'b11000100: out_data = 8'b11100010;
        8'b11000101: out_data = 8'b11100010;
        8'b11000110: out_data = 8'b11100011;
        8'b11000111: out_data = 8'b11100100;
        8'b11001000: out_data = 8'b11100100;
        8'b11001001: out_data = 8'b11100100;
        8'b11001010: out_data = 8'b11100101;
        8'b11001011: out_data = 8'b11100110;
        8'b11001100: out_data = 8'b11100110;
        8'b11001101: out_data = 8'b11100110;
        8'b11001110: out_data = 8'b11100111;
        8'b11001111: out_data = 8'b11101000;
        8'b11010000: out_data = 8'b11101000;
        8'b11010001: out_data = 8'b11101000;
        8'b11010010: out_data = 8'b11101001;
        8'b11010011: out_data = 8'b11101010;
        8'b11010100: out_data = 8'b11101010;
        8'b11010101: out_data = 8'b11101010;
        8'b11010110: out_data = 8'b11101011;
        8'b11010111: out_data = 8'b11101100;
        8'b11011000: out_data = 8'b11101100;
        8'b11011001: out_data = 8'b11101100;
        8'b11011010: out_data = 8'b11101101;
        8'b11011011: out_data = 8'b11101110;
        8'b11011100: out_data = 8'b11101110;
        8'b11011101: out_data = 8'b11101110;
        8'b11011110: out_data = 8'b11101111;
        8'b11011111: out_data = 8'b11110000;
        8'b11100000: out_data = 8'b11110000;
        8'b11100001: out_data = 8'b11110000;
        8'b11100010: out_data = 8'b11110001;
        8'b11100011: out_data = 8'b11110010;
        8'b11100100: out_data = 8'b11110010;
        8'b11100101: out_data = 8'b11110010;
        8'b11100110: out_data = 8'b11110011;
        8'b11100111: out_data = 8'b11110100;
        8'b11101000: out_data = 8'b11110100;
        8'b11101001: out_data = 8'b11110100;
        8'b11101010: out_data = 8'b11110101;
        8'b11101011: out_data = 8'b11110110;
        8'b11101100: out_data = 8'b11110110;
        8'b11101101: out_data = 8'b11110110;
        8'b11101110: out_data = 8'b11110111;
        8'b11101111: out_data = 8'b11111000;
        8'b11110000: out_data = 8'b11111000;
        8'b11110001: out_data = 8'b11111000;
        8'b11110010: out_data = 8'b11111001;
        8'b11110011: out_data = 8'b11111010;
        8'b11110100: out_data = 8'b11111010;
        8'b11110101: out_data = 8'b11111010;
        8'b11110110: out_data = 8'b11111011;
        8'b11110111: out_data = 8'b11111100;
        8'b11111000: out_data = 8'b11111100;
        8'b11111001: out_data = 8'b11111100;
        8'b11111010: out_data = 8'b11111101;
        8'b11111011: out_data = 8'b11111110;
        8'b11111100: out_data = 8'b11111110;
        8'b11111101: out_data = 8'b11111110;
        8'b11111110: out_data = 8'b11111111;
        8'b11111111: out_data = 8'b00000000;
        default: out_data = 8'b11111111;
    endcase
end

endmodule

