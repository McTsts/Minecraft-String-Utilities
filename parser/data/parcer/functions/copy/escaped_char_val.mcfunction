#moves the next value after an escape char directly to the value array
data modify storage parce:main pair.Value append from storage parce:main in[0]
data remove storage parce:main in[0]