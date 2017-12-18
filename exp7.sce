//clc;
//clear;
pi=22/7;
j=input("CHOOSE linear,cubic or quad INTERPOLATION")
select(j)
    case(1)
    disp('enter the value of w0,wt,T')
    w0=input('enter  w0 ')
    wt=input(' enter wt ')
    T=input(' input  T ')
    b=w0
    a=(wt - w0)/(T);
    t=0:0.1:T
    w=(a.*t)+(b);
    figure(1)
    grid on;
    plot(t,w,'o')
    title('DISPLACEMENT  CURVE')
    xlabel('time')
    ylabel('velocity')
    t=0:0.1:T
    a1=0;
    figure (3)
    grid on
    title('ACCELERATION  CURVE ')
    xlabel('time')
    ylabel('acceleration')
    case(2)
    disp('enter  the  value of w0, wt, T')
    w0=input('enter w0')
    wt=input('enter  wt')
    T= input ('input T')
    c=w0
    a=((wt-c)/T.^2)
    b=0
    t=0:0.1:T
    w=(a.*t.*t)+(b.*t)+(c);
    figure (1)
    grid on;
    plot (t,w,'o')
    title ('DISPLACEMENT  CURVE')
    xlabel('time')
    ylabel('position  in  degrees') 
    t=0:0.1:T
    v=(2*a.*t)+(b);
    figure(2)
    grid on;
    plot(t,v,'o')
    title('VELOCITY  CURVE ')
    xlabel('time')
    ylabel (' velocity')
    t=0:0.1:T
    a1=(2*a);
    figure (3)
    grid on ;
    plot (t,a1,'o')
    title ('ACCELERATION CURVE ')
    xlabel ('time')
    ylabel ('acceleration')
    plot(t,a1,'o');
    case(3)
    disp ('enter the value of w0,wt,T')
    w0=input('enter w0')
    wt=input('enter wt')
    T=input('input T')
    D=w0
    C=0
    a=((2*d-2*wt)/T.^3)
    b=((3*(wt-d))/(T.^2))
    t=0:0.1:T
    w=(a.*t.*t.*t)+(b.*t.*t)+(c.*t)+d;
    figure (1)
    grid on;
    plot(t,w,'o')
    title ('DISPLACEMENT  CURVE ')
    xlabel('time')
    ylabel('position in degrees')
    T=0:0.1:T
    v=(3*a.*t.*t)+(2*b.*t)+(c);
    figure (2)
    grid on;
    plot (t,v,'o')
    title ('VELOCITY CURVE')
    xlabel('time')
    ylabel('velocity')
    t=0:0.1:T
    a1=(6*a.*t)+(2*b);
    figure(3)
    grid on;
    plot (t,a1,'o')
    title('ACCELERATION CURVE ')
    xlabel ('time')
    ylabel ('acceleration ')
end
