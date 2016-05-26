function K = CalculateKDiscrete( R, B, H, A )


K=inv(R+B'*H*B)*B'*H*A;



end

