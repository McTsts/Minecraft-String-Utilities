#this function detects what type of value the pair will be using (default is number)
data modify storage parse:main check set from storage parse:main in[0]

#detecting type of data and setting "Type" string
data modify storage parse:main pair.Type set value "number"
execute if data storage parse:main {check:'"'} run data modify storage parse:main pair.Type set value "string"
execute if data storage parse:main {check:"["} run data modify storage parse:main pair.Type set value "array"
execute if data storage parse:main {check:"{"} run data modify storage parse:main pair.Type set value "object"

execute if data storage parse:main {check:" "} run function parser:detect_type_retry
execute if data storage parse:main {check:":"} run function parser:detect_type_retry