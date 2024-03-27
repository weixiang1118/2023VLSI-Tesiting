`timescale 1ns/1ps

module testbist ;

reg clk,cs,we,rst;
//reg [1:0] datain;
//reg [3:0] addr;
wire passfail,testdone;
reg mode;
reg [1:0] normal;
parameter cycle = 10;

BIST bist(.clk(clk),.reset(rst),.pass_or_fail(passfail),.test_done(testdone),.mode(mode),.normal(normal));
//cs=0 we=0 write
//cs=0 we=1 read
always #(cycle/2) clk = ~clk;
initial begin
	$fsdbDumpfile("bist_rtl.fsdb");
	$fsdbDumpvars;
	clk=0;
	rst=1;
	mode=1;
	normal=2'b00;
	#20
	rst=0;
	#(5000)
	$finish;
end

always@(*)begin
	if(testdone==1)
		$finish;
end

/*always@(negedge clk) 
begin
	if(out_valid) 
		if(Q==ansq && R==ansr)
		begin
			$display ();
			$display ("///////////////////////////////////////////");
			$display ("////////////// Successful !! //////////////");
			$display ("///////////////////////////////////////////");	
			$display ();
			//ansc=ansc+1;
		end
		else
		begin
			$display ("\n Correct_Answer: ", ansq, ansr,  ",  YOUR_DATA: ", Q,R  );
			$display ();
			$display ("////////////// Error !!!! //////////////");
			$display ();
			//ansc=ansc+1;
		end
end*/

endmodule