/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Sun May 14 16:48:22 2023
/////////////////////////////////////////////////////////////


module div_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n3, n4, n5, n6, n7, n8, n10, n11, n12, n13, n14, n16, n17, n19, n20,
         n21, n23, n24, n26, n27, n28, n29, n30, n32, n33, n35, n36, n37, n39,
         n40, n43, n45, n46, n48, n49, n51, n52, n53, n55, n94, n95;

  NAND2X2 U76 ( .A(A[1]), .B(A[0]), .Y(n53) );
  NAND2X2 U77 ( .A(n29), .B(n45), .Y(n28) );
  NOR2X2 U78 ( .A(n46), .B(n53), .Y(n45) );
  OR2X2 U79 ( .A(n46), .B(n53), .Y(n94) );
  NOR2X2 U80 ( .A(n5), .B(n28), .Y(n4) );
  AND2X2 U81 ( .A(n4), .B(A[14]), .Y(n95) );
  NAND2X2 U82 ( .A(n11), .B(A[12]), .Y(n8) );
  NAND2X2 U83 ( .A(A[9]), .B(A[8]), .Y(n21) );
  NAND2XL U84 ( .A(n27), .B(A[8]), .Y(n24) );
  INVX2 U85 ( .A(n13), .Y(n12) );
  XNOR2XL U86 ( .A(n27), .B(n26), .Y(SUM[8]) );
  INVXL U87 ( .A(n28), .Y(n27) );
  NOR2XL U88 ( .A(n94), .B(n43), .Y(n40) );
  XNOR2XL U89 ( .A(n36), .B(n35), .Y(SUM[6]) );
  XOR2XL U90 ( .A(n94), .B(n43), .Y(SUM[4]) );
  NAND2XL U91 ( .A(n20), .B(A[10]), .Y(n17) );
  INVXL U92 ( .A(A[12]), .Y(n10) );
  INVXL U93 ( .A(A[0]), .Y(SUM[0]) );
  INVXL U94 ( .A(A[13]), .Y(n7) );
  NAND2XL U95 ( .A(n52), .B(A[2]), .Y(n49) );
  INVXL U96 ( .A(A[10]), .Y(n19) );
  INVXL U97 ( .A(A[6]), .Y(n35) );
  INVXL U98 ( .A(A[2]), .Y(n51) );
  INVXL U99 ( .A(A[14]), .Y(n3) );
  INVXL U100 ( .A(A[11]), .Y(n16) );
  INVXL U101 ( .A(A[1]), .Y(n55) );
  INVXL U102 ( .A(A[9]), .Y(n23) );
  INVXL U103 ( .A(A[8]), .Y(n26) );
  NAND2XL U104 ( .A(A[10]), .B(A[11]), .Y(n14) );
  NAND2X2 U105 ( .A(n13), .B(n6), .Y(n5) );
  NOR2X2 U106 ( .A(n10), .B(n7), .Y(n6) );
  NOR2X2 U107 ( .A(n94), .B(n37), .Y(n36) );
  INVX2 U108 ( .A(n53), .Y(n52) );
  XOR2X1 U109 ( .A(n33), .B(n32), .Y(SUM[7]) );
  XNOR2X1 U110 ( .A(n40), .B(n39), .Y(SUM[5]) );
  XOR2X1 U111 ( .A(n49), .B(n48), .Y(SUM[3]) );
  XNOR2X1 U112 ( .A(n52), .B(n51), .Y(SUM[2]) );
  XNOR2X1 U113 ( .A(n55), .B(A[0]), .Y(SUM[1]) );
  XOR2X1 U114 ( .A(n95), .B(A[15]), .Y(SUM[15]) );
  XNOR2X1 U115 ( .A(n4), .B(n3), .Y(SUM[14]) );
  XOR2X1 U116 ( .A(n8), .B(n7), .Y(SUM[13]) );
  NOR2X2 U117 ( .A(n37), .B(n30), .Y(n29) );
  NAND2X2 U118 ( .A(A[6]), .B(A[7]), .Y(n30) );
  NAND2X2 U119 ( .A(A[2]), .B(A[3]), .Y(n46) );
  NOR2X2 U120 ( .A(n14), .B(n21), .Y(n13) );
  XNOR2X1 U121 ( .A(n11), .B(n10), .Y(SUM[12]) );
  XOR2X1 U122 ( .A(n17), .B(n16), .Y(SUM[11]) );
  XNOR2X1 U123 ( .A(n20), .B(n19), .Y(SUM[10]) );
  XOR2X1 U124 ( .A(n24), .B(n23), .Y(SUM[9]) );
  NAND2X2 U125 ( .A(A[4]), .B(A[5]), .Y(n37) );
  NAND2X2 U126 ( .A(n36), .B(A[6]), .Y(n33) );
  INVX2 U127 ( .A(A[4]), .Y(n43) );
  INVX2 U128 ( .A(A[7]), .Y(n32) );
  INVX2 U129 ( .A(A[3]), .Y(n48) );
  INVX2 U130 ( .A(A[5]), .Y(n39) );
  NOR2X2 U131 ( .A(n28), .B(n12), .Y(n11) );
  NOR2X2 U132 ( .A(n28), .B(n21), .Y(n20) );
endmodule


module div_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n13, n17, n18, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n42, n43, n44, n45, n47, n48, n49, n50, n51,
         n52, n53, n54, n86, n87, n88, n89;

  OAI21X1 U17 ( .A0(n1), .A1(n88), .B0(n20), .Y(n18) );
  OAI21X1 U27 ( .A0(n1), .A1(n26), .B0(n27), .Y(n25) );
  OAI21X1 U41 ( .A0(n35), .A1(n33), .B0(n34), .Y(n32) );
  OAI21X2 U66 ( .A0(n23), .A1(n27), .B0(n24), .Y(n22) );
  OR2XL U67 ( .A(n26), .B(n23), .Y(n88) );
  NOR2X4 U68 ( .A(A[5]), .B(n49), .Y(n23) );
  OAI21X2 U69 ( .A0(n1), .A1(n12), .B0(n13), .Y(n11) );
  AOI21X4 U70 ( .A0(n28), .A1(n36), .B0(n29), .Y(n1) );
  XNOR2X1 U71 ( .A(n11), .B(n2), .Y(DIFF[7]) );
  NAND2X2 U72 ( .A(A[4]), .B(n50), .Y(n27) );
  INVXL U73 ( .A(n23), .Y(n42) );
  XNOR2XL U74 ( .A(n25), .B(n4), .Y(DIFF[5]) );
  OAI21X1 U75 ( .A0(n30), .A1(n34), .B0(n31), .Y(n29) );
  NAND2XL U76 ( .A(n86), .B(n17), .Y(n3) );
  XNOR2XL U77 ( .A(n18), .B(n3), .Y(DIFF[6]) );
  NAND2X1 U78 ( .A(n43), .B(n27), .Y(n5) );
  INVXL U79 ( .A(n26), .Y(n43) );
  INVXL U80 ( .A(n36), .Y(n35) );
  NAND2XL U81 ( .A(A[2]), .B(n52), .Y(n34) );
  CLKNAND2X2 U82 ( .A(A[5]), .B(n49), .Y(n24) );
  NAND2X1 U83 ( .A(n44), .B(n31), .Y(n6) );
  XNOR2XL U84 ( .A(n32), .B(n6), .Y(DIFF[3]) );
  NAND2XL U85 ( .A(n21), .B(n86), .Y(n12) );
  NOR2XL U86 ( .A(n26), .B(n23), .Y(n21) );
  NAND2XL U87 ( .A(n45), .B(n34), .Y(n7) );
  NOR2XL U88 ( .A(A[2]), .B(n52), .Y(n33) );
  NAND2XL U89 ( .A(A[3]), .B(n51), .Y(n31) );
  NAND2XL U90 ( .A(A[1]), .B(n53), .Y(n38) );
  NOR2XL U91 ( .A(A[4]), .B(n50), .Y(n26) );
  NAND2XL U92 ( .A(A[6]), .B(n48), .Y(n17) );
  NAND2XL U93 ( .A(n89), .B(n38), .Y(n8) );
  XOR2XL U94 ( .A(n8), .B(n39), .Y(DIFF[1]) );
  XNOR2XL U95 ( .A(A[0]), .B(n54), .Y(DIFF[0]) );
  XOR2XL U96 ( .A(n1), .B(n5), .Y(DIFF[4]) );
  NOR2X2 U97 ( .A(n33), .B(n30), .Y(n28) );
  NAND2X2 U98 ( .A(n42), .B(n24), .Y(n4) );
  AOI21BX2 U99 ( .A0(n22), .A1(n86), .B0N(n17), .Y(n13) );
  XOR2X1 U100 ( .A(n35), .B(n7), .Y(DIFF[2]) );
  OAI21X1 U101 ( .A0(n37), .A1(n39), .B0(n38), .Y(n36) );
  NOR2X2 U102 ( .A(A[1]), .B(n53), .Y(n37) );
  NOR2X2 U103 ( .A(A[0]), .B(n54), .Y(n39) );
  NAND2X2 U104 ( .A(n87), .B(n10), .Y(n2) );
  NAND2X2 U105 ( .A(A[7]), .B(n47), .Y(n10) );
  OR2X2 U106 ( .A(A[6]), .B(n48), .Y(n86) );
  NOR2X2 U107 ( .A(A[3]), .B(n51), .Y(n30) );
  OR2X2 U108 ( .A(A[7]), .B(n47), .Y(n87) );
  INVX2 U109 ( .A(B[5]), .Y(n49) );
  INVX2 U110 ( .A(B[3]), .Y(n51) );
  INVX2 U111 ( .A(B[4]), .Y(n50) );
  INVX2 U112 ( .A(B[6]), .Y(n48) );
  INVX2 U113 ( .A(B[7]), .Y(n47) );
  INVX2 U114 ( .A(B[2]), .Y(n52) );
  INVX2 U115 ( .A(B[0]), .Y(n54) );
  INVX1 U116 ( .A(n33), .Y(n45) );
  OR2XL U117 ( .A(A[1]), .B(n53), .Y(n89) );
  INVX2 U118 ( .A(B[1]), .Y(n53) );
  INVXL U119 ( .A(n30), .Y(n44) );
  CLKINVX1 U120 ( .A(n22), .Y(n20) );
endmodule


module div ( clk, rst, A, B, Q, R, out_valid );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Q;
  output [7:0] R;
  input clk, rst;
  output out_valid;
  wire   N16, N17, N92, N93, N94, N95, N96, N97, N98, N99, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, n39, n40, n41, n42, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336;
  wire   [2:0] curr_state;
  wire   [3:0] count;
  wire   [15:0] rem;
  wire   [15:0] remc;

  div_DW01_inc_2 add_147 ( .A({rem[15], n216, n208, rem[12:0]}), .SUM({N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, 
        N141, N140, N139}) );
  div_DW01_sub_2 sub_122 ( .A(rem[15:8]), .B(B), .CI(1'b0), .DIFF({N99, N98, 
        N97, N96, N95, N94, N93, N92}), .CO() );
  DFFHQX4 curr_state_reg_0_ ( .D(N16), .CK(clk), .Q(curr_state[0]) );
  DFFHQX4 curr_state_reg_1_ ( .D(N17), .CK(clk), .Q(curr_state[1]) );
  DFFQXL Q_reg_7_ ( .D(n173), .CK(clk), .Q(Q[7]) );
  DFFQXL Q_reg_6_ ( .D(n172), .CK(clk), .Q(Q[6]) );
  DFFQXL Q_reg_5_ ( .D(n171), .CK(clk), .Q(Q[5]) );
  DFFQXL Q_reg_4_ ( .D(n170), .CK(clk), .Q(Q[4]) );
  DFFQXL Q_reg_3_ ( .D(n169), .CK(clk), .Q(Q[3]) );
  DFFQXL Q_reg_2_ ( .D(n168), .CK(clk), .Q(Q[2]) );
  DFFQXL Q_reg_1_ ( .D(n167), .CK(clk), .Q(Q[1]) );
  DFFQXL Q_reg_0_ ( .D(n166), .CK(clk), .Q(Q[0]) );
  DFFQXL R_reg_6_ ( .D(n165), .CK(clk), .Q(R[6]) );
  DFFQXL R_reg_5_ ( .D(n164), .CK(clk), .Q(R[5]) );
  DFFQXL R_reg_4_ ( .D(n163), .CK(clk), .Q(R[4]) );
  DFFQXL R_reg_3_ ( .D(n162), .CK(clk), .Q(R[3]) );
  DFFQXL R_reg_2_ ( .D(n161), .CK(clk), .Q(R[2]) );
  DFFQXL R_reg_1_ ( .D(n160), .CK(clk), .Q(R[1]) );
  DFFQXL R_reg_0_ ( .D(n159), .CK(clk), .Q(R[0]) );
  DFFQXL remc_reg_0_ ( .D(n203), .CK(clk), .Q(remc[0]) );
  DFFQXL remc_reg_6_ ( .D(n176), .CK(clk), .Q(remc[6]) );
  DFFQXL remc_reg_5_ ( .D(n177), .CK(clk), .Q(remc[5]) );
  DFFQXL remc_reg_4_ ( .D(n178), .CK(clk), .Q(remc[4]) );
  DFFQXL remc_reg_3_ ( .D(n179), .CK(clk), .Q(remc[3]) );
  DFFQXL remc_reg_2_ ( .D(n180), .CK(clk), .Q(remc[2]) );
  DFFQXL remc_reg_1_ ( .D(n181), .CK(clk), .Q(remc[1]) );
  DFFQXL out_valid_reg ( .D(n174), .CK(clk), .Q(out_valid) );
  DFFQXL rem_reg_15_ ( .D(n202), .CK(clk), .Q(rem[15]) );
  DFFHQX4 rem_reg_11_ ( .D(n193), .CK(clk), .Q(rem[11]) );
  DFFQX2 rem_reg_4_ ( .D(n186), .CK(clk), .Q(rem[4]) );
  DFFQX2 rem_reg_5_ ( .D(n187), .CK(clk), .Q(rem[5]) );
  DFFQX2 rem_reg_7_ ( .D(n189), .CK(clk), .Q(rem[7]) );
  DFFQX2 rem_reg_6_ ( .D(n188), .CK(clk), .Q(rem[6]) );
  DFFQX2 rem_reg_3_ ( .D(n185), .CK(clk), .Q(rem[3]) );
  DFFQX2 rem_reg_2_ ( .D(n184), .CK(clk), .Q(rem[2]) );
  DFFQX2 rem_reg_1_ ( .D(n183), .CK(clk), .Q(rem[1]) );
  DFFHQX4 count_reg_2_ ( .D(n199), .CK(clk), .Q(count[2]) );
  DFFQX2 count_reg_0_ ( .D(n201), .CK(clk), .Q(count[0]) );
  DFFYQX2 rem_reg_14_ ( .D(n196), .CK(clk), .Q(rem[14]) );
  DFFYQX2 count_reg_3_ ( .D(n198), .CK(clk), .Q(count[3]) );
  EDFFTRX1 remc_reg_9_ ( .RN(n332), .D(N93), .E(n330), .CK(clk), .Q(), .QN(n41) );
  EDFFTRX1 remc_reg_11_ ( .RN(n332), .D(N95), .E(n330), .CK(clk), .Q(), .QN(
        n39) );
  EDFFTRX1 remc_reg_13_ ( .RN(n332), .D(N97), .E(n330), .CK(clk), .Q(remc[13]), 
        .QN() );
  EDFFTRX1 remc_reg_8_ ( .RN(n332), .D(N92), .E(n330), .CK(clk), .Q(), .QN(n42) );
  EDFFTRX1 remc_reg_10_ ( .RN(n332), .D(N94), .E(n330), .CK(clk), .Q(), .QN(
        n40) );
  EDFFTRX1 remc_reg_12_ ( .RN(n332), .D(N96), .E(n330), .CK(clk), .Q(remc[12]), 
        .QN() );
  EDFFTRX1 remc_reg_14_ ( .RN(n332), .D(N98), .E(n330), .CK(clk), .Q(remc[14]), 
        .QN() );
  DFFHQX4 curr_state_reg_2_ ( .D(n331), .CK(clk), .Q(curr_state[2]) );
  DFFYQX2 rem_reg_13_ ( .D(n195), .CK(clk), .Q(rem[13]) );
  EDFFTRX1 remc_reg_15_ ( .RN(n332), .D(N99), .E(n330), .CK(clk), .Q(remc[15]), 
        .QN() );
  DFFHQX1 rem_reg_0_ ( .D(n182), .CK(clk), .Q(rem[0]) );
  DFFHQX4 count_reg_4_ ( .D(n197), .CK(clk), .Q(n221) );
  DFFHQX4 count_reg_1_ ( .D(n200), .CK(clk), .Q(n225) );
  DFFHQX4 rem_reg_8_ ( .D(n190), .CK(clk), .Q(rem[8]) );
  DFFHQX4 rem_reg_9_ ( .D(n191), .CK(clk), .Q(rem[9]) );
  DFFHQX4 rem_reg_10_ ( .D(n192), .CK(clk), .Q(rem[10]) );
  DFFHQX2 rem_reg_12_ ( .D(n194), .CK(clk), .Q(rem[12]) );
  DFFQXL remc_reg_7_ ( .D(n175), .CK(clk), .Q(remc[7]) );
  INVX2 U207 ( .A(1'b1), .Y(R[7]) );
  NOR3X1 U209 ( .A(count[2]), .B(n225), .C(n221), .Y(n222) );
  NAND2X2 U210 ( .A(n214), .B(remc[15]), .Y(n267) );
  AND3X4 U211 ( .A(n262), .B(n220), .C(n263), .Y(n214) );
  NAND2BX2 U212 ( .AN(n243), .B(count[2]), .Y(n244) );
  BUFX2 U213 ( .A(rem[13]), .Y(n208) );
  INVX2 U214 ( .A(n327), .Y(n329) );
  INVX4 U215 ( .A(curr_state[2]), .Y(n263) );
  AO2B2X2 U216 ( .B0(n253), .B1(n252), .A0(n221), .A1N(n251), .Y(n197) );
  INVX2 U217 ( .A(count[3]), .Y(n249) );
  BUFX2 U218 ( .A(curr_state[0]), .Y(n213) );
  CLKINVX4 U219 ( .A(n239), .Y(n220) );
  CLKINVX8 U220 ( .A(n301), .Y(n330) );
  OAI31X1 U221 ( .A0(n334), .A1(n233), .A2(n212), .B0(n332), .Y(n256) );
  NOR2X2 U222 ( .A(curr_state[0]), .B(curr_state[1]), .Y(n228) );
  INVX3 U223 ( .A(curr_state[1]), .Y(n239) );
  NAND3BX2 U224 ( .AN(n207), .B(n213), .C(n263), .Y(n261) );
  NOR3X2 U225 ( .A(n206), .B(n262), .C(n210), .Y(n212) );
  NAND2BX1 U226 ( .AN(n261), .B(n273), .Y(n237) );
  NAND2BX1 U227 ( .AN(n261), .B(n223), .Y(n278) );
  INVXL U228 ( .A(n220), .Y(n206) );
  INVXL U229 ( .A(n239), .Y(n207) );
  INVXL U230 ( .A(curr_state[2]), .Y(n209) );
  INVX2 U231 ( .A(n209), .Y(n210) );
  NOR2X1 U232 ( .A(curr_state[0]), .B(curr_state[1]), .Y(n224) );
  NOR3BXL U233 ( .AN(n249), .B(n226), .C(count[0]), .Y(n223) );
  INVX2 U234 ( .A(n230), .Y(n211) );
  CLKINVX3 U235 ( .A(curr_state[0]), .Y(n262) );
  OR2X4 U236 ( .A(n235), .B(n262), .Y(n272) );
  NAND2BXL U237 ( .AN(n210), .B(n224), .Y(n270) );
  NAND3BX2 U238 ( .AN(count[2]), .B(n323), .C(n236), .Y(n226) );
  OR3X4 U239 ( .A(n273), .B(n227), .C(n232), .Y(n301) );
  NAND2BX2 U240 ( .AN(rst), .B(n269), .Y(n275) );
  INVXL U241 ( .A(n207), .Y(n215) );
  BUFX2 U242 ( .A(rem[14]), .Y(n216) );
  NAND2BX2 U243 ( .AN(n323), .B(count[0]), .Y(n243) );
  NAND2X1 U244 ( .A(n221), .B(n250), .Y(n218) );
  NAND2X2 U245 ( .A(n236), .B(n217), .Y(n219) );
  NAND2X2 U246 ( .A(n218), .B(n219), .Y(n252) );
  INVXL U247 ( .A(n250), .Y(n217) );
  INVX2 U248 ( .A(n225), .Y(n323) );
  CLKINVX2 U249 ( .A(n221), .Y(n236) );
  NAND3BX2 U250 ( .AN(count[3]), .B(n222), .C(n257), .Y(n234) );
  OR4X2 U251 ( .A(count[2]), .B(n324), .C(n221), .D(count[0]), .Y(n326) );
  INVXL U252 ( .A(n245), .Y(n253) );
  NOR3BX1 U253 ( .AN(n249), .B(n226), .C(count[0]), .Y(n232) );
  INVX2 U254 ( .A(n254), .Y(n273) );
  INVXL U255 ( .A(n275), .Y(n276) );
  OA21XL U256 ( .A0(count[0]), .A1(n223), .B0(n254), .Y(n255) );
  CLKINVX1 U257 ( .A(n244), .Y(n248) );
  INVX2 U258 ( .A(n274), .Y(n297) );
  NAND2BX2 U259 ( .AN(rst), .B(n328), .Y(n327) );
  OAI211XL U260 ( .A0(n248), .A1(n245), .B0(n256), .C0(n260), .Y(n246) );
  NAND2BX2 U261 ( .AN(rst), .B(n301), .Y(n295) );
  OR2X2 U262 ( .A(n272), .B(n212), .Y(n227) );
  INVX4 U263 ( .A(n317), .Y(n308) );
  OAI2BB1X4 U264 ( .A0N(n278), .A1N(n277), .B0(n276), .Y(n310) );
  NAND2BX1 U265 ( .AN(n273), .B(n268), .Y(n260) );
  OR2XL U266 ( .A(n275), .B(n270), .Y(n279) );
  NAND2BX1 U267 ( .AN(rst), .B(n295), .Y(n274) );
  INVXL U268 ( .A(n295), .Y(n296) );
  OAI2BB1X4 U269 ( .A0N(n268), .A1N(n234), .B0(n269), .Y(n318) );
  AO2B2XL U270 ( .B0(n208), .B1(n318), .A0(N152), .A1N(n317), .Y(n314) );
  AO2B2XL U271 ( .B0(n216), .B1(n318), .A0(N153), .A1N(n317), .Y(n316) );
  OAI221XL U272 ( .A0(n310), .A1(n303), .B0(n42), .B1(n312), .C0(n302), .Y(
        n191) );
  INVXL U273 ( .A(rem[8]), .Y(n303) );
  NOR2XL U274 ( .A(n244), .B(n245), .Y(n247) );
  OAI221XL U275 ( .A0(n305), .A1(n310), .B0(n41), .B1(n312), .C0(n304), .Y(
        n192) );
  INVXL U276 ( .A(rem[9]), .Y(n305) );
  OAI221XL U277 ( .A0(n311), .A1(n310), .B0(n39), .B1(n312), .C0(n309), .Y(
        n194) );
  INVXL U278 ( .A(rem[11]), .Y(n311) );
  OAI221XL U279 ( .A0(n307), .A1(n310), .B0(n40), .B1(n312), .C0(n306), .Y(
        n193) );
  INVXL U280 ( .A(rem[10]), .Y(n307) );
  INVXL U281 ( .A(rem[7]), .Y(n300) );
  NAND2BX1 U282 ( .AN(n249), .B(n248), .Y(n250) );
  AO2B2X1 U283 ( .B0(n242), .B1(n253), .A0(count[2]), .A1N(n251), .Y(n199) );
  XNOR2XL U284 ( .A(count[2]), .B(n243), .Y(n242) );
  AO2B2XL U285 ( .B0(rem[10]), .B1(n329), .A0(R[1]), .A1N(n328), .Y(n160) );
  NAND2BXL U286 ( .AN(n323), .B(count[3]), .Y(n324) );
  AO2B2XL U287 ( .B0(rem[12]), .B1(n329), .A0(R[3]), .A1N(n328), .Y(n162) );
  AO2B2XL U288 ( .B0(rem[11]), .B1(n329), .A0(R[2]), .A1N(n328), .Y(n161) );
  AO2B2XL U289 ( .B0(n208), .B1(n329), .A0(R[4]), .A1N(n328), .Y(n163) );
  AO2B2XL U290 ( .B0(n216), .B1(n329), .A0(R[5]), .A1N(n328), .Y(n164) );
  AO2B2XL U291 ( .B0(rem[9]), .B1(n329), .A0(R[0]), .A1N(n328), .Y(n159) );
  AO21XL U292 ( .A0(rem[0]), .A1(n318), .B0(n271), .Y(n182) );
  INVXL U293 ( .A(count[0]), .Y(n257) );
  OR2X2 U294 ( .A(rst), .B(n261), .Y(n238) );
  INVX2 U295 ( .A(n310), .Y(n320) );
  INVX2 U296 ( .A(n312), .Y(n319) );
  INVX2 U297 ( .A(n279), .Y(n292) );
  INVX2 U298 ( .A(n260), .Y(n331) );
  NAND2BX2 U299 ( .AN(n275), .B(n211), .Y(n317) );
  INVX2 U300 ( .A(n277), .Y(n334) );
  INVX2 U301 ( .A(n240), .Y(n251) );
  NAND2BX2 U302 ( .AN(n268), .B(n256), .Y(n240) );
  OAI2BB1X1 U303 ( .A0N(n237), .A1N(n229), .B0(n332), .Y(n245) );
  NAND2BX2 U304 ( .AN(n229), .B(n276), .Y(n312) );
  OAI2B11X2 U305 ( .A1N(remc[6]), .A0(n312), .B0(n294), .C0(n293), .Y(n189) );
  AOI22XL U306 ( .A0(rem[7]), .A1(n318), .B0(N146), .B1(n308), .Y(n294) );
  AOI22XL U307 ( .A0(n320), .A1(rem[6]), .B0(A[7]), .B1(n292), .Y(n293) );
  OAI2B11X2 U308 ( .A1N(remc[5]), .A0(n312), .B0(n291), .C0(n290), .Y(n188) );
  AOI22XL U309 ( .A0(rem[6]), .A1(n318), .B0(N145), .B1(n308), .Y(n291) );
  AOI22XL U310 ( .A0(n320), .A1(rem[5]), .B0(A[6]), .B1(n292), .Y(n290) );
  OAI2B11X2 U311 ( .A1N(remc[4]), .A0(n312), .B0(n289), .C0(n288), .Y(n187) );
  AOI22XL U312 ( .A0(rem[5]), .A1(n318), .B0(N144), .B1(n308), .Y(n289) );
  AOI22XL U313 ( .A0(n320), .A1(rem[4]), .B0(A[5]), .B1(n292), .Y(n288) );
  OAI2B11X2 U314 ( .A1N(remc[3]), .A0(n312), .B0(n287), .C0(n286), .Y(n186) );
  AOI22XL U315 ( .A0(rem[4]), .A1(n318), .B0(N143), .B1(n308), .Y(n287) );
  AOI22XL U316 ( .A0(n320), .A1(rem[3]), .B0(A[4]), .B1(n292), .Y(n286) );
  OAI2B11X2 U317 ( .A1N(remc[2]), .A0(n312), .B0(n285), .C0(n284), .Y(n185) );
  AOI22XL U318 ( .A0(rem[3]), .A1(n318), .B0(N142), .B1(n308), .Y(n285) );
  AOI22XL U319 ( .A0(n320), .A1(rem[2]), .B0(A[3]), .B1(n292), .Y(n284) );
  OAI2B11X2 U320 ( .A1N(remc[1]), .A0(n312), .B0(n283), .C0(n282), .Y(n184) );
  AOI22XL U321 ( .A0(rem[2]), .A1(n318), .B0(N141), .B1(n308), .Y(n283) );
  AOI22XL U322 ( .A0(n320), .A1(rem[1]), .B0(A[2]), .B1(n292), .Y(n282) );
  OAI2B11X2 U323 ( .A1N(remc[0]), .A0(n312), .B0(n281), .C0(n280), .Y(n183) );
  AOI22XL U324 ( .A0(rem[1]), .A1(n318), .B0(N140), .B1(n308), .Y(n281) );
  AOI22XL U325 ( .A0(n320), .A1(rem[0]), .B0(A[1]), .B1(n292), .Y(n280) );
  NAND2BX2 U326 ( .AN(n322), .B(n321), .Y(n202) );
  AOI22XL U327 ( .A0(n320), .A1(n216), .B0(remc[14]), .B1(n319), .Y(n321) );
  AO2B2X2 U328 ( .B0(rem[15]), .B1(n318), .A0(N154), .A1N(n317), .Y(n322) );
  NAND2BX2 U329 ( .AN(n316), .B(n315), .Y(n196) );
  AOI22XL U330 ( .A0(n320), .A1(n208), .B0(remc[13]), .B1(n319), .Y(n315) );
  NAND2BX2 U331 ( .AN(n314), .B(n313), .Y(n195) );
  AOI22XL U332 ( .A0(n320), .A1(rem[12]), .B0(remc[12]), .B1(n319), .Y(n313)
         );
  AO2B2X2 U333 ( .B0(N139), .B1(n308), .A0(A[0]), .A1N(n279), .Y(n271) );
  AO2B2X2 U334 ( .B0(n297), .B1(rem[7]), .A0(n296), .A1N(n299), .Y(n175) );
  AO2B2X2 U335 ( .B0(n297), .B1(rem[1]), .A0(remc[1]), .A1N(n295), .Y(n181) );
  AO2B2X2 U336 ( .B0(n297), .B1(rem[2]), .A0(remc[2]), .A1N(n295), .Y(n180) );
  AO2B2X2 U337 ( .B0(n297), .B1(rem[3]), .A0(remc[3]), .A1N(n295), .Y(n179) );
  AO2B2X2 U338 ( .B0(n297), .B1(rem[4]), .A0(remc[4]), .A1N(n295), .Y(n178) );
  AO2B2X2 U339 ( .B0(n297), .B1(rem[5]), .A0(remc[5]), .A1N(n295), .Y(n177) );
  AO2B2X2 U340 ( .B0(n297), .B1(rem[6]), .A0(remc[6]), .A1N(n295), .Y(n176) );
  AO2B2X2 U341 ( .B0(n297), .B1(rem[0]), .A0(remc[0]), .A1N(n295), .Y(n203) );
  INVX2 U342 ( .A(n238), .Y(n268) );
  AO2B2X1 U343 ( .B0(n253), .B1(n241), .A0(n225), .A1N(n251), .Y(n200) );
  XNOR2XL U344 ( .A(n225), .B(n257), .Y(n241) );
  AOI22XL U345 ( .A0(N151), .A1(n308), .B0(rem[12]), .B1(n318), .Y(n309) );
  AOI22XL U346 ( .A0(N150), .A1(n308), .B0(rem[11]), .B1(n318), .Y(n306) );
  AOI22XL U347 ( .A0(N149), .A1(n308), .B0(rem[10]), .B1(n318), .Y(n304) );
  OAI221X2 U348 ( .A0(n300), .A1(n310), .B0(n312), .B1(n299), .C0(n298), .Y(
        n190) );
  AOI22XL U349 ( .A0(N147), .A1(n308), .B0(rem[8]), .B1(n318), .Y(n298) );
  AOI22XL U350 ( .A0(N148), .A1(n308), .B0(rem[9]), .B1(n318), .Y(n302) );
  NAND3BX2 U351 ( .AN(n249), .B(count[0]), .C(n222), .Y(n254) );
  MX2X1 U352 ( .A(n247), .B(n246), .S0(count[3]), .Y(n198) );
  AO2B2X2 U353 ( .B0(n259), .B1(n332), .A0(n258), .A1N(n257), .Y(n201) );
  INVX2 U354 ( .A(n256), .Y(n258) );
  AO2B2X2 U355 ( .B0(n264), .B1(n257), .A0(n255), .A1N(n261), .Y(n259) );
  NAND2X2 U356 ( .A(n335), .B(n336), .Y(N17) );
  NAND2X2 U357 ( .A(n332), .B(n334), .Y(n335) );
  NAND2X2 U358 ( .A(n332), .B(n333), .Y(n336) );
  NAND2BX2 U359 ( .AN(rst), .B(n326), .Y(n328) );
  AO2B2X2 U360 ( .B0(rem[15]), .B1(n329), .A0(R[6]), .A1N(n328), .Y(n165) );
  AO2B2X2 U361 ( .B0(rem[0]), .B1(n329), .A0(Q[0]), .A1N(n328), .Y(n166) );
  AO2B2X2 U362 ( .B0(rem[1]), .B1(n329), .A0(Q[1]), .A1N(n328), .Y(n167) );
  AO2B2X2 U363 ( .B0(rem[2]), .B1(n329), .A0(Q[2]), .A1N(n328), .Y(n168) );
  AO2B2X2 U364 ( .B0(rem[3]), .B1(n329), .A0(Q[3]), .A1N(n328), .Y(n169) );
  AO2B2X2 U365 ( .B0(rem[4]), .B1(n329), .A0(Q[4]), .A1N(n328), .Y(n170) );
  AO2B2X2 U366 ( .B0(rem[5]), .B1(n329), .A0(Q[5]), .A1N(n328), .Y(n171) );
  AO2B2X2 U367 ( .B0(rem[6]), .B1(n329), .A0(Q[6]), .A1N(n328), .Y(n172) );
  AO2B2X2 U368 ( .B0(rem[7]), .B1(n329), .A0(Q[7]), .A1N(n328), .Y(n173) );
  OA21X1 U369 ( .A0(n266), .A1(n265), .B0(n332), .Y(N16) );
  NAND3BX2 U370 ( .AN(n264), .B(n230), .C(n270), .Y(n265) );
  AOI21BX2 U371 ( .A0(n325), .A1(n326), .B0N(n332), .Y(n174) );
  INVX2 U372 ( .A(remc[7]), .Y(n299) );
  INVX2 U373 ( .A(rst), .Y(n332) );
  NOR2X2 U374 ( .A(n228), .B(n263), .Y(n235) );
  NAND2BX1 U375 ( .AN(n223), .B(out_valid), .Y(n325) );
  OAI31XL U376 ( .A0(n207), .A1(n263), .A2(n262), .B0(n278), .Y(n266) );
  NAND3BXL U377 ( .AN(n213), .B(n207), .C(n263), .Y(n229) );
  INVXL U378 ( .A(n212), .Y(n230) );
  OR2X2 U379 ( .A(n224), .B(n263), .Y(n231) );
  INVXL U380 ( .A(n231), .Y(n233) );
  NOR2XL U381 ( .A(remc[15]), .B(n229), .Y(n333) );
  INVXL U382 ( .A(n229), .Y(n264) );
  NAND3BXL U383 ( .AN(n213), .B(n210), .C(n215), .Y(n277) );
  OAI2BB1X4 U384 ( .A0N(n231), .A1N(n267), .B0(n332), .Y(n269) );
endmodule

