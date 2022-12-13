clc, clear

    plaintext = char(inputdlg('Colocar a mensagem a ser codificada em text','Menssagem',[1 50]));
    chave = char(inputdlg('Colocar a chave para fazer a codificação','Chave',[1 50]));
    Z = uint8(Codec(Oper_chave(chave), size(plaintext,2)));
    P = uint8(plaintext);
    res = bitxor(Z, P);
    %mostrando os valores em hex and unicode
    res_in_hex = mat2str(dec2hex(res,2))
    res_in_unicode = char(res)
    
     diall = dialog('Position',[500 500 550 150],'Name','Menssagem Codificada');
     txt = uicontrol('Parent',diall,...
               'Style','text',...
               'Position',[10 10 520 130],...
               'String',['HEX  ' res_in_hex]);
     txt1 = uicontrol('Parent',diall,...
               'Style','text',...
               'Position',[10 10 520 50],...
               'String', ['TEX  ' res_in_unicode]);
