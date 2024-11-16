file_path = 'ABITW3.wav';
[y, Fs] = audioread(file_path);
sound(y, Fs);
fprintf('Sampling frequency : %d Hz', Fs);