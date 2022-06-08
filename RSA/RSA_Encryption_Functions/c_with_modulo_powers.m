function c_with_modulo_powers(n,list)
%%
global c

global var_string_index
global var_LSN_unchanged

global local_var_size_LWP

global list_wich_powers

while local_var_size_LWP~=1
    c(var_string_index)= mod(c(var_string_index)*list(list_wich_powers(local_var_size_LWP-1)),n);
    local_var_size_LWP= local_var_size_LWP-1;
end
if var_LSN_unchanged== size(c,2)
    %%
    c
    toc
    %Decrypt(c,15001,n)
    return
end
end