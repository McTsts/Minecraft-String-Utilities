#moves the next value after an escape char directly to the value array
data modify storage parse:main pair.Value append from storage parse:main in[0]
data remove storage parse:main in[0]