#writes the finished name value pair to the output array
execute unless data storage parce:main {pair:{Name: []}} run data modify storage parce:main out append from storage parce:main pair
data modify storage parce:main pair set value {}
