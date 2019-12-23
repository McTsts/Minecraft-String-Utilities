execute if score ntca.last ntca matches 0 run data modify storage ntca:main out prepend value "0"
execute if score ntca.last ntca matches 1 run data modify storage ntca:main out prepend value "1"
execute if score ntca.last ntca matches 2 run data modify storage ntca:main out prepend value "2"