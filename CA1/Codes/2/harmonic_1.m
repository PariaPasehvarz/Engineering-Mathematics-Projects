function [f, t] = harmonic_1(x_values, fx_values, Nshow, P)

t = linspace(-2*P, 2*P, 1000);
arr_size = numel(x_values);

a_0 = 2 * mean(fx_values);

disp('a0')
disp(a_0)

a_n = zeros(Nshow, 1);
b_n = zeros(Nshow, 1);

for n = 1:Nshow
    sum_fx_cos_nx = 0;
    sum_fx_sin_nx = 0;
    for i = 1:arr_size
    x = x_values(i);
    sum_fx_cos_nx = sum_fx_cos_nx + fx_values(i) * cos(n * x);
    end
    mean_fx_cos_nx = sum_fx_cos_nx / arr_size;
    a_n(n) = 2 * mean_fx_cos_nx;

    for i = 1:arr_size
    x = x_values(i);
    sum_fx_sin_nx = sum_fx_sin_nx + fx_values(i) * sin(n * x);
    end
    mean_fx_sin_nx = sum_fx_sin_nx / arr_size;
    b_n(n) = 2 * mean_fx_sin_nx;
end

disp('an')
disp(a_n)
disp('bn')

disp(b_n)

f = (a_0/2);
for n = 1:Nshow
    f = f + a_n(n)*cos(n*t) + b_n(n)*sin(n*t);
end
