x=linspace(0,2,100);
t=linspace(0,10,101);
m=0;
sol=pdepe(m,@equation,@IC,@BC,x,t);

u_at_t5=sol(t==5,:,1);
figure
plot(x,u_at_t5,'LineWidth',2)

xlabel('x')
ylabel('u')
title('solution')
grid on