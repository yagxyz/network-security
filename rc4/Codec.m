function [ chave ] = Codec( S, n )
%S � o resultado da fun��o Oper_chave
%n � o numero de carateres a serem encryptados

i = 0;
j = 0;
chave = uint16([]);
%A cada inter��o ser� adicionado um valor chave

while n> 0
    n = n - 1;
    i = mod( i + 1, 256);
    j = mod(j + S(i+1), 256);
    S([i+1 j+1]) = S([j+1 i+1]);
    K = S( mod(  S(i+1) + S(j+1)   , 256)  + 1  );
    chave = [chave, K];
    
    
end

end

