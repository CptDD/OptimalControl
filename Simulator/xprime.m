function xp=xprime(t,x)
global C k
q=getQ();
xp=[1/C*q-k/C*sqrt(x)];
end