%%
% ͨ������ĸ�ƶ�һ����λ����ʵ�ּ��ܺͽ��ܡ������е�������ĸ������ĸ�������(����ǰ)����һ���̶���Ŀ����ƫ�ƺ��滻�����ġ�
% ���磬��ƫ������ 3 ��ʱ�����е���ĸ A�����滻�� D��B ��� E���Դ����� X ����� A��Y ��� B��Z ��� C��
% �ɴ˿ɼ���λ�����ǿ���������ܺͽ��ܵ���Կ��
%%
function reslsut=main(input_str,shift_nums,mode)
    fprintf('the input string is: %s\n',input_str);
    %str_len= length(input_str)
    if ~isempty(shift_nums)
        key=str2double(shift_nums);
    end
    if (mode =="enc")
        ciphertext=caesar_encryption(input_str,key);
        %����caesar_encryption��������
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
        fprintf('����ģʽ����: mode=encִ�м���;mode=decִ�н���;mode==vol_dec��������\n');
    end
end