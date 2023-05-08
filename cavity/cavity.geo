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

// TODAS AS LINHAS DA GEOMETRIA

Line(1) = {1, 2};
Line(2) = {1, 5};
Line(3) = {5, 6};
Line(4) = {6, 2};
Line(5) = {7, 8};
Line(6) = {3, 4};
Line(7) = {4, 8};
Line(8) = {7, 3};
Line(9) = {6, 7};
Line(10) = {2, 3};
Circle(11) = {6, 9, 7};
Circle(12) = {2, 9, 3};

// Planos
Curve Loop(1) = {2, 3, 4, -1};
Plane Surface(1) = {1};
Curve Loop(2) = {4, 10, -8, -9};
Plane Surface(2) = {2};
Curve Loop(3) = {8, 6, 7, -5};
Plane Surface(3) = {3};
Curve Loop(4) = {11, -9};
Plane Surface(4) = {4};
Curve Loop(5) = {10, -12};
Plane Surface(5) = {5};


//+
//Transfinite Curve {2, 4} = 10 Using Progression 1;
Transfinite Curve {2} = 10 Using Progression 1.5;
Transfinite Curve {4} = 10 Using Progression 1;
//+
Transfinite Curve {8, 7} = 10 Using Progression 1;
//+
Transfinite Curve {3, 1} = 40 Using Progression 1;
//+
Transfinite Curve {9, 10} = 10 Using Progression 1;
//+
Transfinite Curve {5, 6} = 40 Using Progression 1;
//+
Transfinite Curve {11, 9} = 10 Using Progression 1.5;
//+
Transfinite Curve {12, 10} = 10 Using Progression 1;
//+

//+

//+

//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Recombine Surface {1};
//+
Recombine Surface {2};
//+
Point(10) = {0, 0, 0, 1.0};
//+
Point(11) = {0, 0, 0, 1.0};
//+
Point(12) = {0, 0, 0, 1.0};
//+
Point(13) = {0, 0, 0, 1.0};
//+
Point(14) = {0, 0, 0, 1.0};
//+
Point(15) = {0, 0, 0, 1.0};
//+
Point(16) = {-0, 0, 0, 1.0};
//+
Point(17) = {-0, 0, 0, 1.0};
//+
Point(18) = {-0, 0, 0, 1.0};
//+
Recombine Surface {3};
