#converting bits to byte
execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 128
data modify storage base64:main temp set value 0b

execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 64
data modify storage base64:main temp set value 0b

execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 32
data modify storage base64:main temp set value 0b

execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 16
data modify storage base64:main temp set value 0b

execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 8
data modify storage base64:main temp set value 0b

execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 4
data modify storage base64:main temp set value 0b

execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 2
data modify storage base64:main temp set value 0b

execute if data storage base64:main bits[0] run function base64:out/next_bit
execute if data storage base64:main {temp:1b} run scoreboard players add byte= base64.num 1
data modify storage base64:main temp set value 0b