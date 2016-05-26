%starting the system
clear all
close all
clc

startup

%loading the linearized state space model of the system
load STATE_SPACE_MODEL

state_space.A=linearized_state_space_model.A;
linearized_state_space_model.B(4,2)=linearized_state_space_model.B(4,2)*10^(-2);
linearized_state_space_model.B=linearized_state_space_model.B*10^(-1);
state_space.B=linearized_state_space_model.B;
state_space.C=eye(4);% this is important to get all the states
state_space.D=zeros(4,2);
%calculating the lqr control matrix K
    R=[50  0
        0 50];
%    Q=eye(4)*100;
    Q=[10 0   0 0
        0 10 0 0
        0 0   1 0
        0 0   0 1];
    N=zeros(4,2);
    
lqr_mat.Q=Q;
lqr_mat.R=R;

Kmatlab=lqr(state_space.A,state_space.B,Q,R);
lqr_gain=Kmatlab;
%representing the command signal in SIMULINK
%simulink file for this LinearStateSpaceModelLQR

%the evolution of the K matrix
eulerian_K_time_varying
%comparison between K fized and K variable
eulerian_all
%Calculating the discrete K matrix
%using the same requirements as in continuous time
%discretizing the model sampling time 
Ts=0.01;
discrete_state_space_model=CalculateDiscreteStateSpaceModel(linearized_state_space_model,Ts);
%calculating the gain
N=zeros(4,2);
lqr_gain_discrete=dlqr(discrete_state_space_model.A,discrete_state_space_model.B,Q,R,N);
%this example can be seen in the SIMULINK model
%calculating the time varying discrete function
disp('Eularian K discrete time varying: press any key');
pause();

eulerian_K_time_varying_discrete

eulerian_all_discrete


%this part is for the reference following point of view

lqr_reference_following





