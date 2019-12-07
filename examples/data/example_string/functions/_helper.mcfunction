## Helper Function for _all
scoreboard players reset callback string

## 1
# Handles delay of example 1
execute if score helper string matches 0 run function example_string:1_basic
execute if score helper string matches 0 run schedule function example_string:_helper 7t
execute if score helper string matches 0 run scoreboard players set helperX string 1
# Jumps back to all after 1
execute if score helper string matches 1 run schedule function example_string:_all 1t

## 7
# Places a callback after 6 to delay 7
execute if score helper string matches 2 run data modify storage string:in input append value {string:"delay",callback:"function example_string:_helper",callbackID:1}
execute if score helper string matches 2 run function string:do/read
execute if score helper string matches 2 run scoreboard players set helperX string 3
# Handles delay of 7
execute if score helper string matches 3 run function example_string:7_substr_char_array
execute if score helper string matches 3 run schedule function example_string:_helper 1t
execute if score helper string matches 3 run scoreboard players set helperX string 4
# Jumps back to all after 7
execute if score helper string matches 4 run schedule function example_string:_all 1t

## 11
# Places a callback after 10 to delay 11
execute if score helper string matches 5 run data modify storage string:in input append value {string:"delay",callback:"function example_string:_helper",callbackID:1}
execute if score helper string matches 5 run function string:do/read
execute if score helper string matches 5 run scoreboard players set helperX string 6
# Handles delay of 11
execute if score helper string matches 6 run function example_string:11_seed
execute if score helper string matches 6 run schedule function example_string:_helper 5t
execute if score helper string matches 6 run scoreboard players set helperX string 7
# Jumps back to all after 11
execute if score helper string matches 7 run schedule function example_string:_all 1t

## Reset
# Places a callback at the end for reset
execute if score helper string matches 8 run data modify storage string:in input append value {string:"delay",callback:"function example_string:_helper",callbackID:1}
execute if score helper string matches 8 run function string:do/read
execute if score helper string matches 8 run scoreboard players set helperX string 9
# Resets 
execute if score helper string matches 9 run scoreboard players set helper string -1


# Copy helperX
execute if score helperX string matches 1.. run scoreboard players operation helper string = helperX string
scoreboard players reset helperX string