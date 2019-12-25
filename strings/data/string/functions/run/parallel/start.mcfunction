setblock -29999999 1 74063 minecraft:repeating_command_block[facing=up]{auto:1b}
data modify block -29999999 1 74063 Command set from storage string:internal callback.command
execute store result score $callback string run data get storage string:internal callback.id