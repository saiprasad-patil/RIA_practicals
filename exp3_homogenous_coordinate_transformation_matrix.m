% Expt 3: Homogenous Coordinate Transformation Matrix
% Saiprasad Patil 60001200090

disp('Saiprasad Patil 60001200090');
disp('Expt 3: Homogenous Coordinate Transformation Matrix');
pm = [1;0;0;1];

t_matrix = [0,0,0];
p_matrix = [0,0,0];

frame = input('0: With respect to mobile  \n1: With respect to fixed');
rot = input('Enter rotation angle ');
rot_axis = input('Enter rotation axis ');
tran = input('Enter translation ');
tran_axis = input('Enter translation axis ');
sigma = input('Enter scaling factor ');

phi = rot;
t_matrix(tran_axis) = tran;

r1 = [1, 0, 0; 0, cos(phi), -sin(phi); 0, sin(phi), cos(phi)];
r2 = [cos(phi), 0, sin(phi); 0, 1, 0; -sin(phi), 0, cos(phi)];
r3 = [cos(phi), -sin(phi),0; sin(phi), cos(phi), 0; 0, 0, 1];
i = [1, 0, 0; 0, 1, 0; 0, 0, 1];

if rot_axis == 1
    transln_matrix = [r1(1), r1(2), r1(3), 0; r1(4), r1(5), r1(6), 0; r1(7), r1(8), r1(9), 0; 0, 0, 0, 1];
elseif rot_axis == 2
    transln_matrix = [r2(1), r2(2), r2(3), 0; r2(4), r2(5), r2(6), 0; r2(7), r2(8), r2(9), 0; 0, 0, 0, 1];
elseif rot_axis == 3
    transln_matrix = [r3(1), r3(2), r3(3), 0; r3(4), r3(5), r3(6), 0; r3(7), r3(8), r3(9), 0; 0, 0, 0, 1];
end

rotln_matrix = [1, 0, 0, t_matrix(1); 0, 1, 0, t_matrix(2); 0, 0, 1, t_matrix(3);0, 0, 0, 1];

if frame == 0
    pf = transln_matrix * rotln_matrix * pm;
elseif frame == 1
    pf = rotln_matrix * transln_matrix * pm;
else 
    disp("Wrong choice");
end

display(pf);

