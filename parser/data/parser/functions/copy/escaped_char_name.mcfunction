#moves the next value after an escape char directly to the name array
data modify storage parse:main pair.Name append from storage parse:main in[0]
data remove storage parse:main in[0]