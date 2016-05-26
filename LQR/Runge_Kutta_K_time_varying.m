close all;


T=0.000000005;
t=0:T:0.00002;
N=length(t);

P=eye(4);


KmatC1 = [];
KmatC2 = [];
KmatC3 = [];
KmatC4 = [];

for k=1:N
    P=P-T*CalculateP(P,state_space,lqr_mat);
    K=CalculateK(P,state_space.B,lqr_mat.R);
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

hold off
