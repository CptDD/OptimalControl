function [output_values,output_indices]=match(xk,SumXU,JNN)

 outIndex=1;
  for i=1:length(SumXU)
      pattern=xk==SumXU(i);
      if(sum(pattern)~=0)
          indexJNN=find(pattern,1);
          output_values(outIndex)=JNN(indexJNN);
          output_indices(outIndex)=i;
          outIndex=outIndex+1;
      end
  end
end