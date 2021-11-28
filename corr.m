%MATLAB script that plots the autocorrelation of the output vector to check if the  Characteristic polynomial chosen for the complex signal is generating a maximum-length sequence (primitive polynomial).
m = readmatrix('..\output.csv'); %Monto minha matriz a partir dos dados fornecidos pelo script python
r = xcorr(2*m-1);
plot(r)
