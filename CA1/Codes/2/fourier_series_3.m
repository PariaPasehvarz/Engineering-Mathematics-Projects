Num = 100; 
P = pi;  
alpha = 2; 
Nshow = 100; 

[f, t] = exponential_1(Num, P, alpha, Nshow);

plot(t, f);
xlabel('Time');
ylabel('f(x)');
title('Fourier Series Approximation of x^2');