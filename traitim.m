l1=15;l2=10;
syms t t1 t2 pi
pi=3,14
for t=-pi:0.01:pi
    X = 16*(sin(t)^3);
    Y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
    C2=(X^2+Y^2-l1^2-l2^2)/(2*l1*l2)
    S2=sqrt(abs(1-C2^2));
    t2=atan2(S2,C2);
    C1=(l1+l2*C2)*X+l2*S2*Y;
    S1=(l1+l2*C2)*Y-l2*S2*X;
    t1=atan2(S1,C1);
    Px=l1*cos(t1)+l2*cos(t1+t2);
    Py=l1*sin(t1)+l2*sin(t1+t2);
   
    subplot(2,1,1);
    plot(Px,Py,'*');
    xlabel('x(cm)');
    ylabel('y(cm)');pause(0.1);
    hold on
end
