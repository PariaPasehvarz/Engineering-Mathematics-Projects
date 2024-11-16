x = linspace(0, 2, 200); 
t = linspace(0, 10, 201); 
m=0;
sol=pdepe(m,@equation,@IC,@BC,x,t);
u=sol(:,:,1);
figure
imagesc(x,t,u);
surf(sol);
xlabel('x');
ylabel('t');
zlabel('Heat')
title('pde');