function plaintext=caesar_decryption(string,key)
    %����string��ʾ���ģ�key��ʾ��Կ
    A=['z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y'];
    B=['Z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y'];
    L=length(string);  
    %��ȡ���ĵĳ���
    for i=1:L
        emp=abs(string(i));
        %��ȡ�������з��Ŷ�Ӧ��ASCII��
        if (emp>=97 && emp<=123) 
            %Сд��ĸa��z��ASCII����97~123
            for j=1:26
                if string(i)==A(j)
                    %�ж�����һ��Сд��ĸ
                    n=mod(j-key-1,26);
                    %�����Ǵ�z��ʼ�����Ǵ�a��ʼ����Ҫ��1���������ƶ���λ��
                    plaintext(i)=A(n+1);
                end
            end
        elseif (emp>=65 && emp<=90)
            %�ж�����һ����д��ĸ
            for j=1:26
                    if string(i)==B(j)
                    %�ж�����һ����д��ĸ
                    n=mod(j-key-1,26);
                    plaintext(i)=B(n+1);
                    end
            end
        else
            plaintext(i)=string(i);   
            %�Ա��Ϳո�������ַ�����ԭ״
        end
    end
end