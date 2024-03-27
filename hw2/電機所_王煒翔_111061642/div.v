//------------------------------------------------------//
//- vlsi testing 2023                                   //
//-                                                     //
//- hw2  sequential divider                             //
//------------------------------------------------------//
`timescale 1ns/1ps


module  div(
			//input signal
			clk,
			rst,
			A,
			B,
			//output signal
			Q,
			R,
			out_valid
			);
		input clk;
		input rst;
		input [7:0] A;				//dividend
		input [7:0] B;				//divisor
		
		output reg [7:0] Q; 		//quotient
		output reg [7:0] R;			//remainder
		output reg out_valid;
		
		reg [3:0] curr_state;
		reg [3:0] next_state;
		reg [4:0] next_count;
		reg [4:0] count;
		reg [15:0] rem;
		reg [15:0] next_rem;
		reg [15:0] remc;
		reg [15:0] next_remc;
		
		//EFSM
		parameter S0=4'd0;
		parameter S1=4'd1;
		parameter S2=4'd2;
		parameter S3=4'd3;
		parameter S4=4'd4;
		parameter S5=4'd5;
		//parameter S6=4'd6;
		// state reg
		always@(posedge clk)
		begin
			if (rst)
			begin 
			curr_state <= S0;
			end
			else
			begin
				curr_state <= next_state;
			end
		end
		always@(posedge clk )
		begin
			if (rst)
			begin 
			count <= 0;
			end
			else
			begin
				count<=next_count;
			end
		end
		
		always@(posedge clk )
		begin
			if (rst)
			begin 
			rem <= 0;
			end
			else
			begin
				rem<=next_rem;
			end
		end
		always@(posedge clk )
		begin
			if (rst)
			begin 
			remc <= 0;
			end
			else
			begin
				remc<=next_remc;
			end
		end
		always@(*) 
		begin
			next_count=count;
			next_rem=rem;
			next_remc=remc;
			//next_state=curr_state;
			case (curr_state)
				S0    :		begin
								next_count=5'b0;
								next_rem={8'b0,A};
								//remc=0;
								next_state = S1;
							end		
				S1    : 	begin
								if (count==0)
								begin
									next_rem=rem<<1;
									//remc=next_rem;
									next_count=count+1'b1;
									next_state= S5;
								end
								else if(count==9)
								begin
									//remc=remc;
									//next_rem=rem;
									next_state=S0;
									next_count=count+1'b1;
								end
								else 
								begin 
									next_remc={rem[15:8]-B,rem[7:0]};
									//next_rem=rem;
									//next_count=count;
									next_state= S4;
								end
							end
				S2      : 	begin
								if (remc[15]==0)
								begin
									next_rem=remc<<1;
									//remc=remc;
									next_count=count+1'b1;
									next_state = S3;
								end
								else     
								begin
									//remc=remc;
									//next_rem=rem;
									next_count=count+1'b1;
									next_state = S1;
								end 
							end
				S3: 		begin
							//next_count=count;
							//remc=remc;
							next_rem=rem+1'b1;
							next_state=S1;
							end
				S4: 		begin
							next_rem=rem<<1;
							//remc=remc;
							//next_count=count;
							next_state=S2;
							end
				S5: 		begin 
							//next_rem=rem;
							//remc=remc;
							//next_count=count;
							next_state=S1;
							end
							
				default :   next_state = S0;
			endcase
		end
		
		always@(posedge clk )
		begin
			if(rst)
				out_valid<=1'b0;
			else if (count==0)
				out_valid<=1'b0;
			else if(count==10)
				out_valid<=1'b1;
			else 
				out_valid<=out_valid;
		end
		always@(posedge clk )
		begin
			if(rst)
				Q<=0;
			else if (count==10)
				Q<=rem[7:0];
			else
				Q<=Q;
		end
		
		always@(posedge clk )
		begin
			if(rst)
				R<=0;
			else if (count==10)
				R<=rem[15:8]>>1;
			else
				R<=R;
		end
			
		
endmodule