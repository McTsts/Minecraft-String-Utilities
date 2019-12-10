#adds "unresolved" note to the "Extra" array in necessary
execute if data storage parse:main pair.Value[0] run data modify storage parse:main pair.Extra append value "unresolved"