function Encrypt(string,e_1,n_1)
% This function converts a string into numbers with RSA_Encryption
%%
tic
global n
global c
global e
global e_temporary
global e_unchanged

global list_wich_powers
global list_string_numbers

global var_size_LWP
global var_size_list_mod_powers
global var_LSN
global var_LSN_unchanged

list_wich_powers=[];
var_size_LWP= 1; %LWP => referce to list_wich_powers
                 %var = variable
                 %size = the size of a list
c= [];
n= n_1;
e= e_1;

var_1= 1;
var_testing_bigger_than_e= var_1;
var_size_list_mod_powers= 0;


e_temporary= e;
e_unchanged= e;

while e>=var_testing_bigger_than_e
    var_size_list_mod_powers= var_size_list_mod_powers+1;
    var_testing_bigger_than_e= var_testing_bigger_than_e*2;
end

list_string_numbers= double(uint64(string));
var_LSN= size(list_string_numbers,2); %LSN => referce to list_string_numbers
                                      %example: size([100 97 89])= 3
var_LSN_unchanged= var_LSN;
modulo_choose_powers_encrypt(e)

end