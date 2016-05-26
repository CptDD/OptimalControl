global T;
global a;
global b;

ho=100;
k=1;
C=1;
a=-k/(2*C*sqrt(ho));
b=1/C;


T=0.1;
t=0:T:10;

global N;

N=length(t);

u=ones(N,1);


while(norm(systemNormFunc(u))>0.1)
       u=u-0.1*systemNormFunc(u)/norm(systemNormFunc(u));
       norm(systemNormFunc(u))
end

plot(t,u);

x=[1];
xs=x;
for k=1:N-1
    x=x+T*xprime_solver(x,u(k));
    xs=[xs;x];
end


