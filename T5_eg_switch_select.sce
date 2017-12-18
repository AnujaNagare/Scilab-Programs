clc;
clear;
s=input('enter the salary : ');


if s>50000 
        c=1;
else if 25000<s & s<50000 
    c=2
else
    c=3
end
end

select(c)
    case 1 
        s=s+(s*0.25);  
        disp(s,'new salary is: ')
case 2 
    s=s+s*0.4;
    disp(s,'new salary is: ')
else
    s=s+(s*0.5);
    disp(s,'new salary is: ')
end

