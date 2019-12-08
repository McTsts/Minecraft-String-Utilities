#this function detects what type of value the pair will be using (default is number)
data modify storage parce:main check set from storage parce:main in[0]

#detecting type of data and setting "Type" string
data modify storage parce:main pair.Type set value "number"
execute if data storage parce:main {check:'"'} run data modify storage parce:main pair.Type set value "string"
execute if data storage parce:main {check:"["} run data modify storage parce:main pair.Type set value "array"
execute if data storage parce:main {check:"{"} run data modify storage parce:main pair.Type set value "object"

execute if data storage parce:main {check:" "} run function parcer:detect_type_retry