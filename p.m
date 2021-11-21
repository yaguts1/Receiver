m = readmatrix('receiverDb.csv'); %Monto minha matriz a partir dos dados fornecidos pelo script python
frequencia=200;
periodo = 1/frequencia*1000; % Periodo em msec
tempo =  periodo.*m(1:end,1);
sinal =  m(1:end,2);

plot(tempo,sinal)
xlabel('Tempo [msec]')
ylabel('Signal')
title('Signal Wave')