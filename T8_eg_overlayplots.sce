clc;clear;
close;
pi=22/7;

X=linspace(0,pi,50);
Y=cos(X);
Z=1-(X^2/2)+ (X^4/24);

plot(X,Y,'*',X,Z,'+r')

