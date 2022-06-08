function Decrypt(c_1,d_1,n_1)
% This function decrypt an array of numbers c to a string of letters
%%
tic
global m
global n
global c
global d
global e_temporary
global e_unchanged

global list_wich_powers
global list_string_numbers

global var_size_LWP
global var_size_list_mod_powers
global var_LSN
global var_LSN_unchanged

list_wich_powers= [];
var_size_LWP= 1; %LWP => referce to list_wich_powers
                 %var = variable
                 %size = the size of a list
m=[];
c=c_1;
n= n_1;
d=d_1;

var_1=1;
var_testing_bigger_than_e= var_1;
var_size_list_mod_powers= 0;

e_temporary= d;
e_unchanged= d;

while d>=var_testing_bigger_than_e
    var_size_list_mod_powers= var_size_list_mod_powers+1;
    var_testing_bigger_than_e= var_testing_bigger_than_e*2;
end

list_string_numbers= c;
var_LSN= size(list_string_numbers,2);%LSN => referce to list_string_numbers
                                     %example: size([100 97 89])= 3
var_LSN_unchanged= var_LSN;

modulo_choose_powers_decrypt(d)               
end