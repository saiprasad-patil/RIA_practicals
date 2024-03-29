disp('Saiprasad Patil 60001200090');
clc;

Theta1 = input("Theta 1 = ");
Theta2 = input("Theta 2 = ");
Theta3 = input("Theta 3 = ");
Theta4 = input("Theta 4 = ");

d1 = input("\nEnter the value of d1 = ");
d2 = input("Enter the value of d2 = ");
d3 = input("Enter the value of d3 = ");
d4 = input("Enter the value of d4 = ");

a1 = input("\nEnter the value of a1 = ");
a2 = input("Enter the value of a2 = ");
a3 = input("Enter the value of a3 = ");
a4 = input("Enter the value of a4 = ");

alpha1 = input("\nEnter the value of alpha1 = ");
alpha2 = input("Enter the value of alpha2 = ");
alpha3 = input("Enter the value of alpha3 = ");
alpha4 = input("Enter the value of alpha4 = ");

A1 = [cos(Theta1) -cos(alpha1)*sin(Theta1) sin(alpha1)*sin(Theta1) a1*cos(Theta1);
      sin(Theta1) cos(alpha1)*cos(Theta1) -sin(alpha1)*cos(Theta1) a1*sin(Theta1);
      0 sin(alpha1) cos(alpha1) d1;
      0 0 0 1]

A2 = [cos(Theta2) -cos(alpha2)*sin(Theta2) sin(alpha2)*sin(Theta2) a2*cos(Theta2);
      sin(Theta2) cos(alpha2)*cos(Theta2) -sin(alpha2)*cos(Theta2) a2*sin(Theta2);
      0 sin(alpha2) cos(alpha2) d2;
      0 0 0 1]

A3 = [cos(Theta3) -cos(alpha3)*sin(Theta3) sin(alpha3)*sin(Theta3) a3*cos(Theta3);
      sin(Theta3) cos(alpha3)*cos(Theta3) -sin(alpha3)*cos(Theta3) a3*sin(Theta3);
      0 sin(alpha3) cos(alpha3) d3;
      0 0 0 1]

A4 = [cos(Theta4) -cos(alpha4)*sin(Theta4) sin(alpha4)*sin(Theta4) a4*cos(Theta4);
      sin(Theta4) cos(alpha4)*cos(Theta4) -sin(alpha4)*cos(Theta4) a4*sin(Theta4);
      0 sin(alpha4) cos(alpha4) d4;
      0 0 0 1]

X1 = A3*A4
X2 = A2*X1
X3 = A1*X2
X4 = X3
disp("Arm Matrix: ");
disp(X4);

