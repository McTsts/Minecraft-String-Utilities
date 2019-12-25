# Kill all the entities (I hope)
kill 00000000-0073-9653-0000-000000000000
kill 00000000-0073-9653-0000-000000000001
kill 00000000-0073-9653-0000-000000000002
kill 00000000-0073-9653-0000-000000000003
scoreboard players set $searching string -1
scoreboard players reset $current string
scoreboard players reset $half string
scoreboard players reset $success string
scoreboard players reset $prev string
scoreboard players reset $iterations string
scoreboard players reset $length string
scoreboard players reset $found string
scoreboard players reset $foundX string
setblock -29999999 1 74063 minecraft:air destroy