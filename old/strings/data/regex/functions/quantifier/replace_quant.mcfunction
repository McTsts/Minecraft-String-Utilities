data modify storage regex:main temp_regex append value ["{"]
execute store result storage ntca:main in int 1 run scoreboard players get qmin regex
 function ntca:call
 data modify storage regex:main temp_regex[-1] append from storage ntca:main out[]
 data modify storage regex:main temp_regex[-1] append value ","
execute store result storage ntca:main in int 1 run scoreboard players remove qmax regex 1
 function ntca:call
 data modify storage regex:main temp_regex[-1] append from storage ntca:main out[]
 data modify storage regex:main temp_regex[-1] append value "}"
# tellraw @a ["qmn -> ",{"score":{"name":"qmin","objective":"regex"}},"; qmx -> ",{"score":{"name":"qmax","objective":"regex"}}]