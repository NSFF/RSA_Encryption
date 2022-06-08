function Hack_d_help(d_1)
%%
global b
global d
global var_1
global e

d=vpi(d_1);
var_2=0;
%%
while var_2==0
    if mod(d*vpi(e),b)~= 1
        var_1= var_1+1;
        d=(var_1*vpi(b)+1)/vpi(e);
    elseif mod(d*vpi(e),b)== 1
        d
        break
    end
end
end