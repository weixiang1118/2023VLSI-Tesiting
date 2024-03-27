module SYNSRAM #(
	parameter ADDR_WIDTH=4,
	parameter DATA_WIDTH=2,
	parameter DATA_DEPTH=16
)(
	input clk,
	input cs,
	input we,
	input [DATA_WIDTH-1:0] DataIn,
	input [ADDR_WIDTH-1:0] Address,
	
	output reg [DATA_WIDTH-1:0] DataOut
);

reg [DATA_WIDTH-1:0] memory [DATA_DEPTH-1:0]; //2*16 sram array
//(f) sa1 to bit2 of word5

	always @(posedge clk) 
	begin
		if (!cs) begin //cs=0 we=0 write cs=0 we=1 read
			if (we) 
			begin
				DataOut <= memory[Address];  // Read operation
			end 
			else 
			begin
				memory[Address] <= DataIn;				// Write operation
				//memory[5]<=2'b10;
			end
		end
	end

endmodule