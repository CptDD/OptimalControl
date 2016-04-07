function value=compute_J_high(k,N,xk)

if(k==N)
    value=(xk-10).^2;
else
    value=0;
end