//Mesh.Tetrahedra = 1;
Point(1) = {0, 0, 0, 1.0};
Point(2) = {1, 0, 0, 1.0};
Point(3) = {0, 1, 0, 1.0};
Point(4) = {1, 1, 0, 1.0};
Point(5) = {2, 1, 0, 1.0};
Point(6) = {2, 0, 0, 1.0};
Point(7) = {0, 0, 1, 1.0};
Point(8) = {1, 0, 1, 1.0};
Point(9) = {0, 1, 1, 1.0};
Point(10) = {1, 1, 1, 1.0};
Point(11) = {2, 1, 1, 1.0};
Point(12) = {2, 0, 1, 1.0};
Line(1) = {7, 9};
Line(2) = {9, 10};
Line(3) = {10, 11};
Line(4) = {11, 12};
Line(5) = {12, 8};
Line(6) = {8, 7};
Line(7) = {10, 8};
Line(8) = {1, 3};
Line(9) = {3, 4};
Line(10) = {4, 5};
Line(11) = {5, 6};
Line(12) = {6, 2};
Line(13) = {2, 1};
Line(14) = {4, 2};
Line(15) = {7, 1};
Line(16) = {9, 3};
Line(17) = {8, 2};
Line(18) = {10, 4};
Line(19) = {12, 6};
Line(20) = {11, 5};

Line Loop(21) = {15, 8, -16, -1};
Plane Surface(22) = {21};
Line Loop(23) = {17, -14, -18, 7};
Plane Surface(24) = {23};
Line Loop(25) = {19, -11, -20, 4};
Plane Surface(26) = {25};
Line Loop(27) = {6, 1, 2, 7};
Plane Surface(28) = {27};
Line Loop(29) = {3, 4, 5, -7};
Plane Surface(30) = {29};
Line Loop(31) = {13, 8, 9, 14};
Plane Surface(32) = {31};
Line Loop(33) = {14, -12, -11, -10};
Plane Surface(34) = {33};
Line Loop(35) = {15, -13, -17, 6};
Plane Surface(36) = {35};
Line Loop(37) = {16, 9, -18, -2};
Plane Surface(38) = {37};
Line Loop(39) = {18, 10, -20, -3};
Plane Surface(40) = {39};
Line Loop(41) = {17, -12, -19, 5};
Plane Surface(42) = {41};


Surface Loop(43) = {22, 36, 32, 38, 28, 24};
Volume(44) = {43};
Surface Loop(45) = {42, 34, 26, 40, 30, 24};
Volume(46) = {45};

Transfinite Line {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,2 0} = 5;
Transfinite Surface {22,24,26,28,30,32,34,36,38,40,42};
Recombine Surface {22,24,26,28,30,32,34,36,38,40,42};
Transfinite Volume {44,46};
Recombine Volume {44,46};

Physical Surface ("wall") = {22,24,26,28,30,32,34,36,38,40,42};
Physical Volume ("internalVolume") = {44,46};

