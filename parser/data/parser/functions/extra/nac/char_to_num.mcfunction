execute if data storage parse:main {check:"-"} run data modify storage parse:main temp.array append value -1
execute if data storage parse:main {check:"0"} run data modify storage parse:main temp.array append value 0
execute if data storage parse:main {check:"1"} run data modify storage parse:main temp.array append value 1
execute if data storage parse:main {check:"2"} run data modify storage parse:main temp.array append value 2
execute if data storage parse:main {check:"3"} run data modify storage parse:main temp.array append value 3
execute if data storage parse:main {check:"4"} run data modify storage parse:main temp.array append value 4
execute if data storage parse:main {check:"5"} run data modify storage parse:main temp.array append value 5
execute if data storage parse:main {check:"6"} run data modify storage parse:main temp.array append value 6
execute if data storage parse:main {check:"7"} run data modify storage parse:main temp.array append value 7
execute if data storage parse:main {check:"8"} run data modify storage parse:main temp.array append value 8
execute if data storage parse:main {check:"9"} run data modify storage parse:main temp.array append value 9

execute if data storage parse:main {check:"."} run scoreboard players set dec= parse.main 0
execute if score dec= parse.main matches 0.. run scoreboard players add dec= parse.main 1