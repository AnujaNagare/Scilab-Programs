clear
clf
clc;
pi=22/7
theta1=input(' INPUT  THETA1 ');
theta1=theta1*pi/180;
theta2=input(' INPUT  THETA2 ');
theta2=theta2*pi/180;
d3=input(' INPUT  d3 ');
theta4=input('INPUT  THETA4 ');
theta4=theta4*pi/180;
d1=.877;
d4=.200;
a1=.425;
a2=.325;
t4=[cos(theta4) -1*sin(theta4) 0 0;sin(theta4) cos(theta4) 0 0;0 0 1 d4;0 0 0 1]
t3=[1 0 0 0;0 1 0 0;0 0 1 d3;0 0 0 1]
t2=[cos(theta2) -1*sin(theta2) 0 a2*cos(theta2);sin(theta2) cos(theta2) 0 a2*sin(theta2);0 0 1 0;0 0 0 1]
t1=[cos(theta1) sin(theta1) 0 a1*cos(theta1);sin(theta1) -1*cos(theta1) 0 a1*sin(theta1);0 0 -1 d1;0 0 0 1]
tm= t1* t2* t3* t4
disp(tm)
disp(t1)
disp(t2)
disp(t3)
disp(t4)
