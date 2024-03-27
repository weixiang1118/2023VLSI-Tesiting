`timescale 1ns/1ps

`include "SYNSRAM.v"

module checkboard(
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
	//reg error;
	wire [1:0] dataout;
	SYNSRAM #(.ADDR_WIDTH(4),
		.DATA_WIDTH(2),
		.DATA_DEPTH(16))
		sram(.clk(clk),.cs(cs),.we(we),.DataIn(datain),.Address(addr),.DataOut(dataout));
	
	parameter WRITE0=3'd0;
	parameter READ0=3'd1;
	parameter WRITE1=3'd2;
	parameter READ1=3'd3;
	parameter WAIT0=3'd4;
	parameter WAIT1=3'd5;
	parameter END=3'd6;

	//cs=0 we=0 write cs=0 we=1 read
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
	
	always @(posedge clk)begin
		if(reset)begin
			cs<=0;
			we<=0;
			addr<=0;
			state<=WRITE0;
			pass_or_fail<=1;
			test_done<=0;
			test_patterns<=0;
			//dataout<=0;
		end
		
		else begin
		case(state)
		
			WRITE0:begin
				cs<=0;
				we<=0;
				addr<=addr+1;
				if(addr<15)begin
					if (addr % 2 == 0)
						test_patterns <= 2'b11;  
					else
						test_patterns <= 2'b00;
					state<=WRITE0;
				end
				else begin
					test_patterns <= 2'b00;
					cs<=0;
					we<=1;
					addr<=0;
					state<=WAIT0;
				end
			end
			
			READ0:begin
				cs<=0;
				we<=1;
				addr<=addr+1;
				if(addr<15)begin
					if ((addr%2==0) && (dataout!=2'b11))
						pass_or_fail<=0;
					
					if((addr%2==1) && (dataout!=2'b00))
						pass_or_fail<=0;
						
					state<=READ0;
				end
				else begin
					if((addr%2==1) && (dataout!=2'b00))
						pass_or_fail<=0;
					cs<=0;
					we<=0;
					addr<=0;
					test_patterns <= 2'b11;
					state<=WRITE1;
					
				end
				
			end
			
			WRITE1:begin
				cs<=0;
				we<=0;
				addr<=addr+1;
				
				if(addr<15)begin
					if (addr % 2 == 0)
						test_patterns <= 2'b00;  
					else
						test_patterns <= 2'b11;
					state<=WRITE1;
				end
				else begin
					test_patterns <= 2'b11;
					cs<=0;
					we<=1;
					addr<=0;
					state<=WAIT1;
				end
			end
			
			READ1:begin
				cs<=0;
				we<=1;
				addr<=addr+1;
				if(addr<15)begin
					if ((addr%2==0) && (dataout!=2'b00))
						pass_or_fail<=0;
					
					if((addr%2==1) && (dataout!=2'b11))
						pass_or_fail<=0;
						
					state<=READ1;
				end
				else begin
					if((addr%2==1) && (dataout!=2'b11))
						pass_or_fail<=0;
					cs<=0;
					we<=0;
					addr<=0;
					test_patterns<=0;
					test_done<=1;
					state<=END;
					
				end
				
			end
			
			WAIT0:begin
				addr<=addr+1;
				state<=READ0;
			end
			
			WAIT1:begin
				addr<=addr+1;
				state<=READ1;
			end
			
			
			END:begin
				cs<=0;
				we<=0;
				addr<=0;
				test_patterns<=0;
				pass_or_fail<=1;
				test_done<=1;
				state<=END;
			end
			
			default:begin
				state<=END;
			end	
			
		endcase
		end
	end
	
	
endmodule