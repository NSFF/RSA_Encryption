function Hack_d(p,q,e_1)
% This function calculates b and d used in RSA_Encryption
%%

tic
global b
global var_1
global d
global e
%%
e= e_1;

p_1= vpi(p)-1;
q_1= vpi(q)-1;

b= vpi(p_1)*vpi(q_1)

var_1=1;
d=(var_1*vpi(b)+1)/vpi(e);

Hack_d_help(d)
toc
end