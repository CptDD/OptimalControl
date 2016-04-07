function value=compute_J(k,N,xk,uk)

if(k==N)
    value=xk.^2;
else
    value=xk.^2;
    for i=k:(N-1)
        value= value + 1/2*uk.^2);
    end

end