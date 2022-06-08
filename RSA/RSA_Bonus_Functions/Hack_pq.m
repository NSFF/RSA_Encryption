function Hack_pq(n)
% This function finds the factors of n in RSA_Encryption
%%
tic

factors=factor(sym(n))

toc
end