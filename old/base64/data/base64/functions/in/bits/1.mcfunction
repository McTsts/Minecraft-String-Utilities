#adding bits in order
#B - 1

data modify storage base64:main bits append value 0b
data modify storage base64:main bits append value 0b
data modify storage base64:main bits append value 0b
data modify storage base64:main bits append value 0b
data modify storage base64:main bits append value 0b
data modify storage base64:main bits append value 1b

scoreboard players set char_found= base64.num 1