global C k
C=10;
k=1;


[t,x]=ode23(@xprime,[0 100],[0]);
plot(t,x);



T=0.01;
t=0:T:100;
N=length(t);

x=0;
xs=x';
for l=1:N-1
    x=x+T*xprime(l*T,x);
    xs=[xs;x];
end

hold on
plot(t,xs(:,1),'r');
hold off
grid