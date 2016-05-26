clear all
close all
clc

N=3;
T=0.1;


xk=-20:T:10;
uk=-3:T:4;


current_state=3;
state_index=find(xk==current_state,1);

final_states=[];

%computing the J vector for the initial values
JNN=compute_J_high(N,N,xk);
JNN_A(:,N)=JNN';
for k=N-1:-1:1
   for i=1:length(xk)
       for j=1:length(uk)
        SumXU(j)=get_x_high(xk(i),uk(j),T);
       end
        Joptim=search_values(xk,SumXU,JNN_A(:,k+1)');
       
        JNN_Computed=compute_JNN_high(Joptim,uk,xk(i),T);
        [min_val,min_index]=min(JNN_Computed);
        Uoptim_temp(i)=uk(min_index);
        JNN_temp(i)=min_val;
    end
    Uoptim_A(:,k)=Uoptim_temp;
    JNN_A(:,k)=JNN_temp';
end
 
minimum_cost=JNN_A(state_index,1); 

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
