%determining the state space model for the second order system
global A B
A=[0 0 1 0
    0 0 0 1
    -48 0 0 31.8
    86 0 0 -1449.7];
B=[0
    0
    -5.9
    270];

C=eye(4);
D=zeros(4,1);

T=0.1;
t=0:T:1;
N=length(t);
x=[0 0 0 0]';
xs=x;
for k=1:N-1
    x=x+T*SmartBeamfunct(k*T,x);
    xs=[xs x];
end


plot(t,xs(1,:),'r');
hold on
plot(t,xs(2,:),'y');
plot(t,xs(3,:),'k');
plot(t,xs(4,:),'g');

