file_path = 'ABITW.mp3';
[y, Fs] = audioread(file_path);
sound(y, Fs);