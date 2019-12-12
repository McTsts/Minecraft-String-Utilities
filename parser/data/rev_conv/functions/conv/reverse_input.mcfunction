#this reverses the input array for the base calculation
data modify storage rev_conv:main rev prepend from storage rev_conv:main in[0]
data remove storage rev_conv:main in[0]
execute if data storage rev_conv:main in[0] run function rev_conv:conv/reverse_input