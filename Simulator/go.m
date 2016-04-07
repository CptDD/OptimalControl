sol=dsolve('Dx=1/10*1-1/10*x^(1/2)','x(0)=0');
ezplot(sol,[0 100]);
grid