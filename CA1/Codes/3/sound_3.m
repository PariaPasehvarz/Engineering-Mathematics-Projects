input_file = 'ABITW.mp3'; 
output_file = 'ABITW2.wav';
[y, Fs] = audioread(input_file);
new_Fs = 2 * Fs;
y_resample = resample(y, new_Fs, Fs);
audiowrite(output_file, y_resample, new_Fs);