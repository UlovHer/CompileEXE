function plaintext=caesar_decryption(string,key)
    %其中string表示密文，key表示密钥
    A=['z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y'];
    B=['Z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y'];
    L=length(string);  
    %获取密文的长度
    for i=1:L
        emp=abs(string(i));
        %获取密文所有符号对应的ASCII码
        if (emp>=97 && emp<=123) 
            %小写字母a到z的ASCII码是97~123
            for j=1:26
                if string(i)==A(j)
                    %判断是哪一个小写字母
                    n=mod(j-key-1,26);
                    %由于是从z开始而不是从a开始所以要减1才是真正移动的位数
                    plaintext(i)=A(n+1);
                end
            end
        elseif (emp>=65 && emp<=90)
            %判断是哪一个大写字母
            for j=1:26
                    if string(i)==B(j)
                    %判断是哪一个大写字母
                    n=mod(j-key-1,26);
                    plaintext(i)=B(n+1);
                    end
            end
        else
            plaintext(i)=string(i);   
            %对标点和空格等其他字符保持原状
        end
    end
end