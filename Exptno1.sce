//EXPT NO.1: - ROTATION & TRANSLATION TRANSFORMATON 

//AIM: - TO STUDY THE TRANSLATION AND ROTATION OF A POINT ABOUT SPECIFIED 
//AXIS USING scilab 

clc
clear
close
clf

pi=22/7;
exec('startup_rtsx.sce',-1);

disp('ENTER COORDINATES OF THE POINT')
x=input('ENTER X COORDINATE')
y=input('ENTER Y COORDINATE')
z=input('ENTER Z COORDINATE')
p=[x y z 1]
i=input('MAKE A CHOICE : 1.PURE TRANSLATION...
2.PURE ROTATION');

select(i)
    case 1
        k=input('enter pure translation value');
        j=input('CHOOSE AXIS :1.X  2.Y  3.Z');
    select(j)
        case 1
            TX=[1 0 0 0;0 1 0 0;0 0 1 0;k 0 0 1]
            q=p*TX
        case 2
            TY=[1 0 0 0;0 1 0 0;0 0 1 0;0 k 0 1]
            q=p*TY
        case 3
            TZ=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 k 1]
            q=p*TZ
    end
    case 2
        k=input('enter pure rotational theta');
        k=k*pi/180;
        j=input('ABOUT AXIS :\n1.X\t2.Y\t3.Z');
    select(j)
        case 1 
            
            q=p*RX
        case 2
            RY = roty(k,'deg');
            q=p*RY
        case 3
            RZ = rotz(k,'deg');
            q=p*RZ
    end
end
subplot(1,2,1)
plot2d3(x,y,z)
grid on
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('ORIGINAL POINT p')
subplot(1,2,2)
plot2d3(q(1),q(2),q(3))
grid on
xlabel('x axis'),ylabel('y axis'),zlabel('z axis')
title('TRANSFORMED POINT q')
