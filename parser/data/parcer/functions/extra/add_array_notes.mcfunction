#adds "unresolved" note to the "Extra" array and checks for un-needed open bracket 
data modify storage parce:main pair.Extra append value "unresolved"

data modify storage parce:main check set from storage parce:main pair.Value[0]
execute if data storage parce:main {check:"["} run data remove storage parce:main pair.Value[0]
data modify storage parce:main check set from storage parce:main in[0]