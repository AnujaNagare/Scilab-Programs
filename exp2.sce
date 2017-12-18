clear
clf
clc;
pi=22/7;
disp('Enter coordinates of a point')
x=input('enter x coordinate')
y=input('enter y coordinate')
z=input('enter z coordinate')
p=[x y z 1]
k=input('enter pure translation value');
l=input('enter pure translation theta');
l=l*pi/180;
j=input('choose axis 1.x 2.y 3.z')
select(j)
case 1
    X=[1 0 0 0;0 1 0 0;0 0 1 0;k 0 0 1];
    RX=[1 0 0 0;0 cos(1) (-1)*sin(1) 0;0 sin(1) cos(1) 0;0 0 0 1];
    disp('rotation then translation')
    chctm1=RX*X
    q=p*RX*X
    disp('translation then rotation')
    chctm2=X*RX
    q=p*X*RX
case 2
    Y=[1 0 0 0;0 1 0 0;0 0 1 0;0 k 0 1];
    RY=[cos(1) 0 sin(1) 0;0 1 0 0;(-1)*sin(1) 0 cos(1) 0;0 0 0 1];
    disp('rotation then translation')
    chctm1=RY*Y
    q=p*RY*Y
    disp('translation then rotation')
    chctm2=Y*RY
    q=p*Y*RY
case 3
    Z=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 k 1];
    RZ=[cos(1) (-1)*sin(1) 0 0;sin(1) cos(1) 0 0;0 0 1 0;0 0 0 1];
    disp('rotation then translation')
    chctm1=RZ*Z
    q=p*RZ*Z
    disp('translation then rotation')
    chctm2=Z*RZ
    q=p*Z*RZ
end
subplot(1,2,1)
plot3(x,y,z,'b')
grid on
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('original point p')
subplot(1,2,2)
plot3(q(1),q(2),q(3),'r')
grid on
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('transformed point p')
disp(chctm1);
disp(chctm2);
