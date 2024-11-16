x = linspace(0, 2, 100); 
t = linspace(0, 10, 101); 
m=0;
sol=pdepe(m,@equation,@IC,@BC,x,t);
u=sol(:,:,1);
figure
imagesc(x,t,u);
colorbar;
xlabel('x');
ylabel('t');
title('pde');
colormap('hot')
colormap('jet')