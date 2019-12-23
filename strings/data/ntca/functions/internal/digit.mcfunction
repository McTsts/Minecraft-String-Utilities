scoreboard players operation ntca.last ntca = ntca ntca
scoreboard players operation ntca ntca /= 10 ntca
scoreboard players operation ntca.last ntca %= 10 ntca
execute if score ntca.last ntca matches 0..2 run function ntca:internal/digits/0_2
execute if score ntca.last ntca matches 3..6 run function ntca:internal/digits/3_6
execute if score ntca.last ntca matches 7..9 run function ntca:internal/digits/7_9