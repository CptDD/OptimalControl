T=0.01;
t=0:T:10;
N=length(t);

x=[1;0;0];
xs=x';
for k=1:N-1
    x=x+T.*xprime(k*T,x);
    xs=[xs;x'];
end

hold on
plot(t,xs(:,1),'o');
plot(t,xs(:,2),'y');
plot(t,xs(:,3),'k');

hold off
grid