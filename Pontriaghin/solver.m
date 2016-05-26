global T;
T=0.01;
t=0:T:2;
global N;

N=length(t);

u=ones(N,1);



while(norm(normFunc(u))>0.01)
    u=u-0.01*normFunc(u)/norm(normFunc(u));
    norm(normFunc(u));
end

plot(t,u)

x=[1];
xs=x;
for k=1:N-1
    x=x+T*xprime(x,u(k));
    xs=[xs;x];
end

