// EXPERIMENT NO. 4: - WORKSPACE YPR 
// AIM: - TO STUDY THE REACH AND STROKE OF A ROBOT (WORKPACE) USING MATLAB

clear
clf
clc;

a= input('enter the horizontal reach   ');
b= input('enter the vertical reach   ');
c= input('enter the horizontal stroke   ');
d= input('enter the vertical stroke    ');
 
//r=[a,a];
[out] = make_cylinder_special(a)
//[x,y,z]=cylinder(r,100);
for i=0:1:b-1,
    mesh(x,y,z+i,'edgecolor','yellow')
    hold on 
end;
p0= [0;0;a-2;a-1;a-3]
p1=[1;1;1;1;1];
p2=[0;b;b;b-1;b-4]
plot3(p0,p1,p2,'rx:');
hold on;
p0 =[a-1;a-1;a]
p1 = [0;0;0];
p2=[b;b+1;b+1]
plot3(p0,p1,p2,'g^-.');
 
r=[c,c]
[x,y,z]=cylinder(r,100);
for j=0:1:d-1,
    mesh(x,y,z+j,'edgecolor','red')
    hold on
end;
p3=[0;0;c-1;c-1;c];
p4=[0;0;0;0;0];
p5=[0;d;d;d-1;d-1];
plot3(p3,p4,p5,'g*-')
hold on;
p3=[c-1;c-1;c]
p4=[0;0;0];
p5=[d;d+1;d+1];
plot3(p3,p4,p5,'b+-');
grid on;
xlabel('x')
ylabel('y')

// output:
// 150
// 200
// 80
// 160
//
