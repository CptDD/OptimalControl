M1=1;
M2=0.5;
k=10;
w=0.002;
g=9.8;

A=[0 1 0 0;
    -k/M1 -w*g k/M1 0;
    0 0 0 1;
    k/M2 0 -k/M2 -w*g];

B=[0; 1/M1;0;0];

C=[1 0 0 0;
    0 0 1 0];

D=[1;1];