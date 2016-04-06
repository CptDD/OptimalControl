function value=compute_J(k,N,xk,uk)

if(k==N)
    value=xk.^2;
else
    value=0;
end