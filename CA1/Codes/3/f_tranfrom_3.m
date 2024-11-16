fs = 1000;
t = -2:1/fs:2;
y = double(t==0);

%Plot y=delta(t)
% plot(t,y)
% xlim([-2 2])
% ylim([-1.5 1.5])
% xlabel('t')
% ylabel('y')
% title('Plot of delta dirac')
% grid on

%Use fft and fftshift to calculate the Fourier transform
y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);

%Plot y1
%plot(f, y1)
%xlabel('Frequency (Hz)');
%ylabel('F(w)');
%title('Fourier Transform of Dirac Delta');
%grid on

y_shifted = fftshift(y1);

%Plot y_shifted
plot(f, abs(y_shifted));
xlabel('Frequency (Hz)');
ylabel('F(w)');
ylim([-5 5])
title('Fourier Transform of Dirac Delta');
grid on

