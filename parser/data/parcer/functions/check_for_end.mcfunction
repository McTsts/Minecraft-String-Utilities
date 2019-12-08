#loops if the "end" string isn't found
data modify storage parce:main check set from storage parce:main in[0]
execute unless data storage parce:main {check:"end"} run function parcer:start