%function

a=4;
b=6;
c=add(a,b);
d=mul(a,b);
disp(c);
disp(d);


function [c] = add(a,b)
    c=a+b;
end

function [d] = mul(a,b)
    d=a*b;
end