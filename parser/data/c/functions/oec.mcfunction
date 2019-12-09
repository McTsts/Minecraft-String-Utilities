#checks if the current char marks the end of an object
execute if data storage parse:main {check:"}"} run data modify storage parse:main out append value {Type:"object_end"}