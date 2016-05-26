%close all
T=0.01;
t=0:T:1.5;
N=length(t);

x=[0.2 0.3 0 0]';
x1=x;
x2=x;
xs1=x';
xs2=x';
us1=[0;0];
us2=[0;0];
for k=1:N-1
    
    u1=-Kmatlab*x1;
    Kmat=[KmatC1(:,k) KmatC2(:,k) KmatC3(:,k) KmatC4(:,k)];
    u2=-Kmat*x2;
    x1=x1+T*Pilotal(k*T,x1,state_space,u1);
    x2=x2+T*Pilotal(k*T,x2,state_space,u2);
    us1=[us1 u1];
    us2=[us2 u2];
    xs1=[xs1;x1'];
    xs2=[xs2;x2'];
    if (size(us1)>N)
        disp('alma');
    end
end
us1=us1(:,2:end);
us2=us2(:,2:end);
% plot(t,xs(:,1),'k');
% plot(t,xs(:,2),'g');
plot(t,xs1(:,1),'r');
hold on
plot(t,xs2(:,1),'b');
legend('Kmatlab' , 'Kvariable');
grid;
figure;
plot(t(1:N-1),us1(1,:),'r');
hold on
plot(t(1:N-1),us2(1,:),'b');
legend('Kmatlab','Kvariable');
grid;
