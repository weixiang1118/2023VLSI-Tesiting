`timescale 1ns/1ps

`include "SYNSRAM.v"

module BIST(
	input clk,
	input reset,
	input [1:0] normal,
	input mode,
	output reg pass_or_fail,
	output reg test_done
);
	reg [3:0] addr;
	reg cs,we;
	reg [2:0] state;
	reg [1:0] datain;
	reg [1:0] test_patterns;
	wire [1:0] dataout;
	SYNSRAM #(.ADDR_WIDTH(4),
		.DATA_WIDTH(2),
		.DATA_DEPTH(16))
		sram(.clk(clk),.cs(cs),.we(we),.DataIn(datain),.Address(addr),.DataOut(dataout));
	//cs=0 we=0 write cs=0 we=1 read
	//parameter START=3'd0;
	parameter WRITE0=3'd0;
	parameter READ0=3'd1;
	parameter WRITE1=3'd2;
	parameter READ1=3'd3 ;
	parameter END=3'd4;
	parameter WAIT0=3'd5;
	//parameter WAIT1=3'd6;
	//parameter WAIT2=3'd7;
	always@(*)    //MUX
	begin
		case(mode)
			1'b0:begin
				datain=normal;
			end
			1'b1:begin
				datain=test_patterns;
			end
			default:begin
				datain=test_patterns;
			end
		endcase
	end
	always@(posedge clk)begin
		if(reset)begin
			test_patterns<=0;
			state<=WRITE0;
			addr<=0;
			cs<=0;
			we<=0;
			pass_or_fail<=1;
			test_done<=0;
		end
		else begin
			case(state)
				WRITE0:begin
					if(addr!=15)begin
						cs<=0;
						we<=0;
						addr<=addr+1;
						test_patterns<=2'b00;
						state<=WRITE0;
						pass_or_fail<=1;
						test_done<=0;
					end
					else begin
						cs<=0;
						test_patterns<=2'b00;
						addr<=0;
						we<=1;
						pass_or_fail<=1;
						test_done<=0;
						state<=WAIT0;	
					end
				end
				READ0:begin
					//we=0 write 1
					if(dataout!=2'b00)begin
						addr<=addr;
						cs<=0;
						pass_or_fail<=1'b0;
						test_done<=0;
						we<=1;
						test_patterns<=2'b11;
						state<=WRITE1;
					end
					else begin
						addr<=addr;
						cs<=0;
						pass_or_fail<=1'b1;
						test_done<=0;
						we<=1;
						test_patterns<=2'b11;
						state<=WRITE1;
					end
				end
				WRITE1:begin
					//we=1 read1 
					cs<=0;
					test_done<=0;
					addr<=addr+1;
					pass_or_fail<=1;
					test_patterns<=2'b11;
					state<=READ1;
					we<=1;
				end
				READ1:begin
					//we=1 read0
					if(addr==0)begin
						if(dataout!=2'b11)begin
							addr<=0;
							we<=0;
							cs<=0;
							test_patterns<=2'b00;
							state<=END;
							pass_or_fail<=0;
							test_done<=1;
						end
						else begin
						cs<=0;
						addr<=0;
						we<=0;
						test_patterns<=2'b00;
						pass_or_fail<=1;
						test_done<=1;
						state<=END;
						end
					end
					else begin
						if(dataout!=2'b11)begin
							test_patterns<=2'b11;
							cs<=0;
							addr<=addr;
							test_done<=0;
							we<=0;
							state<=READ0;
							pass_or_fail<=0;
						end
						else begin
						cs<=0;
						we<=0;
						test_done<=0;
						addr<=addr;
						test_patterns<=2'b11;
						pass_or_fail<=1;
						state<=READ0;
						end
					end
				end
				END: begin
					we<=0;
					cs<=0;
					addr<=0;
					test_patterns<=0;
					state<=END;
					test_done<=1;
					pass_or_fail<=0;
				end
				WAIT0: begin //read 0
					cs<=0;
					test_patterns<=2'b11;
					we<=0;
					addr<=addr;
					pass_or_fail<=1;
					test_done<=0;
					state<=READ0;
				end
				default : state<=END;		
			endcase
		end
	end
endmodule