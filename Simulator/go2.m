[t,x]=ode23(@xprime,[0 10],[1;0;0]);

plot(t,x);