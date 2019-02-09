fid=fopen('conts.txt','r');
d=fgets(fid);
n=1;
i=1;
while i<=length(d) 
    if strcmp(d(i),':')
        con(n).name='';
        con(n).number='';
        con(n).email='';
        con(n).address='';
        n=n+1;
        i=i+1;
        flag=1;
        continue;
    end
    if strcmp(d(i),';')
        flag=flag+1;
        i=i+1;
        continue;
    end
%     if strcmp(d(i),'_')
%        con(n-1).name=strcat(con(n-1).name,d(i));
%     end
    switch flag
        case 1
            con(n-1).name=[con(n-1).name,d(i)];
        case 2
            con(n-1).number=strcat(con(n-1).number,d(i));
        case 3
            con(n-1).email=strcat(con(n-1).email,d(i));
        case 4
            con(n-1).address=strcat(con(n-1).address,d(i));
    end
i=i+1;
end

fclose(fid);