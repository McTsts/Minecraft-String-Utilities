#put list of bytes into: storage ascii:main bytes

data modify storage ascii:main text set value []
execute if data storage ascii:main bytes[0] run function print:output_ascii