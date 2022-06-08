function modulo_choose_powers_encrypt(e_1)
%%
global e
global e_temporary

global list_wich_powers
global list_string_numbers

global var_size_LWP
global var_string_index
global var_LSN
global var_size_list_mod_powers

e=e_1;

if e== 0
    %%
    var_string_index= 1;
    while var_LSN~=0
        symbol_to_number(list_string_numbers(var_string_index))
        var_string_index= var_string_index+1;
        var_LSN= var_LSN-1;
    end
    
elseif e>=2^(var_size_list_mod_powers-1)
    %%
    e_temporary= e-2^(var_size_list_mod_powers-1);
    list_wich_powers(var_size_LWP)= var_size_list_mod_powers;
    if e_temporary== 0
        var_string_index= 1;
        while var_LSN~=0
            symbol_to_number(list_string_numbers(var_string_index))
            var_string_index= var_string_index+1;
            var_LSN= var_LSN-1;
        end
    end
    var_size_list_mod_powers= var_size_list_mod_powers-1;
    var_size_LWP= var_size_LWP+1;
    modulo_choose_powers_encrypt(e_temporary)
    
elseif 2^(var_size_list_mod_powers-1)> e
    %%
    var_size_list_mod_powers= var_size_list_mod_powers-1;
    modulo_choose_powers_encrypt(e_temporary)
end
end