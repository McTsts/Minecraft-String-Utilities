data remove storage base64:in string
data remove storage base64:main bits
data remove storage base64:out bytes

data merge storage base64:in {temp:"",string:[]}
data merge storage base64:main {temp:0b,bits:[]}
data merge storage base64:out {temp:0b,bytes:[]}

scoreboard objectives add base64.num dummy
scoreboard players reset * base64.num