N=3;

xk=[0 1/2 1 3/2];
uk=[-1 -1/2 0 1/2 1];

state_index=3;
current_state=xk(state_index);

final_states=[];

%computing the J vector for the initial values
JNN=compute_J(N,N,xk,uk);
JNN_A(:,N)=JNN';
for k=N-1:-1:1
   for i=1:length(xk)
        SumXU=get_x(xk(i),uk);
        [Joptim,JIndices]=match(xk,SumXU,JNN_A(:,k+1)');
        
        JNN_Computed=compute_JNN(Joptim,JIndices,uk);
        
%         Find the minimum from the computed J matrix then the index
%         of the minimum value and get the corresponding value of uk
        
        [min_val,min_index]=min(JNN_Computed);
        JIndices(min_index);
        Uoptim_temp(i)=uk(JIndices(min_index));
        JNN_temp(i)=min_val;

   end
   Uoptim_A(:,k)=Uoptim_temp;
   JNN_A(:,k)=JNN_temp';
end

final_states=[final_states current_state];
for k=1:N-1
    u_optimal(k)=Uoptim_A(state_index,k);
    current_state=current_state+u_optimal(k);
    state_index=find(xk==current_state,1);
    final_states=[final_states current_state];
end

subplot(2,1,1)
plot(final_states)
grid
subplot(2,1,2)
plot(u_optimal)
grid
