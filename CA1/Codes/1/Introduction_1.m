% Define the time vector
t = linspace(-10, 10, 1000); % 1000 points from -π to π

% Compute the combined function
combined_function = cot(pi * t / 4) .* sin(pi * t / 8);

% Plot the combined function
figure;
plot(t, combined_function, 'b', 'DisplayName', 'f(t) = cot(\pi t/4) \cdot sin(\pi t/8)');
xlabel('t');
ylabel('Function Value');
title('Plot of f(t) = cot(\pi t/4) \cdot sin(\pi t/8)');
legend('Location', 'south');
grid on;
