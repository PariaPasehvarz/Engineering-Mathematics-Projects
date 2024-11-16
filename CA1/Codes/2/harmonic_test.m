x_values = [0, pi/3, (2*pi)/3, pi, (4*pi)/3, (5*pi)/3, 2*pi];
fx_values = [1, 1.4, 1.9, 1.7, 1.5, 1.2, 1];
P = pi;  
Nshow = 4; 

[f, t] = harmonic_1(x_values, fx_values, Nshow, P);

plot(t, f);
xlabel('Time');
ylabel('f(x)');
title('Harmonic Analysis');