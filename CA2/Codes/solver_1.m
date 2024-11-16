x=linspace(0,2,200);
t=linspace(0,10,201);
m=0;
sol=pdepe(m,@equation,@IC,@BC,x,t);

u_at_t5=sol(t==10,:,1);
figure
plot(x,u_at_t5,'LineWidth',2)

xlabel('x')
ylabel('u')
title('solution')
grid on