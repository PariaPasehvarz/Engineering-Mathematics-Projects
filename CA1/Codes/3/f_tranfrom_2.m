fs = 1000;
a = 1;
y = a * ones(size(t));
t = -2:1/fs:2;

%Plot y=1
% plot(t,y)
% xlim([-4 4])
% ylim([-1.5 1.5])
% xlabel('t')
% ylabel('y')
% title('Plot of y = 1')
% grid on

%Use fft and fftshift to calculate the Fourier transform
y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);

%Plot y1
% plot(f, y1)
% xlabel('Frequency (Hz)');
% ylabel('F(w)');
% title('Fourier Transform of f(t) = 1');
% grid on

y_shifted = fftshift(y1);

%Plot y_shifted
plot(f, abs(y_shifted));
xlabel('Frequency (Hz)');
ylabel('F(w)');
title('Fourier Transform of f(t) = 1');
grid on

