%in order to do this we have to calculate the value of N
Acl=state_space.A - state_space.B*Kmatlab;
C=[1 0 0 0;
   0 1 0 0];
N_reference=-inv(C*inv(Acl)*state_space.B);


%separate lqr_gain for the 2nd following method
%we are interested about the first two state, the angles

lqr_gain1=lqr_gain(:,1:2);
lqr_gain2=lqr_gain(:,3:4);



