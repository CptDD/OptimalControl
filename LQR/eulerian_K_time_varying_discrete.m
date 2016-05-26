close all;


T=0.001;
t=0:T:5;
N=length(t);

H=eye(4);


KmatC1 = [];
KmatC2 = [];
KmatC3 = [];
KmatC4 = [];

for k=1:N
    K = CalculateKDiscrete(R,discrete_state_space_model.B,H,discrete_state_space_model.A);
    H = CalculateHDiscrete(discrete_state_space_model.A,discrete_state_space_model.B,K,H,R,Q);
    KmatC1 = [K(:,1) KmatC1];
    KmatC2 = [K(:,2) KmatC2];
    KmatC3 = [K(:,3) KmatC3];
    KmatC4 = [K(:,4) KmatC4];
end
plot(t,KmatC1(1,:),'b');
hold
plot(t,KmatC1(2,:),'g');

figure;
plot(t,KmatC2(1,:),'b');
hold
plot(t,KmatC2(2,:),'g');

figure;
plot(t,KmatC3(1,:),'b');
hold on
plot(t,KmatC3(2,:),'g');

figure;
plot(t,KmatC4(1,:),'b');
hold 
plot(t,KmatC4(2,:),'g');


plot(t,KmatC1(1,:),'b');
hold on
plot(t,KmatC1(2,:),'r');
plot(t,KmatC2(1,:),'r');

plot(t,KmatC2(2,:),'b');
plot(t,KmatC3(1,:),'b');

plot(t,KmatC3(2,:),'b');
plot(t,KmatC4(1,:),'r');

plot(t,KmatC4(2,:),'b');

hold off
