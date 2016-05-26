function Pnew = CalculateP( P,state_space,lqr_mat )
A=state_space.A;
B=state_space.B;
Q=lqr_mat.Q;
R=lqr_mat.R;


Pnew=-(A'*P + P*A + Q - P*B*inv(R)*B'*P);

end

