%%
% 通过把字母移动一定的位数来实现加密和解密。明文中的所有字母都在字母表上向后(或向前)按照一个固定数目进行偏移后被替换成密文。
% 例如，当偏移量是 3 的时候，所有的字母 A将被替换成 D，B 变成 E，以此类推 X 将变成 A，Y 变成 B，Z 变成 C。
% 由此可见，位数就是凯撒密码加密和解密的密钥。
%%
function reslsut=main(input_str,shift_nums,mode)
    fprintf('the input string is: %s\n',input_str);
    %str_len= length(input_str)
    if ~isempty(shift_nums)
        key=str2double(shift_nums);
    end
    if (mode =="enc")
        ciphertext=caesar_encryption(input_str,key);
        %调用caesar_encryption函数加密
        reslsut=ciphertext;
        fprintf('the ciphertext is: %s\n',ciphertext);
    elseif (mode =="dec")
        plaintext=caesar_decryption(input_str,key);
        reslsut=plaintext;
        fprintf('the plaintext is: %s\n',plaintext);
    elseif (mode=='vol_dec')
        plaintext=[];
        for key_index=1:26
            fprintf('the %sth decryption\n',num2str(key_index));
            plaintext=caesar_decryption(input_str,key_index);
            fprintf('the plaintext is: %s\n',plaintext);
        end 
        reslsut=plaintext;
    else
        fprintf('工作模式错误: mode=enc执行加密;mode=dec执行解密;mode==vol_dec暴力解密\n');
    end
end