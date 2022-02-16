/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP2
// Date      : Tue Jan 18 10:43:13 2022
/////////////////////////////////////////////////////////////


module check ( c_x, c_y, r, x_axis, y_axis, in_circle );
  input [3:0] c_x;
  input [3:0] c_y;
  input [3:0] r;
  input [3:0] x_axis;
  input [3:0] y_axis;
  output in_circle;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, N37, N36, N35, N34, N33, N32,
         N30, N29, N28, N27, N26, N25, N24, N22, \mult_139/n13 ,
         \mult_139/n12 , \mult_139/n11 , \mult_139/n10 , \mult_139/n9 ,
         \mult_139/n8 , \mult_139/n7 , \mult_139/n6 , \mult_139/n5 ,
         \mult_139/n4 , \mult_139/n3 , \mult_139/n2 , \add_138/carry[7] ,
         \add_138/carry[6] , \add_138/carry[5] , \add_138/carry[4] ,
         \add_138/carry[3] , \mult_138_2/n13 , \mult_138_2/n12 ,
         \mult_138_2/n11 , \mult_138_2/n10 , \mult_138_2/n9 , \mult_138_2/n8 ,
         \mult_138_2/n7 , \mult_138_2/n6 , \mult_138_2/n5 , \mult_138_2/n4 ,
         \mult_138_2/n3 , \mult_138_2/n2 , \mult_138/n13 , \mult_138/n12 ,
         \mult_138/n11 , \mult_138/n10 , \mult_138/n9 , \mult_138/n8 ,
         \mult_138/n7 , \mult_138/n6 , \mult_138/n5 , \mult_138/n4 ,
         \mult_138/n3 , \mult_138/n2 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88;
  wire   [3:0] ax;
  wire   [3:0] ay;
  wire   [8:0] distance;
  wire   [7:0] pow2_r;
  assign pow2_r[0] = r[0];

  OAI31XL U3 ( .A0(n24), .A1(n25), .A2(n26), .B0(n27), .Y(ay[3]) );
  OAI211X1 U6 ( .A0(n28), .A1(n29), .B0(n24), .C0(n30), .Y(n27) );
  OA21XL U7 ( .A0(n31), .A1(c_y[2]), .B0(n32), .Y(n28) );
  OA22X1 U8 ( .A0(n31), .A1(c_y[2]), .B0(n33), .B1(n29), .Y(n25) );
  OAI22XL U9 ( .A0(n34), .A1(n35), .B0(n24), .B1(n36), .Y(ay[2]) );
  XOR2X1 U10 ( .A(n33), .B(n37), .Y(n36) );
  XNOR2X1 U11 ( .A(n32), .B(n37), .Y(n35) );
  OAI2BB1X1 U12 ( .A0N(n38), .A1N(c_y[1]), .B0(n39), .Y(n32) );
  OAI21XL U13 ( .A0(c_y[1]), .A1(n38), .B0(n40), .Y(n39) );
  CLKINVX1 U14 ( .A(y_axis[1]), .Y(n40) );
  XNOR2X1 U16 ( .A(n43), .B(n44), .Y(n42) );
  XOR2X1 U17 ( .A(n38), .B(n44), .Y(n41) );
  XOR2X1 U18 ( .A(y_axis[1]), .B(c_y[1]), .Y(n44) );
  CLKINVX1 U21 ( .A(n26), .Y(n30) );
  XOR2X1 U22 ( .A(n45), .B(y_axis[3]), .Y(n26) );
  AOI2BB1X1 U24 ( .A0N(c_y[2]), .A1N(n31), .B0(n29), .Y(n37) );
  NOR2BX1 U25 ( .AN(c_y[2]), .B(y_axis[2]), .Y(n29) );
  CLKINVX1 U26 ( .A(y_axis[2]), .Y(n31) );
  OA21XL U27 ( .A0(c_y[1]), .A1(n43), .B0(n47), .Y(n33) );
  OAI2BB1X1 U28 ( .A0N(n43), .A1N(c_y[1]), .B0(y_axis[1]), .Y(n47) );
  CLKINVX1 U29 ( .A(c_y[3]), .Y(n45) );
  NAND2BX1 U30 ( .AN(n43), .B(n38), .Y(N30) );
  NAND2X1 U31 ( .A(y_axis[0]), .B(n48), .Y(n38) );
  NOR2X1 U32 ( .A(n48), .B(y_axis[0]), .Y(n43) );
  CLKINVX1 U33 ( .A(c_y[0]), .Y(n48) );
  OAI31XL U34 ( .A0(n49), .A1(n50), .A2(n51), .B0(n52), .Y(ax[3]) );
  OAI211X1 U35 ( .A0(n53), .A1(n54), .B0(n49), .C0(n55), .Y(n52) );
  OA21XL U36 ( .A0(n56), .A1(c_x[2]), .B0(n57), .Y(n53) );
  OA22X1 U37 ( .A0(n56), .A1(c_x[2]), .B0(n58), .B1(n54), .Y(n50) );
  OAI22XL U38 ( .A0(n59), .A1(n60), .B0(n49), .B1(n61), .Y(ax[2]) );
  XOR2X1 U39 ( .A(n58), .B(n62), .Y(n61) );
  XNOR2X1 U40 ( .A(n57), .B(n62), .Y(n60) );
  OAI2BB1X1 U41 ( .A0N(n63), .A1N(c_x[1]), .B0(n64), .Y(n57) );
  OAI21XL U42 ( .A0(c_x[1]), .A1(n63), .B0(n65), .Y(n64) );
  CLKINVX1 U43 ( .A(x_axis[1]), .Y(n65) );
  XNOR2X1 U45 ( .A(n68), .B(n69), .Y(n67) );
  XOR2X1 U46 ( .A(n63), .B(n69), .Y(n66) );
  XOR2X1 U47 ( .A(x_axis[1]), .B(c_x[1]), .Y(n69) );
  CLKINVX1 U50 ( .A(n51), .Y(n55) );
  XOR2X1 U51 ( .A(n70), .B(x_axis[3]), .Y(n51) );
  AOI2BB1X1 U53 ( .A0N(c_x[2]), .A1N(n56), .B0(n54), .Y(n62) );
  NOR2BX1 U54 ( .AN(c_x[2]), .B(x_axis[2]), .Y(n54) );
  CLKINVX1 U55 ( .A(x_axis[2]), .Y(n56) );
  OA21XL U56 ( .A0(c_x[1]), .A1(n68), .B0(n72), .Y(n58) );
  OAI2BB1X1 U57 ( .A0N(n68), .A1N(c_x[1]), .B0(x_axis[1]), .Y(n72) );
  CLKINVX1 U58 ( .A(c_x[3]), .Y(n70) );
  NAND2BX1 U59 ( .AN(n68), .B(n63), .Y(N22) );
  NAND2X1 U60 ( .A(x_axis[0]), .B(n73), .Y(n63) );
  NOR2X1 U61 ( .A(n73), .B(x_axis[0]), .Y(n68) );
  CLKINVX1 U62 ( .A(c_x[0]), .Y(n73) );
  ADDHXL \mult_139/U7  ( .A(r[2]), .B(\mult_139/n11 ), .CO(\mult_139/n6 ), .S(
        \mult_139/n7 ) );
  ADDHXL \mult_139/U6  ( .A(r[1]), .B(\mult_139/n13 ), .CO(\mult_139/n5 ), .S(
        pow2_r[2]) );
  ADDHXL \mult_139/U5  ( .A(\mult_139/n12 ), .B(\mult_139/n5 ), .CO(
        \mult_139/n4 ), .S(pow2_r[3]) );
  ADDFXL \mult_139/U4  ( .A(\mult_139/n7 ), .B(\mult_139/n10 ), .CI(
        \mult_139/n4 ), .CO(\mult_139/n3 ), .S(pow2_r[4]) );
  ADDFXL \mult_139/U3  ( .A(\mult_139/n6 ), .B(\mult_139/n9 ), .CI(
        \mult_139/n3 ), .CO(\mult_139/n2 ), .S(pow2_r[5]) );
  ADDFXL \mult_139/U2  ( .A(\mult_139/n8 ), .B(r[3]), .CI(\mult_139/n2 ), .CO(
        pow2_r[7]), .S(pow2_r[6]) );
  ADDFHX4 \add_138/U1_4  ( .A(N26), .B(N34), .CI(\add_138/carry[4] ), .CO(
        \add_138/carry[5] ), .S(distance[4]) );
  ADDFHX4 \add_138/U1_6  ( .A(N28), .B(N36), .CI(\add_138/carry[6] ), .CO(
        \add_138/carry[7] ), .S(distance[6]) );
  ADDFHX4 \add_138/U1_7  ( .A(N29), .B(N37), .CI(\add_138/carry[7] ), .CO(
        distance[8]), .S(distance[7]) );
  ADDHXL \mult_138_2/U7  ( .A(ay[2]), .B(\mult_138_2/n11 ), .CO(
        \mult_138_2/n6 ), .S(\mult_138_2/n7 ) );
  ADDHXL \mult_138_2/U6  ( .A(ay[1]), .B(\mult_138_2/n13 ), .CO(
        \mult_138_2/n5 ), .S(N32) );
  ADDHXL \mult_138_2/U5  ( .A(\mult_138_2/n12 ), .B(\mult_138_2/n5 ), .CO(
        \mult_138_2/n4 ), .S(N33) );
  ADDFXL \mult_138_2/U4  ( .A(\mult_138_2/n7 ), .B(\mult_138_2/n10 ), .CI(
        \mult_138_2/n4 ), .CO(\mult_138_2/n3 ), .S(N34) );
  ADDFXL \mult_138_2/U3  ( .A(\mult_138_2/n6 ), .B(\mult_138_2/n9 ), .CI(
        \mult_138_2/n3 ), .CO(\mult_138_2/n2 ), .S(N35) );
  ADDFXL \mult_138_2/U2  ( .A(\mult_138_2/n8 ), .B(ay[3]), .CI(\mult_138_2/n2 ), .CO(N37), .S(N36) );
  ADDHXL \mult_138/U7  ( .A(ax[2]), .B(\mult_138/n11 ), .CO(\mult_138/n6 ), 
        .S(\mult_138/n7 ) );
  ADDHXL \mult_138/U5  ( .A(\mult_138/n12 ), .B(\mult_138/n5 ), .CO(
        \mult_138/n4 ), .S(N25) );
  ADDFXL \mult_138/U4  ( .A(\mult_138/n7 ), .B(\mult_138/n10 ), .CI(
        \mult_138/n4 ), .CO(\mult_138/n3 ), .S(N26) );
  ADDFXL \mult_138/U3  ( .A(\mult_138/n6 ), .B(\mult_138/n9 ), .CI(
        \mult_138/n3 ), .CO(\mult_138/n2 ), .S(N27) );
  ADDFXL \mult_138/U2  ( .A(\mult_138/n8 ), .B(ax[3]), .CI(\mult_138/n2 ), 
        .CO(N29), .S(N28) );
  ADDFHX2 \add_138/U1_5  ( .A(N27), .B(N35), .CI(\add_138/carry[5] ), .CO(
        \add_138/carry[6] ), .S(distance[5]) );
  ADDFXL \add_138/U1_3  ( .A(N25), .B(N33), .CI(\add_138/carry[3] ), .CO(
        \add_138/carry[4] ), .S(distance[3]) );
  XOR2X1 U1 ( .A(N32), .B(N24), .Y(distance[2]) );
  NAND2XL U2 ( .A(N32), .B(N24), .Y(n9) );
  ADDHX1 U4 ( .A(ax[1]), .B(\mult_138/n13 ), .CO(\mult_138/n5 ), .S(N24) );
  OAI22X2 U5 ( .A0(x_axis[3]), .A1(n70), .B0(n71), .B1(n55), .Y(n49) );
  OAI222X1 U15 ( .A0(pow2_r[6]), .A1(n80), .B0(n79), .B1(n80), .C0(pow2_r[6]), 
        .C1(n79), .Y(n81) );
  INVX6 U19 ( .A(distance[6]), .Y(n79) );
  OAI22X1 U20 ( .A0(n59), .A1(n66), .B0(n67), .B1(n49), .Y(ax[1]) );
  INVX8 U23 ( .A(n49), .Y(n59) );
  AOI21X2 U44 ( .A0(n58), .A1(n62), .B0(n54), .Y(n71) );
  OAI22X4 U48 ( .A0(n34), .A1(n41), .B0(n42), .B1(n24), .Y(ay[1]) );
  INVX8 U49 ( .A(n24), .Y(n34) );
  OAI22X4 U52 ( .A0(y_axis[3]), .A1(n45), .B0(n46), .B1(n30), .Y(n24) );
  OAI222X2 U63 ( .A0(distance[5]), .A1(n78), .B0(distance[5]), .B1(n77), .C0(
        n78), .C1(n77), .Y(n80) );
  OAI31X2 U64 ( .A0(n87), .A1(distance[8]), .A2(distance[7]), .B0(n86), .Y(
        in_circle) );
  INVX3 U65 ( .A(n85), .Y(n86) );
  AOI21X2 U66 ( .A0(n33), .A1(n37), .B0(n29), .Y(n46) );
  CLKINVX1 U67 ( .A(ax[3]), .Y(n3) );
  CLKINVX1 U68 ( .A(N22), .Y(n1) );
  NOR2X1 U69 ( .A(n3), .B(n1), .Y(\mult_138/n10 ) );
  CLKINVX1 U70 ( .A(ax[1]), .Y(n4) );
  CLKINVX1 U71 ( .A(ax[2]), .Y(n2) );
  NOR2X1 U72 ( .A(n4), .B(n2), .Y(\mult_138/n11 ) );
  NOR2X1 U73 ( .A(n2), .B(n1), .Y(\mult_138/n12 ) );
  NOR2X1 U74 ( .A(n4), .B(n1), .Y(\mult_138/n13 ) );
  NOR2X1 U75 ( .A(n3), .B(n2), .Y(\mult_138/n8 ) );
  NOR2X1 U76 ( .A(n4), .B(n3), .Y(\mult_138/n9 ) );
  CLKINVX1 U77 ( .A(ay[3]), .Y(n7) );
  CLKINVX1 U78 ( .A(N30), .Y(n5) );
  NOR2X1 U79 ( .A(n7), .B(n5), .Y(\mult_138_2/n10 ) );
  CLKINVX1 U80 ( .A(ay[1]), .Y(n8) );
  CLKINVX1 U81 ( .A(ay[2]), .Y(n6) );
  NOR2X1 U82 ( .A(n8), .B(n6), .Y(\mult_138_2/n11 ) );
  NOR2X1 U83 ( .A(n6), .B(n5), .Y(\mult_138_2/n12 ) );
  NOR2X1 U84 ( .A(n8), .B(n5), .Y(\mult_138_2/n13 ) );
  NOR2X1 U85 ( .A(n7), .B(n6), .Y(\mult_138_2/n8 ) );
  NOR2X1 U86 ( .A(n8), .B(n7), .Y(\mult_138_2/n9 ) );
  CLKINVX6 U87 ( .A(n9), .Y(\add_138/carry[3] ) );
  CLKINVX6 U88 ( .A(n10), .Y(distance[1]) );
  NAND2X4 U89 ( .A(N30), .B(N22), .Y(n10) );
  XOR2X4 U90 ( .A(N30), .B(N22), .Y(distance[0]) );
  CLKINVX1 U91 ( .A(r[3]), .Y(n13) );
  CLKINVX1 U92 ( .A(pow2_r[0]), .Y(n11) );
  NOR2X1 U93 ( .A(n13), .B(n11), .Y(\mult_139/n10 ) );
  CLKINVX1 U94 ( .A(r[1]), .Y(n14) );
  CLKINVX1 U95 ( .A(r[2]), .Y(n12) );
  NOR2X1 U96 ( .A(n14), .B(n12), .Y(\mult_139/n11 ) );
  NOR2X1 U97 ( .A(n12), .B(n11), .Y(\mult_139/n12 ) );
  NOR2X1 U98 ( .A(n14), .B(n11), .Y(\mult_139/n13 ) );
  NOR2X1 U99 ( .A(n13), .B(n12), .Y(\mult_139/n8 ) );
  NOR2X1 U100 ( .A(n14), .B(n13), .Y(\mult_139/n9 ) );
  CLKINVX1 U101 ( .A(pow2_r[7]), .Y(n87) );
  NOR2BX1 U102 ( .AN(pow2_r[2]), .B(distance[2]), .Y(n23) );
  CLKINVX1 U103 ( .A(distance[0]), .Y(n15) );
  NOR2BX1 U104 ( .AN(distance[2]), .B(pow2_r[2]), .Y(n17) );
  CLKINVX1 U105 ( .A(pow2_r[3]), .Y(n19) );
  OAI22XL U106 ( .A0(n17), .A1(n19), .B0(distance[3]), .B1(n17), .Y(n21) );
  CLKINVX1 U107 ( .A(n23), .Y(n18) );
  OAI22XL U108 ( .A0(distance[3]), .A1(n19), .B0(distance[3]), .B1(n18), .Y(
        n20) );
  AOI221XL U109 ( .A0(pow2_r[3]), .A1(n23), .B0(n22), .B1(n21), .C0(n20), .Y(
        n83) );
  CLKINVX1 U110 ( .A(distance[4]), .Y(n76) );
  NOR2X1 U111 ( .A(n76), .B(pow2_r[4]), .Y(n74) );
  CLKINVX1 U112 ( .A(pow2_r[5]), .Y(n78) );
  OAI22XL U113 ( .A0(n74), .A1(n78), .B0(distance[5]), .B1(n74), .Y(n75) );
  OAI21XL U114 ( .A0(pow2_r[6]), .A1(n79), .B0(n75), .Y(n82) );
  NAND2X1 U115 ( .A(pow2_r[4]), .B(n76), .Y(n77) );
  OA21XL U116 ( .A0(n83), .A1(n82), .B0(n81), .Y(n84) );
  AOI211X1 U117 ( .A0(n87), .A1(distance[7]), .B0(distance[8]), .C0(n84), .Y(
        n85) );
  CLKINVX1 U118 ( .A(distance[1]), .Y(n88) );
  OAI21XL U119 ( .A0(pow2_r[0]), .A1(n15), .B0(n88), .Y(n16) );
  CLKINVX1 U120 ( .A(n16), .Y(n22) );
endmodule


module SET_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX4 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX4 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX4 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX4 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX4 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX4 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, in_circle,
         \NState[0] , N24, N25, N26, N27, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N45, in_A, in_B, in_C, N53,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N73, N76, N83, N84, N85, N86, N87, N88, N89, N90, N94,
         N95, N97, N98, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N129, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N140, N144, N145, N146, N147, N148,
         N149, N150, N151, N196, N197, N198, N199, N200, N201, N202, N203,
         N204, N205, N206, N207, N213, N214, N215, N216, N218, N219, N220,
         N221, N222, N223, N224, N225, N231, N232, N233, N234, N237, N239,
         N240, N241, N242, N243, N244, N245, N246, N247, n7, n8, n9, n10, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, N254, N253, N252, N250, N249, N248, n73, n75, n77,
         n79, n81, n83, n85, n87, n89, n91, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116;
  wire   [3:0] x;
  wire   [3:0] y;
  wire   [3:0] r;
  wire   [3:0] x_axis;
  wire   [3:0] y_axis;
  wire   [3:0] CState;
  wire   [7:1] \add_99/carry ;
  wire   [7:1] \add_98/carry ;
  wire   [7:1] \add_97/carry ;

  CLKINVX6 I_36 ( .A(N139), .Y(N140) );
  CLKINVX6 I_35 ( .A(N136), .Y(N137) );
  CLKINVX6 I_33 ( .A(N132), .Y(N133) );
  CLKINVX6 I_29 ( .A(N97), .Y(N98) );
  CLKINVX6 I_27 ( .A(N94), .Y(N95) );
  CLKINVX6 I_21 ( .A(N71), .Y(N216) );
  CLKINVX6 I_20 ( .A(N68), .Y(N69) );
  CLKINVX6 I_19 ( .A(N65), .Y(N66) );
  CLKINVX6 I_18 ( .A(N62), .Y(N63) );
  CLKINVX6 I_17 ( .A(N59), .Y(N60) );
  CLKINVX6 I_16 ( .A(N56), .Y(N57) );
  AND2X8 C538 ( .A(N242), .B(N247), .Y(N45) );
  CLKINVX6 I_14 ( .A(N42), .Y(N43) );
  CLKINVX6 I_13 ( .A(N39), .Y(N40) );
  CLKINVX6 I_12 ( .A(N36), .Y(N37) );
  CLKINVX6 I_11 ( .A(N33), .Y(N34) );
  CLKINVX6 I_10 ( .A(N30), .Y(N31) );
  CLKINVX6 I_3 ( .A(N246), .Y(N247) );
  OR2X8 C466 ( .A(y_axis[0]), .B(N245), .Y(N246) );
  OR2X8 C465 ( .A(y_axis[1]), .B(N244), .Y(N245) );
  OR2X8 C464 ( .A(y_axis[2]), .B(N243), .Y(N244) );
  CLKINVX6 I_1 ( .A(N241), .Y(N242) );
  OR2X8 C461 ( .A(x_axis[0]), .B(N240), .Y(N241) );
  OR2X8 C460 ( .A(x_axis[1]), .B(N239), .Y(N240) );
  OR2X8 C459 ( .A(x_axis[2]), .B(N76), .Y(N239) );
  OR2X8 C203 ( .A(N134), .B(N129), .Y(N138) );
  OR2X8 C198 ( .A(N134), .B(in_B), .Y(N135) );
  OR2X8 C123 ( .A(N24), .B(N25), .Y(N70) );
  OR2X8 C113 ( .A(N24), .B(CState[1]), .Y(N64) );
  AND2X8 C97 ( .A(N24), .B(N25), .Y(N53) );
  OR2X8 C31 ( .A(CState[2]), .B(N25), .Y(N32) );
  AND2X8 C24 ( .A(N24), .B(N25), .Y(N27) );
  DFFSX1 \y_axis_reg[0]  ( .D(n72), .CK(clk), .SN(n9), .Q(y_axis[0]) );
  DFFSX1 \x_axis_reg[0]  ( .D(n69), .CK(clk), .SN(n9), .Q(x_axis[0]) );
  EDFFX4 \r_reg[3]  ( .D(N199), .E(N232), .CK(clk), .Q(r[3]) );
  EDFFX4 \r_reg[2]  ( .D(N198), .E(N232), .CK(clk), .Q(r[2]) );
  EDFFX4 \r_reg[1]  ( .D(N197), .E(N232), .CK(clk), .Q(r[1]) );
  EDFFX4 \r_reg[0]  ( .D(N196), .E(N232), .CK(clk), .Q(r[0]) );
  EDFFX4 \x_reg[1]  ( .D(N201), .E(N232), .CK(clk), .Q(x[1]) );
  EDFFX4 \x_reg[0]  ( .D(N200), .E(N232), .CK(clk), .Q(x[0]) );
  EDFFX4 in_C_reg ( .D(in_circle), .E(N231), .CK(clk), .Q(in_C) );
  CLKINVX1 U3 ( .A(n12), .Y(n7) );
  CLKINVX1 U4 ( .A(n10), .Y(n8) );
  AOI211X1 U11 ( .A0(N45), .A1(N43), .B0(N40), .C0(N37), .Y(n10) );
  AOI211X1 U12 ( .A0(N45), .A1(N43), .B0(N34), .C0(N31), .Y(n12) );
  CLKINVX1 U13 ( .A(n13), .Y(\NState[0] ) );
  CLKINVX1 U15 ( .A(n15), .Y(n14) );
  AOI32X1 U16 ( .A0(N27), .A1(N26), .A2(en), .B0(N43), .B1(n16), .Y(n15) );
  CLKINVX1 U17 ( .A(N45), .Y(n16) );
  NAND2BX1 U18 ( .AN(mode[0]), .B(mode[1]), .Y(N97) );
  NAND2BX1 U19 ( .AN(mode[1]), .B(mode[0]), .Y(N94) );
  NAND2BX1 U20 ( .AN(N70), .B(N26), .Y(N71) );
  OR2X1 U21 ( .A(N67), .B(N26), .Y(N68) );
  NAND2BX1 U22 ( .AN(N64), .B(N26), .Y(N65) );
  OR2X1 U23 ( .A(N61), .B(N26), .Y(N62) );
  NAND2BX1 U24 ( .AN(N58), .B(N26), .Y(N59) );
  OR2X1 U25 ( .A(N55), .B(N26), .Y(N56) );
  OR2X1 U26 ( .A(N41), .B(N26), .Y(N42) );
  NAND2BX1 U27 ( .AN(N38), .B(N26), .Y(N39) );
  OR2X1 U28 ( .A(N35), .B(N26), .Y(N36) );
  NAND2BX1 U29 ( .AN(N32), .B(N26), .Y(N33) );
  OR2X1 U30 ( .A(N29), .B(N26), .Y(N30) );
  AOI211X1 U33 ( .A0(n18), .A1(N57), .B0(N233), .C0(N234), .Y(n17) );
  AND2X1 U34 ( .A(N63), .B(n18), .Y(N234) );
  AND2X1 U35 ( .A(N60), .B(n18), .Y(N233) );
  AND2X1 U36 ( .A(N66), .B(n18), .Y(N231) );
  OAI21XL U38 ( .A0(n19), .A1(n20), .B0(n21), .Y(N225) );
  AOI222XL U40 ( .A0(N98), .A1(N127), .B0(N109), .B1(n24), .C0(N95), .C1(N118), 
        .Y(n19) );
  OAI21XL U41 ( .A0(n25), .A1(n20), .B0(n26), .Y(N224) );
  AOI222XL U43 ( .A0(N126), .A1(N98), .B0(N108), .B1(n24), .C0(N117), .C1(N95), 
        .Y(n25) );
  OAI21XL U44 ( .A0(n27), .A1(n20), .B0(n28), .Y(N223) );
  AOI22X1 U45 ( .A0(N149), .A1(n22), .B0(candidate[5]), .B1(n23), .Y(n28) );
  AOI222XL U46 ( .A0(N125), .A1(N98), .B0(N107), .B1(n24), .C0(N116), .C1(N95), 
        .Y(n27) );
  OAI21XL U47 ( .A0(n29), .A1(n20), .B0(n30), .Y(N222) );
  AOI22X1 U48 ( .A0(N148), .A1(n22), .B0(candidate[4]), .B1(n23), .Y(n30) );
  AOI222XL U49 ( .A0(N124), .A1(N98), .B0(N106), .B1(n24), .C0(N115), .C1(N95), 
        .Y(n29) );
  OAI21XL U50 ( .A0(n31), .A1(n20), .B0(n32), .Y(N221) );
  AOI222XL U52 ( .A0(N123), .A1(N98), .B0(N105), .B1(n24), .C0(N114), .C1(N95), 
        .Y(n31) );
  OAI21XL U53 ( .A0(n33), .A1(n20), .B0(n34), .Y(N220) );
  AOI222XL U55 ( .A0(N122), .A1(N98), .B0(N104), .B1(n24), .C0(N113), .C1(N95), 
        .Y(n33) );
  OAI21XL U56 ( .A0(n35), .A1(n20), .B0(n36), .Y(N219) );
  AOI222XL U58 ( .A0(N121), .A1(N98), .B0(N103), .B1(n24), .C0(N112), .C1(N95), 
        .Y(n35) );
  OAI21XL U59 ( .A0(n37), .A1(n20), .B0(n38), .Y(N218) );
  NOR3X1 U63 ( .A(N140), .B(N137), .C(N133), .Y(n39) );
  NOR4X1 U64 ( .A(n20), .B(n24), .C(N95), .D(N98), .Y(n40) );
  AOI222XL U65 ( .A0(N120), .A1(N98), .B0(N102), .B1(n24), .C0(N111), .C1(N95), 
        .Y(n37) );
  NAND2BX1 U69 ( .AN(N26), .B(N73), .Y(n42) );
  NAND2X1 U70 ( .A(N53), .B(N26), .Y(n41) );
  CLKINVX1 U71 ( .A(n20), .Y(N214) );
  NOR2X1 U72 ( .A(N76), .B(n20), .Y(N213) );
  CLKINVX1 U74 ( .A(n43), .Y(N207) );
  AOI222XL U75 ( .A0(central[3]), .A1(N63), .B0(central[19]), .B1(N57), .C0(
        central[11]), .C1(N60), .Y(n43) );
  CLKINVX1 U76 ( .A(n44), .Y(N206) );
  AOI222XL U77 ( .A0(central[2]), .A1(N63), .B0(central[18]), .B1(N57), .C0(
        central[10]), .C1(N60), .Y(n44) );
  CLKINVX1 U78 ( .A(n45), .Y(N205) );
  AOI222XL U79 ( .A0(central[1]), .A1(N63), .B0(central[17]), .B1(N57), .C0(
        central[9]), .C1(N60), .Y(n45) );
  CLKINVX1 U80 ( .A(n46), .Y(N204) );
  AOI222XL U81 ( .A0(central[0]), .A1(N63), .B0(central[16]), .B1(N57), .C0(
        central[8]), .C1(N60), .Y(n46) );
  CLKINVX1 U82 ( .A(n47), .Y(N203) );
  AOI222XL U83 ( .A0(central[7]), .A1(N63), .B0(central[23]), .B1(N57), .C0(
        central[15]), .C1(N60), .Y(n47) );
  CLKINVX1 U84 ( .A(n48), .Y(N202) );
  AOI222XL U85 ( .A0(central[6]), .A1(N63), .B0(central[22]), .B1(N57), .C0(
        central[14]), .C1(N60), .Y(n48) );
  CLKINVX1 U86 ( .A(n49), .Y(N201) );
  AOI222XL U87 ( .A0(central[5]), .A1(N63), .B0(central[21]), .B1(N57), .C0(
        central[13]), .C1(N60), .Y(n49) );
  CLKINVX1 U88 ( .A(n50), .Y(N200) );
  AOI222XL U89 ( .A0(central[4]), .A1(N63), .B0(central[20]), .B1(N57), .C0(
        central[12]), .C1(N60), .Y(n50) );
  CLKINVX1 U90 ( .A(n51), .Y(N199) );
  AOI222XL U91 ( .A0(radius[3]), .A1(N63), .B0(radius[11]), .B1(N57), .C0(
        radius[7]), .C1(N60), .Y(n51) );
  CLKINVX1 U92 ( .A(n52), .Y(N198) );
  AOI222XL U93 ( .A0(radius[2]), .A1(N63), .B0(radius[10]), .B1(N57), .C0(
        radius[6]), .C1(N60), .Y(n52) );
  CLKINVX1 U94 ( .A(n53), .Y(N197) );
  AOI222XL U95 ( .A0(radius[1]), .A1(N63), .B0(radius[9]), .B1(N57), .C0(
        radius[5]), .C1(N60), .Y(n53) );
  CLKINVX1 U96 ( .A(n54), .Y(N196) );
  AOI222XL U97 ( .A0(radius[0]), .A1(N63), .B0(radius[8]), .B1(N57), .C0(
        radius[4]), .C1(N60), .Y(n54) );
  OR2X1 U98 ( .A(N138), .B(in_C), .Y(N139) );
  NAND2BX1 U99 ( .AN(N135), .B(in_C), .Y(N136) );
  NAND2BX1 U100 ( .AN(N131), .B(in_C), .Y(N132) );
  CLKMX2X6 U102 ( .A(busy), .B(N216), .S0(N215), .Y(n71) );
  CLKMX2X6 U103 ( .A(valid), .B(N216), .S0(N215), .Y(n70) );
  CLKMX2X6 U104 ( .A(x_axis[0]), .B(N87), .S0(N214), .Y(n69) );
  CLKMX2X6 U105 ( .A(x_axis[1]), .B(N88), .S0(N214), .Y(n68) );
  CLKMX2X6 U106 ( .A(x_axis[2]), .B(N89), .S0(N214), .Y(n67) );
  CLKMX2X6 U117 ( .A(candidate[6]), .B(N224), .S0(N237), .Y(n56) );
  CLKMX2X6 U118 ( .A(candidate[7]), .B(N225), .S0(N237), .Y(n55) );
  check U0 ( .c_x(x), .c_y(y), .r(r), .x_axis(x_axis), .y_axis(y_axis), 
        .in_circle(in_circle) );
  SET_DW01_inc_0 r408 ( .A(candidate), .SUM({N151, N150, N149, N148, N147, 
        N146, N145, N144}) );
  DFFRX1 \x_axis_reg[3]  ( .D(n66), .CK(clk), .RN(n18), .Q(x_axis[3]), .QN(N76) );
  DFFRX1 \y_axis_reg[3]  ( .D(n65), .CK(clk), .RN(n18), .Q(y_axis[3]), .QN(
        N243) );
  DFFRX1 \x_axis_reg[2]  ( .D(n67), .CK(clk), .RN(n18), .Q(x_axis[2]) );
  EDFFX1 \y_reg[3]  ( .D(N207), .E(N232), .CK(clk), .Q(y[3]) );
  EDFFXL in_B_reg ( .D(in_circle), .E(N234), .CK(clk), .Q(in_B), .QN(N129) );
  DFFRXL \candidate_reg[0]  ( .D(n62), .CK(clk), .RN(n9), .Q(n126) );
  DFFRXL \candidate_reg[6]  ( .D(n56), .CK(clk), .RN(n9), .Q(n120) );
  DFFRXL \candidate_reg[5]  ( .D(n57), .CK(clk), .RN(n9), .Q(n121) );
  DFFRXL \candidate_reg[1]  ( .D(n61), .CK(clk), .RN(n9), .Q(n125) );
  DFFRXL \candidate_reg[2]  ( .D(n60), .CK(clk), .RN(n9), .Q(n124) );
  DFFRXL \candidate_reg[3]  ( .D(n59), .CK(clk), .RN(n9), .Q(n123) );
  DFFRXL \candidate_reg[4]  ( .D(n58), .CK(clk), .RN(n9), .Q(n122) );
  DFFRXL \candidate_reg[7]  ( .D(n55), .CK(clk), .RN(n9), .Q(n119) );
  DFFRX1 \y_axis_reg[1]  ( .D(n63), .CK(clk), .RN(n9), .Q(y_axis[1]) );
  DFFRX1 \y_axis_reg[2]  ( .D(n64), .CK(clk), .RN(n9), .Q(y_axis[2]) );
  DFFRX1 \x_axis_reg[1]  ( .D(n68), .CK(clk), .RN(n9), .Q(x_axis[1]) );
  DFFRX1 valid_reg ( .D(n70), .CK(clk), .RN(n9), .Q(n118) );
  DFFRX1 busy_reg ( .D(n71), .CK(clk), .RN(n9), .Q(n117) );
  DFFRX2 \CState_reg[0]  ( .D(\NState[0] ), .CK(clk), .RN(n18), .QN(N26) );
  EDFFX1 \x_reg[2]  ( .D(N202), .E(N232), .CK(clk), .Q(x[2]) );
  EDFFX1 \x_reg[3]  ( .D(N203), .E(N232), .CK(clk), .Q(x[3]) );
  EDFFX1 \y_reg[0]  ( .D(N204), .E(N232), .CK(clk), .Q(y[0]) );
  EDFFX1 \y_reg[1]  ( .D(N205), .E(N232), .CK(clk), .Q(y[1]) );
  EDFFX1 \y_reg[2]  ( .D(N206), .E(N232), .CK(clk), .Q(y[2]) );
  DFFRX2 \CState_reg[1]  ( .D(n7), .CK(clk), .RN(n18), .Q(CState[1]), .QN(N25)
         );
  EDFFX4 in_A_reg ( .D(in_circle), .E(N233), .CK(clk), .Q(in_A), .QN(N134) );
  DFFRX2 \CState_reg[2]  ( .D(n8), .CK(clk), .RN(n18), .Q(CState[2]), .QN(N24)
         );
  MX2XL U119 ( .A(y_axis[0]), .B(N83), .S0(N213), .Y(n72) );
  CLKMX2X2 U120 ( .A(y_axis[1]), .B(N84), .S0(N213), .Y(n63) );
  CLKMX2X2 U121 ( .A(y_axis[2]), .B(N85), .S0(N213), .Y(n64) );
  MX2XL U122 ( .A(y_axis[3]), .B(N86), .S0(N213), .Y(n65) );
  CLKMX2X2 U123 ( .A(x_axis[3]), .B(N90), .S0(N214), .Y(n66) );
  AND2X2 U124 ( .A(n39), .B(n40), .Y(n23) );
  OR2X1 U125 ( .A(CState[2]), .B(N25), .Y(N61) );
  OR2X1 U126 ( .A(CState[2]), .B(N25), .Y(N58) );
  OR2X1 U127 ( .A(CState[2]), .B(N25), .Y(N35) );
  AOI22XL U128 ( .A0(N150), .A1(n22), .B0(candidate[6]), .B1(n23), .Y(n26) );
  AOI22XL U129 ( .A0(N151), .A1(n22), .B0(candidate[7]), .B1(n23), .Y(n21) );
  AOI22XL U130 ( .A0(N144), .A1(n22), .B0(candidate[0]), .B1(n23), .Y(n38) );
  AOI22XL U131 ( .A0(N145), .A1(n22), .B0(candidate[1]), .B1(n23), .Y(n36) );
  AOI22XL U132 ( .A0(N146), .A1(n22), .B0(candidate[2]), .B1(n23), .Y(n34) );
  AOI22XL U133 ( .A0(N147), .A1(n22), .B0(candidate[3]), .B1(n23), .Y(n32) );
  NOR2BX2 U134 ( .AN(n40), .B(n39), .Y(n22) );
  NOR2X2 U135 ( .A(mode[0]), .B(mode[1]), .Y(n24) );
  NAND2X1 U136 ( .A(in_A), .B(candidate[0]), .Y(n93) );
  XOR2X1 U137 ( .A(in_A), .B(candidate[0]), .Y(N102) );
  OR2X1 U138 ( .A(in_A), .B(N129), .Y(N131) );
  AND2XL U139 ( .A(in_A), .B(in_B), .Y(N110) );
  XOR2X1 U140 ( .A(in_A), .B(in_B), .Y(N119) );
  OR2XL U141 ( .A(N24), .B(CState[1]), .Y(N67) );
  OR2XL U142 ( .A(CState[2]), .B(CState[1]), .Y(N55) );
  AND2XL U143 ( .A(CState[2]), .B(CState[1]), .Y(N73) );
  OR2XL U144 ( .A(N24), .B(CState[1]), .Y(N41) );
  OR2XL U145 ( .A(N24), .B(CState[1]), .Y(N38) );
  OR2XL U146 ( .A(CState[2]), .B(CState[1]), .Y(N29) );
  CLKMX2X2 U147 ( .A(candidate[0]), .B(N218), .S0(N237), .Y(n62) );
  CLKMX2X2 U148 ( .A(candidate[1]), .B(N219), .S0(N237), .Y(n61) );
  CLKMX2X2 U149 ( .A(candidate[2]), .B(N220), .S0(N237), .Y(n60) );
  CLKMX2X2 U150 ( .A(candidate[3]), .B(N221), .S0(N237), .Y(n59) );
  CLKMX2X2 U151 ( .A(candidate[4]), .B(N222), .S0(N237), .Y(n58) );
  CLKMX2X2 U152 ( .A(candidate[5]), .B(N223), .S0(N237), .Y(n57) );
  AOI2BB1X4 U153 ( .A0N(N215), .A1N(N69), .B0(N216), .Y(N237) );
  INVX3 U154 ( .A(n17), .Y(N232) );
  CLKINVX1 U155 ( .A(n117), .Y(n73) );
  INVX16 U156 ( .A(n73), .Y(busy) );
  CLKINVX1 U157 ( .A(n118), .Y(n75) );
  INVX16 U158 ( .A(n75), .Y(valid) );
  INVX3 U159 ( .A(rst), .Y(n9) );
  CLKINVX1 U160 ( .A(n119), .Y(n77) );
  INVX16 U161 ( .A(n77), .Y(candidate[7]) );
  CLKINVX1 U162 ( .A(n122), .Y(n79) );
  INVX16 U163 ( .A(n79), .Y(candidate[4]) );
  CLKINVX1 U164 ( .A(n123), .Y(n81) );
  INVX16 U165 ( .A(n81), .Y(candidate[3]) );
  CLKINVX1 U166 ( .A(n124), .Y(n83) );
  INVX16 U167 ( .A(n83), .Y(candidate[2]) );
  CLKINVX1 U168 ( .A(n125), .Y(n85) );
  INVX16 U169 ( .A(n85), .Y(candidate[1]) );
  CLKINVX1 U170 ( .A(n121), .Y(n87) );
  INVX16 U171 ( .A(n87), .Y(candidate[5]) );
  CLKINVX1 U172 ( .A(n120), .Y(n89) );
  INVX16 U173 ( .A(n89), .Y(candidate[6]) );
  CLKINVX1 U174 ( .A(n126), .Y(n91) );
  INVX16 U175 ( .A(n91), .Y(candidate[0]) );
  NOR2BX1 U176 ( .AN(x_axis[0]), .B(x_axis[3]), .Y(N248) );
  NOR2BX1 U177 ( .AN(x_axis[1]), .B(x_axis[3]), .Y(N249) );
  NOR2BX1 U178 ( .AN(x_axis[2]), .B(x_axis[3]), .Y(N250) );
  NOR2BX1 U179 ( .AN(y_axis[0]), .B(y_axis[3]), .Y(N252) );
  NOR2BX1 U180 ( .AN(y_axis[1]), .B(y_axis[3]), .Y(N253) );
  NOR2BX1 U181 ( .AN(y_axis[2]), .B(y_axis[3]), .Y(N254) );
  CLKINVX6 U182 ( .A(n93), .Y(\add_97/carry [1]) );
  CLKINVX6 U183 ( .A(n94), .Y(\add_97/carry [2]) );
  NAND2X4 U184 ( .A(candidate[1]), .B(\add_97/carry [1]), .Y(n94) );
  XOR2X4 U185 ( .A(candidate[1]), .B(\add_97/carry [1]), .Y(N103) );
  CLKINVX6 U186 ( .A(n95), .Y(\add_97/carry [3]) );
  NAND2X4 U187 ( .A(candidate[2]), .B(\add_97/carry [2]), .Y(n95) );
  XOR2X4 U188 ( .A(candidate[2]), .B(\add_97/carry [2]), .Y(N104) );
  CLKINVX6 U189 ( .A(n96), .Y(\add_97/carry [4]) );
  NAND2X4 U190 ( .A(candidate[3]), .B(\add_97/carry [3]), .Y(n96) );
  XOR2X4 U191 ( .A(candidate[3]), .B(\add_97/carry [3]), .Y(N105) );
  CLKINVX6 U192 ( .A(n97), .Y(\add_97/carry [5]) );
  NAND2X4 U193 ( .A(candidate[4]), .B(\add_97/carry [4]), .Y(n97) );
  XOR2X4 U194 ( .A(candidate[4]), .B(\add_97/carry [4]), .Y(N106) );
  CLKINVX6 U195 ( .A(n98), .Y(\add_97/carry [6]) );
  NAND2X4 U196 ( .A(candidate[5]), .B(\add_97/carry [5]), .Y(n98) );
  XOR2X4 U197 ( .A(candidate[5]), .B(\add_97/carry [5]), .Y(N107) );
  CLKINVX6 U198 ( .A(n99), .Y(\add_97/carry [7]) );
  NAND2X4 U199 ( .A(candidate[6]), .B(\add_97/carry [6]), .Y(n99) );
  XOR2X4 U200 ( .A(candidate[6]), .B(\add_97/carry [6]), .Y(N108) );
  XOR2X4 U201 ( .A(candidate[7]), .B(\add_97/carry [7]), .Y(N109) );
  CLKINVX6 U202 ( .A(n100), .Y(\add_98/carry [1]) );
  NAND2X4 U203 ( .A(N110), .B(candidate[0]), .Y(n100) );
  XOR2X4 U204 ( .A(N110), .B(candidate[0]), .Y(N111) );
  CLKINVX6 U205 ( .A(n101), .Y(\add_98/carry [2]) );
  NAND2X4 U206 ( .A(candidate[1]), .B(\add_98/carry [1]), .Y(n101) );
  XOR2X4 U207 ( .A(candidate[1]), .B(\add_98/carry [1]), .Y(N112) );
  CLKINVX6 U208 ( .A(n102), .Y(\add_98/carry [3]) );
  NAND2X4 U209 ( .A(candidate[2]), .B(\add_98/carry [2]), .Y(n102) );
  XOR2X4 U210 ( .A(candidate[2]), .B(\add_98/carry [2]), .Y(N113) );
  CLKINVX6 U211 ( .A(n103), .Y(\add_98/carry [4]) );
  NAND2X4 U212 ( .A(candidate[3]), .B(\add_98/carry [3]), .Y(n103) );
  XOR2X4 U213 ( .A(candidate[3]), .B(\add_98/carry [3]), .Y(N114) );
  CLKINVX6 U214 ( .A(n104), .Y(\add_98/carry [5]) );
  NAND2X4 U215 ( .A(candidate[4]), .B(\add_98/carry [4]), .Y(n104) );
  XOR2X4 U216 ( .A(candidate[4]), .B(\add_98/carry [4]), .Y(N115) );
  CLKINVX6 U217 ( .A(n105), .Y(\add_98/carry [6]) );
  NAND2X4 U218 ( .A(candidate[5]), .B(\add_98/carry [5]), .Y(n105) );
  XOR2X4 U219 ( .A(candidate[5]), .B(\add_98/carry [5]), .Y(N116) );
  CLKINVX6 U220 ( .A(n106), .Y(\add_98/carry [7]) );
  NAND2X4 U221 ( .A(candidate[6]), .B(\add_98/carry [6]), .Y(n106) );
  XOR2X4 U222 ( .A(candidate[6]), .B(\add_98/carry [6]), .Y(N117) );
  XOR2X4 U223 ( .A(candidate[7]), .B(\add_98/carry [7]), .Y(N118) );
  CLKINVX6 U224 ( .A(n107), .Y(\add_99/carry [1]) );
  NAND2X4 U225 ( .A(N119), .B(candidate[0]), .Y(n107) );
  XOR2X4 U226 ( .A(N119), .B(candidate[0]), .Y(N120) );
  CLKINVX6 U227 ( .A(n108), .Y(\add_99/carry [2]) );
  NAND2X4 U228 ( .A(candidate[1]), .B(\add_99/carry [1]), .Y(n108) );
  XOR2X4 U229 ( .A(candidate[1]), .B(\add_99/carry [1]), .Y(N121) );
  CLKINVX6 U230 ( .A(n109), .Y(\add_99/carry [3]) );
  NAND2X4 U231 ( .A(candidate[2]), .B(\add_99/carry [2]), .Y(n109) );
  XOR2X4 U232 ( .A(candidate[2]), .B(\add_99/carry [2]), .Y(N122) );
  CLKINVX6 U233 ( .A(n110), .Y(\add_99/carry [4]) );
  NAND2X4 U234 ( .A(candidate[3]), .B(\add_99/carry [3]), .Y(n110) );
  XOR2X4 U235 ( .A(candidate[3]), .B(\add_99/carry [3]), .Y(N123) );
  CLKINVX6 U236 ( .A(n111), .Y(\add_99/carry [5]) );
  NAND2X4 U237 ( .A(candidate[4]), .B(\add_99/carry [4]), .Y(n111) );
  XOR2X4 U238 ( .A(candidate[4]), .B(\add_99/carry [4]), .Y(N124) );
  CLKINVX6 U239 ( .A(n112), .Y(\add_99/carry [6]) );
  NAND2X4 U240 ( .A(candidate[5]), .B(\add_99/carry [5]), .Y(n112) );
  XOR2X4 U241 ( .A(candidate[5]), .B(\add_99/carry [5]), .Y(N125) );
  CLKINVX6 U242 ( .A(n113), .Y(\add_99/carry [7]) );
  NAND2X4 U243 ( .A(candidate[6]), .B(\add_99/carry [6]), .Y(n113) );
  XOR2X4 U244 ( .A(candidate[6]), .B(\add_99/carry [6]), .Y(N126) );
  XOR2X4 U245 ( .A(candidate[7]), .B(\add_99/carry [7]), .Y(N127) );
  NOR2BX1 U246 ( .AN(N250), .B(n114), .Y(N90) );
  XNOR2X1 U247 ( .A(N250), .B(n114), .Y(N89) );
  NAND2X1 U248 ( .A(N249), .B(N248), .Y(n114) );
  XNOR2X1 U249 ( .A(N249), .B(N87), .Y(N88) );
  CLKINVX1 U250 ( .A(N248), .Y(N87) );
  NOR2BX1 U251 ( .AN(N254), .B(n115), .Y(N86) );
  XNOR2X1 U252 ( .A(N254), .B(n115), .Y(N85) );
  NAND2X1 U253 ( .A(N253), .B(N252), .Y(n115) );
  XNOR2X1 U254 ( .A(N253), .B(N83), .Y(N84) );
  CLKINVX1 U255 ( .A(N252), .Y(N83) );
  CLKINVX6 U256 ( .A(N69), .Y(n20) );
  NAND3X6 U257 ( .A(n42), .B(n116), .C(n41), .Y(N215) );
  CLKINVX6 U258 ( .A(N216), .Y(n116) );
  NOR3X6 U259 ( .A(n14), .B(N34), .C(N40), .Y(n13) );
  CLKINVX6 U260 ( .A(rst), .Y(n18) );
endmodule

