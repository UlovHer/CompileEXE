function ciphertext=caesar_encryption (plaintext,Key)
    %����X��ʾ���ģ�K��ʾ��Կ
    A=['z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y'];
    B=['Z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y'];
    L=length(plaintext);
    %��ȡ���ĵĳ���
    for i=1:L
        emp=abs(plaintext(i));
        %��ȡ���Ķ�Ӧ��ASCII��
        if (emp>=97 && emp<=123)
            %Сд��ĸa��z��ASCII����97~123
            for j=1:26
                if plaintext(i)==A(j)
                    %�ж�����һ��Сд��26����ĸ
                    n=mod(j+Key-1,26);
                    %�����Ǵ�z��ʼ�����Ǵ�a��ʼ����Ҫ��1���������ƶ���λ��
                    ciphertext(i)=A(n+1);
                end
            end
        elseif (emp>=65 && emp<=90)
            for j=1:26
                if plaintext(i)==B(j)
                    %�ж�����һ����д��26����ĸ
                    n=mod(j+Key-1,26);
                    ciphertext(i)=B(n+1);
                end
            end
        else
            ciphertext(i)=plaintext(i);
            %�Ա��Ϳո�������ַ�����ԭ״
        end
    end
end
