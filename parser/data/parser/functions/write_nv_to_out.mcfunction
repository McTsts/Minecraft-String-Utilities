#writes the finished name value pair to the output array
execute unless data storage parse:main {pair:{Name: []}} run data modify storage parse:main out append from storage parse:main pair
data modify storage parse:main pair set value {}
