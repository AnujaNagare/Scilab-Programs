// EXPT NO. 2: - SCREW TRANSFORMATON

//AIM: - TO STUDY THE SCREW TRANSFORMATION OF A POINT 
// ABOUT A SPECIFIED AXIS USING scilab AND TO PROVE THAT SCREW TM     
// IS CUMULATIVE   [ Rot(?,k)*Trans(?,k)  = Trans(?,k)* Rot(?,k) ]

clear ; 
close ;
clf
clc

disp('ENTER COORDINATES OF THE POINT')

x=input('ENTER X COORDINATE')
y=input('ENTER Y COORDINATE')
z=input('ENTER Z COORDINATE')
p=[x y z 1]

pi=22/7;

k=input('enter pure translation value');
l=input('enter pure rotational theta');
l=l*pi/180;
j=input('CHOOSE AXIS: 1.X 2.Y 3.Z');

    select(j)
        case 1
            X=[1 0 0 0;0 1 0 0;0 0 1 0;k 0 0 1];
            RX = [1 0 0 0;0 cos(l) (-1)*sin(l) 0;0 sin(l) cos(l) 0;0 0 0 1];
            
            disp('ROTATION THEN TRANSLATION')
            chctm1=RX*X
            q=p*RX*X
           
            disp('TRANSLATION THEN ROTATION')
            chctm2=X*RX
            q=p*X*RX
        case 2
            Y=[1 0 0 0;0 1 0 0;0 0 1 0;0 k 0 1];
            RY = [cos(l) 0 sin(l) 0;0 1 0 0;(-1)*sin(l) 0 cos(l) 0;0 0 0 1];
            
            disp('ROTATION THEN TRANSLATION')
            chctm1=RY*Y
            q=p*RY*Y
            disp('TRANSLATION THEN ROTATION')
            chctm2=Y*RY
            q=p*Y*RY
        case 3
            Z=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 k 1]; 
            RZ = [cos(l) (-1)*sin(l) 0 0;sin(l) cos(l) 0 0;0 0 1 0;0 0 0 1];
           
            disp('ROTATION THEN TRANSLATION')
            chctm1=RZ*Z
            q=p*RZ*Z
            disp('TRANSLATION THEN ROTATION')
            chctm2=Z*RZ
            q=p*Z*RZ
    end
subplot(1,2,1)
plot2d3(x,y,z)
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('ORIGINAL POINT p')

subplot(1,2,2)
plot2d3(q(1),q(2),q(3))
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('TRANSFORMED POINT q') 

// output
// 3
// 4
// 5
// 6
// 45
//
