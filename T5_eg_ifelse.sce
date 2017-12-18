clc;
clear;
s=input('enter the salary : ');

if s>50000 then
        s=s+(s*0.25);  
        disp(s,'new salary is: ')
elseif 25000<s & s<50000 then
    s=s+(s*0.4);
    disp(s,'new salary is: ')
else
    s=s+(s*0.5);
    disp(s,'new salary is: ')
end
