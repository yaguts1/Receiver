frequencia=200;
periodo = 1/frequencia*1; % Periodo em sec
while 1==1
    m = readmatrix('..\output.csv'); %Monto minha matriz a partir dos dados fornecidos pelo script python
    [M N] = size(m);
    slice = 1000;
    k1 = 1:M;
    if M > slice
        k1 = M-slice:M;
        tempo =  periodo.*k1;
        sinal =  m(M-slice:end,1);
    else 
        tempo =  periodo.k1;
        sinal =  m(1:end,1);
    end

    pause(0.5)
    plot(tempo,sinal,'b')
    xlabel('Tempo [sec]')
    ylabel('Signal')
    title('Signal Wave')
end