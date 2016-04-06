function JNN_Computed=compute_JNN(Joptim,Jindices,uk)
    JNN_Computed=Joptim+1/2*uk(Jindices).^2;
end