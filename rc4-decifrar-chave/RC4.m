
clc;clear

i1=1;i2=1;i3=1;i4=1;

Seq_chaves=string(1:456976);

ii1=1;ii2=1;ii3=1;ii4=1;

a1=0;a2=0;a3=0;a4=0;

for i=1: 456976
 
if ii1 <= 26 
i1=ii1;
elseif ii1 > 26 
ii1 = 1;
i1=1;
ii2=ii2+1;
a1 = 1;
end

if ii2 <= 26 && a1 == 1 
i2=ii2;
a1=0;
elseif ii2 > 26
ii2 = 1;
i2=1;
ii3=ii3+1;
a2=1;
end

if ii3 <= 26 && a2 == 1
i3=ii3;
a2=0;
elseif ii3 > 26
ii3 = 1;
i3=1;
ii4=ii4+1;
a3=1;
end

if ii4 <= 26 && a3 == 1
i4=ii4;
a3=0;
elseif ii4 > 26
ii4 = 1;
i4=1;
a4=1;
end

Seq_chaves(i) = Gerar_chave(i1,i2,i3,i4);         
 
ii1=ii1+1;

end


menss =char(hex2dec(['25'; '54'; '86'; '8d'; 'dd'; '2b'; '52'; 'f3'; '95'; 'ca'; 'f5'; 'b3'; 'ef'; '37'; '1f'; '5d'; 'de'; '89'; 'c3' ;'00'; 'b5'; '23'; 'ef']))'

mens = string(1:456976);

for ch = 1 : 456976
chave = Seq_chaves(ch);

Z = uint8(Codec(Oper_chave(chave), size(menss,2)));

P = uint8(char(menss));

res = bitxor(Z, P);

%mostrando os valores em hex and unicode
% res_in_hex = mat2str(dec2hex(res,2))
mens(ch) = char(res);
end

mmch=string(1:456976);
ttt=1;
for tt = 1 : 456976
   
    if contains(mens(tt),'.') && contains(mens(tt),'a') && contains(mens(tt),'e') && contains(mens(tt),'u') && contains(mens(tt),'t')
    mens(tt)
    mmch(tt) = Seq_chaves(tt);
    ttt=ttt+1;
    
    end
    
end

diall = dialog('Position',[500 500 550 150],'Name','Menssagem Decodificada');
     txt = uicontrol('Parent',diall,...
     'Style','text',...
     'Position',[170 50 210 40],...
     'String','TERMINADO!');
