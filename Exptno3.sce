//EXPT NO. 3: - COMPOSITE TRANSFORMATON 
//AIM: - TO STUDY THE COMPOSITE TRANSFORMATION OF A POINT USING scilab

clear
clf
clc;
pi=22/7;
disp('ENTER COORDINATES OF THE POINT')
x=input('ENTER X COORDINATE: ')
y=input('ENTER Y COORDINATE: ')
z=input('ENTER Z COORDINATE: ')
p=[x y z 1]
r=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
i=input('ENTER NO OF TRANSFORMATION');
for k=1:1:i
        j=input('CHOOSE transformation: 1.translation 2.rotation');
    select(j)
        case 1
            tx=input('translation about x axis');
            ty=input('translation about y axis');
            tz=input('translation about z axis');
            TM=[1 0 0 0;0 1 0 0;0 0 1 0;tx ty tz 1]
            r=r*TM
        case 2
            theta=input('enter angle')
            theta=theta*pi/180;
            e=input('enter axis of rotation: 1.x 2.y 3.z');
            select(e)
                case 1 
                RX=[1 0 0 0;0 cos(theta) -1*sin(theta) 0;...
                0 sin(theta) cos(theta) 0;0 0 0 1]
                r=r*RX
                case 2
                RY=[cos(theta) 0 sin(theta) 0;0 1 0 0;-1*sin(theta) 0 cos(theta) 0;0 0 0 1]
                r=r*RY
                case 3
                RZ=[cos(theta) -1*sin(theta) 0 0;sin(theta) cos(theta) 0 0;0 0 1 0;0 0 0 1]
                r=r*RZ
            end
    end
end
    disp('final point q')
    q=p*r
figure(1)
plot2d3(x,y,z)
hold on
title('ORIGINAL POINT P and TRANSFORMED POINT q')
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
//figure(2)
plot2d3(q(1),q(2),q(3))
hold off

// output:
// 10
// 11
// 12
//
