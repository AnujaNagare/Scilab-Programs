clc;
clear;

a=input('enter a value: ');
b=a;
f=1;

while (a~=0)
    f=f*a;
    a=a-1;
end


printf('\nfactorial of %d is %d\n',b,f)

