fs = 1000;
y = cos(pi*t);
t = -2:1/fs:2;

%Plot cos(pi*t)
% plot(t,y)
% xlim([-4 4])
% ylim([-1.5 1.5])
% xlabel('t')
% ylabel('cos(pi*t)')
% title('Plot of cos(pi*t)')
% grid on

%Use fft and fftshift to calculate the Fourier transform
y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);

%Plot y1
% plot(f, abs(y1))
% xlabel('Frequency (Hz)');
% ylabel('F(w)');
% title('Fourier Transform of f(t) = cos(pi*t)');
% grid on

y_shifted = fftshift(y1);

%Plot y_shifted
plot(f, abs(y_shifted));
xlabel('Frequency (Hz)');
ylabel('F(w)');
title('Fourier Transform of f(t) = cos(pi*t)');
grid on

