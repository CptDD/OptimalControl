T=0.1;
t=0:T:10;
N=length(t);

x=[1;0;0];

xs=x';
for k=1:N-1
    K1=xprime(k,x);
    K2=xprime(k+T/2,x+T*K1/2);
    K3=xprime(k+T/2,x+T*K2/2);
    K4=xprime(k+T,x+T*K3);
    
    x=x+(T*(K1+2*K2+2*K3+K4))/6;
    xs=[xs;x'];
end

hold on
plot(t,xs(:,1),'g');
plot(t,xs(:,2),'y');
plot(t,xs(:,3),'k');

hold off
grid