% Define the function f(x) = 1/x^2
f = @(x) 1 ./ (x.^2);

% Define the domain (e.g., from -10 to 10)
x_values = linspace(-10, 10, 1000); 

% Compute the sign of the function
sign_function = sign(f(x_values));

% Plot the function
figure;
plot(x_values, sign_function, 'b', 'DisplayName',  'sgn(1/x^2)');
xlabel('x');
ylabel('sgn(1/x^2)');
title('Plot of sgn(1/x^2)');
grid on;


