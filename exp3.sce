clf
clc;
disp('enter coordinates of the points')
x=input('Enter x coordinates')
y=input('Enter y coordinates')
z=input('Enter z coordinates')
p=[x y z 1]
r=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
i=input('Enter no. of transformation');
for k=1:1:i
    j=input('choose transformation 1.translation 2.rotation');
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
        e=input('enter axis 1.x 2.y 3.z')
        select(e)
        case 1
            RX=[1 0 0 0;0 cos(theta) -1*sin(theta) 0;0 sin(theta) 0 cos(theta) 0;0 0 0 1]
            r=r*RX
        case 2
            RY=[cos(theta) 0 sin(theta) 0;0 1 0 0;-1*sin(theta) 0 cos(theta) 0;0 0 0 1]
            r=r*RY
        case 3
            RZ=[cos(theta) -1*sin(theta) 0 0;sin(theta) cos(theta) 0 ;0 0 1 0;0 0 0 1]
            r=r*RZ
        end
    end
end
disp('final point q')
q=p*r
disp(q)
figure(1)
plot3(x,y,z,'b')
hold on
title('Original point p and transformed point q')
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
plot3(q(1),q(2),q(3),'r')
hold off
