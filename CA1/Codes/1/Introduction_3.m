% Plot the function over the desired interval
fplot(@piecewise, [-10, 10], 1000)
title('Custom Piecewise Function')
xlabel('t')
ylabel('y')
grid on

% Define the piecewise function
function y = piecewise(t)
    if t < -3
        y = -1;
    elseif t < 3
        y = 3 * ramp(t);
    else
        y = exp(-2.5 * t);
    end
end

% Define the ramp function 
function r = ramp(t)
    r = max(0, t);  % Simple ramp function 
end


