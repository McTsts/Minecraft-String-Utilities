#adding bits in order
#X - 23

data modify storage base64:main bits append value 0b
data modify storage base64:main bits append value 1b
data modify storage base64:main bits append value 0b
data modify storage base64:main bits append value 1b
data modify storage base64:main bits append value 1b
data modify storage base64:main bits append value 1b

scoreboard players set char_found= base64.num 1