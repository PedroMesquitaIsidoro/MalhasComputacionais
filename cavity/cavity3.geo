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
Line(5) = {7, 8};
Line(6) = {3, 4};
Line(7) = {4, 8};


Circle(11) = {6, 9, 7};
Circle(12) = {2, 9, 3};

// Planos



//+

//+

//+

//+

//+

//+
Curve Loop(1) = {3, 11, 5, -7, -6, -12, -1, 2};
//+
Plane Surface(1) = {1};
