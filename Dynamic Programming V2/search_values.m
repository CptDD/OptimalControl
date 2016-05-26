function Joptim=search_values(xk,SumXU,JNN)

for i=1:length(SumXU)
    pattern=xk==SumXU(i);
    if(sum(pattern)~=0)
        indexJNN=find(pattern,1);
        Joptim(i)=JNN(indexJNN);
    else
        Joptim(i)=NaN;
    end
end

end