//********************************* MALHA COMPUTACIONAL PSEUDO 2D totalmente estruturada - ESCOAMENTO AO REDOR DE UM CILINDRO
Mesh.Tetrahedra = 1;
// variaveis
Hesq = 40; PHesq = 1.0;

Hdir = 60; PHdir = 1.0;

D = 60; PD = 0.92;

V = 40; PV = 1.0;


// ***************************** PARTE DO SCRIPT RELACIONADA A GEOMETRIA 2D ******************************
// TODOS OS PONTOS DA GEOMETRIA
Point(1) = {-10, 10, 0, 1.0};
Point(2) = {10, 10, 0, 1.0};
Point(3) = {-10, -10, 0, 1.0};
Point(4) = {10, -10, 0, 1.0};

Point(5) = {40, 10, 0, 1.0};
Point(6) = {40, -10, 0, 1.0};

Point(7) = {-0.354, -0.354, 0, 1.0};
Point(8) = {0.354, -0.354, 0, 1.0};
Point(9) = {-0.354, 0.354, 0, 1.0};
Point(10) = {0.354, 0.354, 0, 1.0};
Point(11) = {0, 0, 0, 1.0};

//TODAS AS LINHAS DA GEOMETRIA
Line(1) = {1, 2};
Line(2) = {1, 3};
Line(3) = {3, 4};
Line(4) = {4, 2};
Line(5) = {2, 5};
Line(6) = {5, 6};
Line(7) = {6, 4};

Circle(8) = {9, 11, 7};
Circle(9) = {7, 11, 8};
Circle(10) = {8, 11, 10};
Circle(11) = {10, 11, 9};


Line(12) = {1, 9};
Line(13) = {2, 10};
Line(14) = {3, 7};
Line(15) = {4, 8};

Curve Loop(1) = {12, -11, -13, -1};

// todos os planos da geomtria
Plane Surface(1) = {1};
Curve Loop(2) = {2, 14, -8, -12};
Plane Surface(2) = {2};
Curve Loop(3) = {3, 15, -9, -14};
Plane Surface(3) = {3};
Curve Loop(4) = {4, 13, -10, -15};
Plane Surface(4) = {4};
Curve Loop(5) = {7, 4, 5, 6};
Plane Surface(5) = {5};
//malha 2d ****************************************
// transfinite planos ********************************
// linhas verticais da esquerda para a direita

Transfinite Curve {2} = V Using Progression PV;
Transfinite Curve {8} = V Using Progression PV;
Transfinite Curve {10} = V Using Progression PV;
Transfinite Curve {4} = V Using Progression PV;
Transfinite Curve {6} = V Using Progression PV;
//+

// linhas horizontais de cima para baixo - da esqueda para direita
Transfinite Curve {1} = Hesq Using Progression PHesq;
Transfinite Curve {11} = Hesq Using Progression PHesq;
Transfinite Curve {9} = Hesq Using Progression PHesq;
Transfinite Curve {3} = Hesq Using Progression PHesq;
Transfinite Curve {5} = Hdir Using Progression PHdir;
Transfinite Curve {7} = Hdir Using Progression PHdir;

//Diagonais
Transfinite Curve {12} = D Using Progression PD;
Transfinite Curve {13} = D Using Progression PD;
Transfinite Curve {15} = D Using Progression PD;
Transfinite Curve {14} = D Using Progression PD;
//+
// transfinite planos **************************************************
Transfinite Surface {2}; Recombine Surface {2};
Transfinite Surface {1}; Recombine Surface {1};
Transfinite Surface {4}; Recombine Surface {4};
Transfinite Surface {3}; Recombine Surface {3};
Transfinite Surface {5}; Recombine Surface {5};
//+

//MALHA PSEUDO 2D
Extrude {0, 0, 1} {
  Surface{2}; Surface{3}; Surface{1}; Surface{4}; Surface{5}; 
  Layers{1};
  Recombine;
}

// ***condicoes de contorno
//+
Physical Surface("entrada", 126) = {24};
//+
Physical Surface("saida", 127) = {124};
//+
Physical Surface("face_superior", 128) = {120, 80};
//+
Physical Surface("face_inferior", 129) = {46, 112};
//+
Physical Surface("parede", 130) = {32, 72, 98, 54};
//+
Physical Surface("frente_traseira", 131) = {2, 37, 81, 1, 3, 59, 4, 103, 125, 5};
//+
Physical Volume("dominio", 132) = {4, 3, 1, 2, 5};
