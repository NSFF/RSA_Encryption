function symbol_to_number(var_string_number_1)
%%
global n
global c
global e_unchanged

global var_string_number
global var_string_index
global var_size_LWP

global local_var_size_LWP

global list_powers_string
global list_wich_powers

var_string_number= var_string_number_1;

list_powers_string=var_string_number;
var_2=1;
var_3=2;
var_testing_bigger_than_e_unch= var_3;
while e_unchanged>=var_testing_bigger_than_e_unch
    var_2= var_2+1;
    list_powers_string(var_2)=mod(list_powers_string(var_2-1)^var_3,n);
    var_testing_bigger_than_e_unch= var_testing_bigger_than_e_unch*2;
end
local_var_size_LWP= var_size_LWP;
c(var_string_index)= list_powers_string(list_wich_powers(local_var_size_LWP));
c_with_modulo_powers(n,list_powers_string)

end