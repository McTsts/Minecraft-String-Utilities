#bit reading
function base64:out/read_bits

function base64:out/write_byte
scoreboard players reset * base64.num

#loop
execute if data storage base64:main bits[7] run function base64:out/bits_interp