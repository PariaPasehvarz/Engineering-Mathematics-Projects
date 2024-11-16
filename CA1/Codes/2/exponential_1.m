function [f, t] = exponential_1(Num, P, alpha, Nshow)

t = linspace(-2*P, 2*P, 1000);

a_0 = (1/(P)) * integral(@(x) x.^alpha, -P, P);
disp(a_0)
a_n = zeros(Num, 1);
b_n = zeros(Num, 1);
for n = 1:Num
    a_n(n) = (1/P) * integral(@(x) x.^alpha .* cos((pi*n*x)/P), -P, P);
    b_n(n) = (1/P) * integral(@(x) x.^alpha .* sin((pi*n*x)/P), -P, P);
end
disp('an')
disp(a_n)
disp('bn')

disp(b_n)

f = (a_0/2);
for n = 1:Nshow
    f = f + a_n(n)*cos(pi*n*t/P) + b_n(n)*sin(pi*n*t/P);
end

end
