#shifting current number into check register
data modify storage parse:main check set from storage parse:main pair.Value[0]
data remove storage parse:main pair.Value[0]

#converting char to number and storing into temp array
function parser:extra/nac/char_to_num

#loop
execute if data storage parse:main pair.Value[0] run function parser:extra/num_array_convert