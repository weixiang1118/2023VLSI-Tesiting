`timescale 1ns/1ps

//`include "div.v"

module test ;



reg clk,rst;

//reg [7:0] Adata  [0:9];
//reg [7:0] Bdata [0:9];
reg [7:0] A,B;
wire [7:0] Q,R ;//[0:9];
//reg [7:0] ansq1 [0:9];
//reg [7:0] ansr1 [0:9];
reg [7:0] ansq ;
reg [7:0] ansr ;
reg [8:0] count,i;
wire out_valid;
parameter cycle = 2;

div div1(.clk(clk),.rst(rst),.A(A),.B(B),.Q(Q),.R(R),.out_valid(out_valid));


initial begin
	$sdf_annotate("./div_syn.sdf", div1);
	$fsdbDumpfile("div_syn.fsdb");
	$fsdbDumpvars;
	//$readmemb("dataA.vec", Adata);
	//$readmemb("dataB.vec", Bdata);
	//$readmemb("ansq1.vec", ansq1);
	//$readmemb("ansr1.vec", ansr1);
	clk=0;
	rst=1;
	count=0;
	//datac=0;
	//ansc=0;
	ansq=0;
	ansr=0;
	i=1;
	A=127;
	B=92;
	#(cycle *1) rst=0;
	#(500);
	//$toggle_count_report_flat("STACK_rtl.tcf", "TESTBED.I_STACK");
	$finish ;
end
always@(posedge clk  or posedge rst)begin
	count=count+1;
end
always@(*)
begin
	if(rst)
		count=0;
end

always@(*)
begin
	if(i==5)begin
		#(100)
		$finish;
	end
	if(count==30)
	begin
		A=0;
		B=78;
		i=i+1;	
	end
	if(count==58)
	begin
		A=64;
		B=8;
		i=i+1;	
	end
	if(count==87)
	begin
		A=127;
		B=127;
		i=i+1;	
	end
	if(count==116)
	begin
		A=1;
		B=7;
		i=i+1;	
	end
end
always #(cycle/2) clk = ~clk;
always@(posedge clk or posedge rst)
begin
	if(count==2||count==37 ||count==65 ||count==93||count==123)begin
		ansq<=A/B;
		ansr<=A%B;	
	end
end
//assign ansq=A/B;
//assign ansr=A%B;
/*always@(*)
begin
	if(count==0)
		A=Adata[datac];
		B=Bdata[datac];
		datac=datac+1;

end**/
always@(negedge clk) 
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
end
/*always@(negedge clk) 
begin
	if(ansc==9)
	begin
		#(cycle *1)
		$finish;
	end

end*/




endmodule