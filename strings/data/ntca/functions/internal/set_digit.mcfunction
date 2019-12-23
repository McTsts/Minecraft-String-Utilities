execute store result score ntca ntca run data get storage ntca:main internal[0]
execute if score ntca ntca matches 0..2 run function ntca:internal/digits/0_2
execute if score ntca ntca matches 3..6 run function ntca:internal/digits/3_6
execute if score ntca ntca matches 7..9 run function ntca:internal/digits/7_9
data remove storage ntca:main internal[0]