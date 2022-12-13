function [chave] = Gerar_chave(i1,i2,i3,i4)

caract = ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N'...
    'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];


    
    c1 = caract(i1);
    c2 = caract(i2);
    c3 = caract(i3);
    c4 = caract(i4);


chave = strcat(c1,c2,c3,c4);
end

