load('matlab2.mat')
T1 = T1*pi/180;
T2 = T2*pi/180;
syms x0 y0
R1 = sqrt(x0^2+y0^2);
Th1= atan(y0/x0);
R2 = sqrt((x0+45)^2+y0^2);
Th2= atan(y0/(x0+45));
% l = abs(R2*cos(Th2+fai)-R1*cos(Th1+fai));
eq1 = R2*cos(Th2-T1)-R1*cos(Th1-T1)-l1;
eq2 = R2*cos(Th2-T2)-R1*cos(Th1-T2)-l2;

vpasolve(eq1,eq2,x0,y0)