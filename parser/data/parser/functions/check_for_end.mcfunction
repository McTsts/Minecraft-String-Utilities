#loops if the "end" string isn't found
data modify storage parse:main check set from storage parse:main in[0]
execute unless data storage parse:main {check:"end"} run function parser:start