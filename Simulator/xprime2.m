function xp=xprime(t,x)

   M1=1;
   M2=0.5;
   k=10;
   w=0.002;
   g=9.8;
   xp=[x(2);x(1)*(-k/M1)+x(2)*(-w*g)+x(3)*k/M1;x(4);x(1)*k/M2+x(3)*(-k/M2)+x(4)*(w*g)];
end