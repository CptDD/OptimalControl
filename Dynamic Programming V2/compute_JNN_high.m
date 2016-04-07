function JNN_Computed=compute_JNN_high(Joptim,uk,xk,T)
    for i=1:length(Joptim)
        if(Joptim(i)==NaN)
            JNN_Computed(i)=NaN;
        else
            JNN_Computed(i)=Joptim(i)+T*(uk(i)^2+xk^2); 
        end
    end
end