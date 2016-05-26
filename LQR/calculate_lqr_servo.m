%calculate lqr_servo
Cout=[1 0 0 0
      0 1 0 0];

Ae=[state_space.A zeros(4,2)
    -Cout zeros(2,2)];

Be=[state_space.B
    zeros(2,2)];

%check controllability

rrr=rank([Be Ae*Be Ae^2*Be Ae^3*Be Ae^4*Be Ae^5*Be]);
Qe =[

   0.1     0     0     0     0     0
     0     0.1     0     0     0     0
     0     0     0.1     0     0     0
     0     0     0     0.1     0     0
     0     0     0     0     500     0
     0     0     0     0     0     500];
Re=eye(2);
if (rrr==6)

    K_servo=lqr(Ae,Be,Qe,Re);
    
    
end

Kx_gain = K_servo(:,1:4);
Kz_gain = K_servo(:,5:6);
    

