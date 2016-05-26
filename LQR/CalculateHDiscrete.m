function Hnew = CalculateHDiscrete( A, B, K, H, R, Q )


Hnew=(A-B*K)'*H*(A-B*K) + K'*R*K + Q;



end