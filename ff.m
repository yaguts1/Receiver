frequencia=200;
periodo = 1/frequencia*1; % Periodo em sec

m = readmatrix('..\output.csv'); %Monto minha matriz a partir dos dados fornecidos pelo script python
[M N] = size(m);
k1 = 1:M;
tempo =  periodo.*k1;
sinal =  m(1:end,1);

plot(tempo,sinal)
xlabel('Tempo [sec]')
ylabel('Signal')
title('Signal Wave')
