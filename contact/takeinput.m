function output=takeinput(input,var)
if var==3
    input=lower(input)
        %var=3 for email
else
    input(1)=upper(input(1));
    l=length(input)
    for i=1:l
        if strcmp(input(i),' ')
            input(i+1)=upper(input(i+1));
        end
    end
end
output=input