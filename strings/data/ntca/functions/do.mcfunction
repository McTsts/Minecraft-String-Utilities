# Number to Char Array
data merge storage ntca:main {out:[],internal:[]}
execute store result score ntca ntca run data get storage ntca:main in
execute if score ntca ntca matches ..0 run function ntca:internal/special
execute unless score ntca ntca matches 0 run function ntca:internal/get_digit_rec
execute if data storage ntca:main internal[0] run function ntca:internal/set_digit_rec