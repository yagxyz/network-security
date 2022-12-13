function [ S ] = Oper_chave( chave )

chave = char(chave);
chave = uint16(chave);

chave_length = size(chave,2);
S=0:255;

j=0;
for i=0:1:255
    j =  mod( j + S(i+1) + chave(mod(i, chave_length) + 1), 256);
    S([i+1 j+1]) = S([j+1 i+1]);
end

end