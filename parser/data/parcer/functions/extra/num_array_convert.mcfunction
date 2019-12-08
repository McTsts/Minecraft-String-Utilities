#shifting current number into check register
data modify storage parce:main check set from storage parce:main pair.Value[0]
data remove storage parce:main pair.Value[0]

#converting char to number and storing into temp array
function parcer:extra/nac/char_to_num

#loop
execute if data storage parce:main pair.Value[0] run function parcer:extra/num_array_convert