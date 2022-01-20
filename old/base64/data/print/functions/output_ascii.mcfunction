#moving current byte into temp position
data modify storage ascii:main temp set from storage ascii:main bytes[0]
data remove storage ascii:main bytes[0]

#writing character
function print:print_char

#loop
execute if data storage ascii:main bytes[0] run function print:output_ascii