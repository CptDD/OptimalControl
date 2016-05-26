function normH=normFunc(u)
global N T;
x=[1];
xs=x;
for k=1:N-1
    x=x+T*xprime(x,u(k));
    xs=[xs;x];
end

l=[0];
ls=l;

for k=1:N-1
    l=l-T*xprime2(x);
    ls=[l;ls];
end

H=u.^2+xs+ls.*(-xs+u);

normH=2*u+ls;

end