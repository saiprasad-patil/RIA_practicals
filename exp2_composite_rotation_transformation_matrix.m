disp("Exp2: Composite Rotation Coordinate Transformation Matrix");
disp("60001200090 Saiprasad Patil");
disp("60001200092 Aryan Potdar");

phi1 = input("Enter yaw angle");
phi2 = input("Enter pitch angle");
phi3 = input("Enter roll angle");

yaw = [1, 0, 0; 0, cos(phi1), -sin(phi1); 0, sin(phi1), cos(phi1)];
pitch = [cos(phi2), 0, sin(phi2); 0, 1, 0; -sin(phi2), 0, cos(phi2)];
roll = [cos(phi3), -sin(phi3),0; sin(phi3), cos(phi3), 0; 0, 0, 1];

i = [1, 0, 0; 0, 1, 0; 0, 0, 1];

ypr = roll * pitch * yaw * i;

display(ypr);