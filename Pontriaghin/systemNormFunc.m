function normH=systemNormFunc(u)
global N T a b;
x=[1];
xs=x;
for k=1:N-1
    x=x+T*xprime_solver(x,u(k));
    xs=[xs;x];
end

l=[(x(end)-10)^2];
ls=l;

for k=1:N-1
    l=l-T*xprime2_solver(x,ls(k));
    ls=[l;ls];
end


H=u.^2+xs.^2+ls.*(-a*xs+b*u);

%H=u.^2+ls.*(-a*xs+b*u);

normH=2*u+b*ls;

end