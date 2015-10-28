function [formula, str,is]=deal(f, s, i, p)
if s == '1'
    formula = [s(1 : end-1) ' '];
    str = s;
else
    t=sum(f=='+' | f=='-' | f=='*' |f=='/' | f=='%');
    if t > 0
        temp = -1;
        for d = 1 : size(f, 2)
            if(f(d) == ' ')
                temp = d;
                break;
            end
        end
        a = str2num(f(1 : d-1));
        b = str2num(s);
        z = 0;
        switch f(end-1)
            case {'+'}
                z = a + b;
            case {'-'}
                z = a - b;
            case {'*'}
                z = a * b;
            case {'/'}
                if b == 0
                    z = inf;
                else
                    z = a / b;
                end
            case {'%'}
                z = a & b;
        end
        zz = num2str(z)
        formula = [zz ''];
        str = [zz ' '];
    else
        formula = [s(1 : end-1) ' '];
        str = s;
    end
end
formula = [formula, p, ' '];
is = '1';

