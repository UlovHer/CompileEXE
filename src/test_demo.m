clc;
clear all;
fprintf('*******Caesars Cipher Test Begin*******\n');
input_str='these is the test demo';
shift_nums='10';
mode = 'enc';
ciphertext=main(input_str,shift_nums,mode);
fprintf('\n');
mode='dec';
plaintext=main(ciphertext,shift_nums,mode);
fprintf('\n');
mode='vol_dec';
plaintext=main(ciphertext,shift_nums,mode);
fprintf('*******Caesars Cipher Test End*******\n')