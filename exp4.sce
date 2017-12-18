clear
clf
clc;
a=input(' enter  the  horizontal  reach     ');
b=input(' enter  the  vertical    reach     ');
c=input(' enter  the  horizontal  stroke    ');
d=input(' enter  the  vertical    stroke    ');
r = a;
r1=c;
exec('cylinder.sce',-1)
[x,y,z]=cylinder(r,100)  ;
for i=0:1:b-1,
    mesh(x,y,z + i)
    hold on
end;
p0=[0;0;a-2;a-1;a-3]
p1=[1;1;1;1;1];
p2=[0;b;b;b-1;b-4]
plot3(p0,p1,p2);
hold on;
p0=[a-1;a-1;a]
p1=[0;0;0];
p2=[b;b+1;b+1]
plot3(p0,p1,p2);
//r1=c;
[x,y,z]=cylinder(r1, 100);
for j=0:1:d-1
    mesh (x,y,z+j)
//    hold on
end;
p3=[0;0;c-1;c-1;c];
p4=[0;0;0;0;0];
p5=[0;d;d;d-1;d-1];
plot3 (p3,p4,p5)
//hold on;
p3=[c-1;c-1;c]
p4=[0;0;0];
p5=[d;d+1;d+1];
plot3 (p3,p4,p5);
grid on;
xlabel ('x axis')
ylabel ('y axis')


