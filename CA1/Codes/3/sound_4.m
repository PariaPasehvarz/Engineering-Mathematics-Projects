file_path = 'ABITW2.wav';
[y, Fs] = audioread(file_path);
sound(y, Fs);
fprintf('Sampling frequency : %d Hz', Fs);
