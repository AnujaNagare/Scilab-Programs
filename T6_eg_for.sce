clc;
clear;

a=input('enter a value: ');
f=1;
 
for i=1:1:a 
    f=f*i;
end

printf('\nfactorial of %d is %d\n',a,f)

