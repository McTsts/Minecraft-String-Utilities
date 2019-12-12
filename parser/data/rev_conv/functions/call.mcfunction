#setting up values and clearing data
data modify storage rev_conv:main rev set value []
scoreboard players set mult= rev_conv.num 1
scoreboard players set out= rev_conv.num 0

#reversing input array
function rev_conv:conv/reverse_input

#doing calculation
function rev_conv:conv/calc

execute store result storage rev_conv:main out int 1 run scoreboard players get out= rev_conv.num