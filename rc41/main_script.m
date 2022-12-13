plaintext=char(hex2dec(['25'; '54'; '86'; '8d'; 'dd'; '2b'; '52'; 'f3'; '95'; 'ca'; 'f5'; 'b3'; 'ef'; '37'; '1f'; '5d'; 'de'; '89'; 'c3' ;'00'; 'b5'; '23'; 'ef']))'

key = 'AAAB';
% plaintext = 'Mission Accomplished';

Z = uint8(PRGA(KSA(key), size(plaintext,2)));

P = uint8(char(plaintext));

res = bitxor(Z, P);

%printing result in hex and unicode
res_in_hex = mat2str(dec2hex(res,2))
res_in_unicode = char(res)
