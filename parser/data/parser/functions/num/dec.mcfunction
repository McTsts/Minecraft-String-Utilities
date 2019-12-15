#shifts decimal point over x times, where x is the dec value (-1) from the input array
execute if data storage parse:num {dec:1} store result storage parse:num temp double 0.1 run data get storage parse:num temp
execute if data storage parse:num {dec:2} store result storage parse:num temp double 0.01 run data get storage parse:num temp
execute if data storage parse:num {dec:3} store result storage parse:num temp double 0.001 run data get storage parse:num temp
execute if data storage parse:num {dec:4} store result storage parse:num temp double 0.0001 run data get storage parse:num temp
execute if data storage parse:num {dec:5} store result storage parse:num temp double 0.00001 run data get storage parse:num temp
execute if data storage parse:num {dec:6} store result storage parse:num temp double 0.000001 run data get storage parse:num temp
execute if data storage parse:num {dec:7} store result storage parse:num temp double 0.0000001 run data get storage parse:num temp
execute if data storage parse:num {dec:8} store result storage parse:num temp double 0.00000001 run data get storage parse:num temp
execute if data storage parse:num {dec:9} store result storage parse:num temp double 0.000000001 run data get storage parse:num temp
execute if data storage parse:num {dec:10} store result storage parse:num temp double 0.0000000001 run data get storage parse:num temp