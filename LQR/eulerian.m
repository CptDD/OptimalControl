%calcute the discrete
close all
T=0.01;
t=0:T:10;
N=length(t);

x=[0 0 3]';
xs=x';

us=0;
for k=1:N-1
    
    u=-Kmatlab*x;

    x=x+T*Pilotal(k*T,x,state_space,u);
    us=[us ;u];
    xs=[xs;x'];
end
us=us(2:end);
plot(t,xs(:,1),'k');
hold on
plot(t,xs(:,2),'g');
plot(t,xs(:,3),'r');
grid;


figure;
plot(t(1:N-1),us,'r');
grid;
