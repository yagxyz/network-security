function [ chave ] = Codec( S, n )
%S é o resultado da função Oper_chave
%n é o numero de carateres a serem encryptados

i = 0;
j = 0;
chave = uint16([]);
%A cada interção será adicionado um valor chave

while n> 0
    n = n - 1;
    i = mod( i + 1, 256);
    j = mod(j + S(i+1), 256);
    S([i+1 j+1]) = S([j+1 i+1]);
    K = S( mod(  S(i+1) + S(j+1)   , 256)  + 1  );
    chave = [chave, K];
    
    
end

end

