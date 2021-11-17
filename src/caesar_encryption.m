function ciphertext=caesar_encryption (plaintext,Key)
    %其中X表示明文，K表示密钥
    A=['z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y'];
    B=['Z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y'];
    L=length(plaintext);
    %获取明文的长度
    for i=1:L
        emp=abs(plaintext(i));
        %获取明文对应的ASCII码
        if (emp>=97 && emp<=123)
            %小写字母a到z的ASCII码是97~123
            for j=1:26
                if plaintext(i)==A(j)
                    %判断是哪一个小写的26个字母
                    n=mod(j+Key-1,26);
                    %由于是从z开始而不是从a开始所以要减1才是真正移动的位数
                    ciphertext(i)=A(n+1);
                end
            end
        elseif (emp>=65 && emp<=90)
            for j=1:26
                if plaintext(i)==B(j)
                    %判断是哪一个大写的26个字母
                    n=mod(j+Key-1,26);
                    ciphertext(i)=B(n+1);
                end
            end
        else
            ciphertext(i)=plaintext(i);
            %对标点和空格等其他字符保持原状
        end
    end
end
