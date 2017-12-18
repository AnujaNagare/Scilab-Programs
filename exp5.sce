clc
clear
pi=22/7;
angle1=input('enter  angle  of  rotation  in yaw  in  degrees   :   ');
a1=pi*angle1/180;
angle2=input('enter  angle   of  rotation  in  pitch  in  degrees  :  ');
a2=pi*angle2/180;
angle3=input('enter  angle  of  rotation  in  roll  in  degrees  :   ');
a3=pi*angle3/180;
i=[2;3;4];
r1=[1 0 0;0 cos(a1) -sin(a1 );0 sin(a1) cos(a1)];
r2=[cos(a2) 0 sin(a2);0 1 0;-sin(a2) 0 cos(a2)];
r3=[cos(a3) -sin(a3) 0;sin(a3) cos(a3) 0;0 0 1] ;
ypr2=r1*i;
ypr2=r2*ypr2;
ypr2=r3*ypr2;
disp('the  ypr matrix  is   :   ')
disp(ypr2);
rpy3=r3*r2;
rpy3=rpy3*r1;
rpy3=rpy3*i;
disp(' The  rpy  matrix  is  :   ')
disp(rpy3);
if (isequal(ypr2,rpy3)) then
    disp('Hence proved');
end;
