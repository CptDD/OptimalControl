syms x t u lmb

ti=0;
tf=2;

f=-x+u;
H=u^2+x+lmb*f;

dHu=diff(H,u);
dHlmb=diff(H,x);

ucalc=solve(dHu==0,u);

res=dsolve(['Dlmb=',char(dHlmb)],'lmb(0)=2');

lmb=res;
ezplot(res,[0 2])
figure
ezplot(eval(ucalc),[0 2])









