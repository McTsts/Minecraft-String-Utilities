#checks if the current char marks the end of an object
execute if data storage parce:main {check:"}"} run data modify storage parce:main out append value {Type:"object_end"}