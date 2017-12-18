clc;clear;
close;
pi=22/7;
x=linspace(0,2*pi,100);
y=sin(x);
z=cos(x);
plot2d3(x,y,z)
xlabel('x axis')
ylabel('y axis')
zlabel('z axis')

title('plot created by BE Mechanical')

