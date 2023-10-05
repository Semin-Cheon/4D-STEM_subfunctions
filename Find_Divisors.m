function Divisor_list = Find_Divisors(Number)
% Finding divisor list of the given number
% Semin.Ch
% 2023.09.07

count=1;

one = 1;
Last = Number;

for i=2:1:sqrt(Number)

    if rem(Number,i)==0 
        Divisor_list(count)=i;
        Divisor_list(count+1)=Number/i;

        if i==Number/i
            Divisor_list(count+1)=[];
        end

        count=count+2;

    end

end

Divisor_list = [one, Divisor_list, Last];
Divisor_list = sort(Divisor_list);

end