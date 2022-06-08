function m_with_modulo_powers(n,list)
%%
global m

global var_string_index
global var_LSN_unchanged

global local_var_size_LWP

global list_wich_powers

while local_var_size_LWP~=1
    m(var_string_index)= mod(m(var_string_index)*list(list_wich_powers(local_var_size_LWP-1)),n);
    local_var_size_LWP= local_var_size_LWP-1;
end
if var_LSN_unchanged== size(m,2)
    %%
    char(m)
    toc
    return
end
end