# Does a callback
setblock ~ ~ ~5 minecraft:command_block[facing=up]{Command:"help"} destroy
data modify block ~ ~ ~5 Command set from storage string:internal callback
data merge block ~ ~ ~5 {auto:1b}
# Sets a callback ID
execute store result score callback string run data get storage string:internal callbackID