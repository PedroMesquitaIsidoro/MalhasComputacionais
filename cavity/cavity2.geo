// Gmsh project created on Mon Apr  3 16:23:00 2023
SetFactory("OpenCASCADE");

// Gmsh project created on Mon Mar 20 08:47:57 2023
SetFactory("OpenCASCADE");
//**************************************** CAVITY DO PIBIC - AS DIMENSOES ESTAO NO CADERNO "LIFE IS BETTER WITH SKATE"


// **************************** PARTE DO SCRIPT RELACIONADA A GEOMETRIA

// TODOS OS PONTOS DA GEOMETRIA

Point(1) = {0, 0, 0, 1.0};
Point(2) = {0.001, 0, 0, 1.0};
Point(3) = {0.002, 0, 0, 1.0};
Point(4) = {0.003, 0, 0, 1.0};
Point(5) = {0, 0.000125, 0, 1.0};
Point(6) = {0.001, 0.000125, 0, 1.0};
Point(7) = {0.002, 0.000125, 0, 1.0};
Point(8) = {0.003, 0.000125, 0, 1.0};
Point(9) = {0.0015, 0.0000625, 0, 1.0};
Point(10) = {0, 0.0000625, 0, 1.0};
Point(11) = {0.001, 0.0000625, 0, 1.0};
Point(12) = {0.003, 0.0000625, 0, 1.0};
Point(13) = {0.002, 0.0000625, 0, 1.0};
//Point(14) = {0.0015, 0.0005625, 0, 1.0};
//Point(15) = {0.0015, -0.0004375, 0, 1.0};
Point(16) = {0.0015, 0.000125, 0, 1.0};
Point(17) = {0.0015, 0, 0, 1.0};

// TODAS AS LINHAS DA GEOMETRIA


//+
Line(1) = {1, 2};
//+
Line(2) = {2, 11};
//+
Line(3) = {11, 6};
//+
Line(4) = {6, 5};
//+
Line(5) = {5, 10};
//+
Line(6) = {10, 1};
//+
Line(7) = {2, 17};
//+
Line(8) = {17, 3};
//+
Line(9) = {3, 13};
//+
Line(10) = {13, 7};
//+
Line(11) = {7, 16};
//+
Line(12) = {16, 6};
//+
Line(13) = {3, 4};
//+
Line(14) = {4, 12};
//+
Line(15) = {12, 8};
//+
Line(16) = {8, 7};
//+
Line(17) = {10, 11};
//+
Line(18) = {11, 9};
//+
Line(19) = {9, 13};
//+
Line(20) = {13, 12};
//+
Circle(21) = {6, 9, 7};
//+
Circle(22) = {2, 9, 3};
//+
Curve Loop(1) = {5, 17, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, 1, 2, -17};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {21, 11, 12};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, 8, -22};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {12, -3, 18, 19, 10, 11};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {7, 8, 9, -19, -18, -2};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {16, -10, 20, 15};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {13, 14, -20, -9};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {5} = 10 Using Progression 1;
//+
Transfinite Curve {3} = 10 Using Progression 1;
//+
Transfinite Curve {10} = 10 Using Progression 1;
//+
Transfinite Curve {15} = 10 Using Progression 1;
//+
Transfinite Curve {6} = 10 Using Progression 1;
//+
Transfinite Curve {2} = 10 Using Progression 1;
//+
Transfinite Curve {9} = 10 Using Progression 1;
//+
Transfinite Curve {14} = 10 Using Progression 1;
//+
Transfinite Curve {4} = 10 Using Progression 1;
//+
Transfinite Curve {1} = 10 Using Progression 1;
//+
Transfinite Curve {12} = 10 Using Progression 1;
//+
Transfinite Curve {7} = 10 Using Progression 1;
//+
Transfinite Curve {11} = 10 Using Progression 1;
//+
Transfinite Curve {8} = 10 Using Progression 1;
//+
Transfinite Curve {16} = 10 Using Progression 1;
//+
Transfinite Curve {13} = 10 Using Progression 1;
//+
Transfinite Curve {21} = 20 Using Progression 1;
//+
Transfinite Curve {22} = 20 Using Progression 1;
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {5};
//+
Transfinite Surface {6};
//+
Transfinite Surface {7};
//+
Transfinite Surface {8};
//+
Transfinite Surface {3};
//+
Transfinite Surface {4};
