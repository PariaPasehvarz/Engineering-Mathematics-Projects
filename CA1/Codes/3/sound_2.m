file_path = 'ABITW.mp3';
[y, Fs] = audioread(file_path);
fprintf('Sampling frequency : %d Hz', Fs);