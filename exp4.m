disp('Saiprasad Patil 60001200090');

Theta1 = input('Theta 1 = ');
Theta2 = input('Theta 2 = ');
Theta3 = input('Theta 3 = ');

d1 = input('Enter the value of d1 = ');
d2 = input('Enter the value of d2 = ');
d3 = input('Enter the value of d3 = ');

a1 = input('Enter the value of a1 = ');
a2 = input('Enter the value of a2 = ');
a3 = input('Enter the value of a3 = ');

alpha1 = input('Enter the value of alpha1 = ');
alpha2 = input('Enter the value of alpha2 = ');
alpha3 = input('Enter the value of alpha3 = ');

A1 = [
    cos(Theta1) -cos(alpha1)*sin(Theta1) sin(alpha1)*sin(Theta1) a1*cos(Theta1);
    sin(Theta1) cos(alpha1)*cos(Theta1) -sin(alpha1)*cos(Theta1) a1*sin(Theta1);
    0 sin(alpha1) cos(alpha1) d1;
    0 0 0 1
]

A2 = [
    cos(Theta2) -cos(alpha2)*sin(Theta2) sin(alpha2)*sin(Theta2) a2*cos(Theta2);
    sin(Theta2) cos(alpha2)*cos(Theta2) -sin(alpha2)*cos(Theta2) a2*sin(Theta2);
    0 sin(alpha2) cos(alpha2) d2;
    0 0 0 1
]

A3 = [
    cos(Theta3) -cos(alpha3)*sin(Theta3) sin(alpha3)*sin(Theta3) a3*cos(Theta3);
    sin(Theta3) cos(alpha3)*cos(Theta3) -sin(alpha3)*cos(Theta3) a3*sin(Theta3);
    0 sin(alpha3) cos(alpha3) d3;
    0 0 0 1
]

X1 = A2 * A3
X2 = A1 * X1
X3 = X2

disp('Arm Matrix:');
disp(X3);


