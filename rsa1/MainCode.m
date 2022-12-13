% Extraido da comunidade de Matlab, editado por Yunior

clc
clear
close all

% Text            = 'Hola do lado';
Text = char(inputdlg('Colocar a mensagem a ser codificada em text','Menssagem',[1 50]));
Message         = int32(Text);

fprintf('-Dados ingressados-\n')
fprintf('Message original:       ''%s''\n', Text)
fprintf('Representação numerica: %s\n', num2str(Message))

%% Generate Key Pair

[Modulus, PublicExponent, PrivateExponent] = GenerateKeyPair;

fprintf('\n-Chave Pair-\n')
fprintf('Modulo:                '), fprintf('%5d\n', Modulus)
fprintf('Exponente publico :        '), fprintf('%5d\n', PublicExponent)
fprintf('Exponente privado:       '), fprintf('%5d\n', PrivateExponent)

%% Encrypt / Decrypt

Ciphertext      = Encrypt(Modulus, PublicExponent, Message);
RestoredMessage	= Decrypt(Modulus, PrivateExponent, Ciphertext);

fprintf('\n-Encriptação-\n')
fprintf('Texto criptografado :             %s [ %s ]\n', num2str(Ciphertext), char(Ciphertext))
fprintf('Menssagem original:       ''%s''\n', char(RestoredMessage))


     diall = dialog('Position',[500 500 550 150],'Name','Menssagem Codificada');
     txt = uicontrol('Parent',diall,...
               'Style','text',...
               'Position',[10 10 520 130],...
               'String',['Menssagem criptografado (#): ' num2str(Ciphertext)]);
     txt1  = uicontrol('Parent',diall,...
               'Style','text',...
               'Position',[10 10 520 50],...
               'String', ['Menssagem criptografado : ' char(Ciphertext)]);
           