scoreboard players operation ntca.last ntca = ntca ntca
scoreboard players operation ntca ntca /= 10 Const
scoreboard players operation ntca.last ntca %= 10 Const
execute store result storage ntca:main last int 1 run scoreboard players get ntca.last ntca
data modify storage ntca:main internal prepend from storage ntca:main last