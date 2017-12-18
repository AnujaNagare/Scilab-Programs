clc
clear
close
clf
pi=22/7;
disp('Enter  co-ordinates of points');
x=input('Enter X coordinate: ');
y=input('Enetr Y coordinate: ');
z=input('Enter Z coordinate: ');
i=input('Translation or rotation?(1 or 2)');
p=[x y z];
select (i)
case 1
    k=input('enter translatonal value')
    j=input('enter which axis u want to translate(x,y,z)=(1,2,3)')
    select (j)
    case 1
        tx=[1 0 0 0;0 1 0 0;k 0 0 1]
        q=p*tx
    case 2
        ty=[1 0 0 0;0 1 0 0;0 k 0 1]
        q=p*ty
    case 3
        tz=[1 0 0 0;0 1 0 0;0 0 k 1]
        q=p*tz
    end
    disp(q);
case 2
    exec('startup_rtsx.sce',-1);
    k=input('pure rotational theta');
    k=k*(pi/180);
    j=input('about axis:\n1.X\t2.Y\t3.Z');
    select(j)
    case 1
        rx=rotx(k,'deg');
        q=p*rx
    case 2
        ry=roty(k,'deg');
        q=p*ry
    case 3
        rz=rotz(k,'deg');
        q=p*rz
    end
    disp(q)
end
subplot(1,2,1)
plot2d3(x,y,z)
grid on
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('original point p')
subplot(1,2,2)
plot2d3(q(1),q(2),q(3))
grid on
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('transformed point q')
