case(t1)
	5'b00001: out5 = 5'd32;
	5'b00010: out5 = 5'd16;
	5'b00011: out5 = 5'd10;
	5'b00100: out5 = 5'd8;
	5'b00101: out5 = 5'd6;
	5'b00110: out5 = 5'd5;
	5'b00111: out5 = 5'd4;
	5'b01000: out5 = 5'd4;
	5'b01001: out5 = 5'd3;
	5'b01010: out5 = 5'd3;
	5'b01011: out5 = 5'd2;
	5'b01100: out5 = 5'd2;
	5'b01101: out5 = 5'd2;
	5'b01110: out5 = 5'd2;
	5'b01111: out5 = 5'd2;
	5'b10000: out5 = 5'd2;
	5'b10001: out5 = 5'd1;
	5'b10010: out5 = 5'd1;
	5'b10011: out5 = 5'd1;
	5'b10100: out5 = 5'd1;
	5'b10101: out5 = 5'd1;
	5'b10110: out5 = 5'd1;
	5'b10111: out5 = 5'd1;
	5'b11000: out5 = 5'd1;
	5'b11001: out5 = 5'd1;
	5'b11010: out5 = 5'd1;
	5'b11011: out5 = 5'd1;
	5'b11100: out5 = 5'd1;
	5'b11101: out5 = 5'd1;
	5'b11110: out5 = 5'd1;
	5'b11111: out5 = 5'd1;
default: out5 = 32'hffffffff;
endcase
