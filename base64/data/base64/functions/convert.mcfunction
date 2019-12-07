#init
data remove storage base64:out bytes

#base64 to bits
function base64:in/interp_bits

#bits to bytes
function base64:out/bits_interp
data modify storage base64:main bits set value []
data modify storage base64:in string set value []

#bytes to chars
data modify storage ascii:main bytes set from storage base64:out bytes
function print:call