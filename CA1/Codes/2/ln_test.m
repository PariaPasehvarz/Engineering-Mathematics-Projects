Num = 10; 
P = pi; 
a = 100;
b = 5;
Nshow = 5; 

% Calculate the Fourier series
[f, t] = ln_function(Num, P, a, b , Nshow);

%Plot the Fourier series approximation
plot(t, f);
xlabel('Time');
ylabel('f(x)');
title('Fourier Series Approximation of x^2lnx');