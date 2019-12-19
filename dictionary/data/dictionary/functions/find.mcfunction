data modify storage dictionary:main char set value ""
data modify storage dictionary:main char set from storage dictionary:io in[0]
data remove storage dictionary:io in[0]
data remove storage dictionary:main next

# End
execute if data storage dictionary:main {char:""} if data storage dictionary:main dictionary.ph run data modify storage dictionary:io out set from storage dictionary:main dictionary.ph

# Continue
execute if data storage dictionary:main {char:"a"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.a
execute if data storage dictionary:main {char:"b"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.b
execute if data storage dictionary:main {char:"c"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.c
execute if data storage dictionary:main {char:"d"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.d
execute if data storage dictionary:main {char:"e"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.e
execute if data storage dictionary:main {char:"f"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.f
execute if data storage dictionary:main {char:"g"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.g
execute if data storage dictionary:main {char:"h"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.h
execute if data storage dictionary:main {char:"i"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.i
execute if data storage dictionary:main {char:"j"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.j
execute if data storage dictionary:main {char:"k"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.k
execute if data storage dictionary:main {char:"l"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.l
execute if data storage dictionary:main {char:"m"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.m
execute if data storage dictionary:main {char:"n"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.n
execute if data storage dictionary:main {char:"o"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.o
execute if data storage dictionary:main {char:"p"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.p
execute if data storage dictionary:main {char:"q"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.q
execute if data storage dictionary:main {char:"r"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.r
execute if data storage dictionary:main {char:"s"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.s
execute if data storage dictionary:main {char:"t"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.t
execute if data storage dictionary:main {char:"u"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.u
execute if data storage dictionary:main {char:"v"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.v
execute if data storage dictionary:main {char:"w"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.w
execute if data storage dictionary:main {char:"x"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.x
execute if data storage dictionary:main {char:"y"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.y
execute if data storage dictionary:main {char:"z"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.z
execute if data storage dictionary:main {char:"'"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.sq
execute if data storage dictionary:main {char:"-"} run data modify storage dictionary:main next set from storage dictionary:main dictionary.hy
execute unless data storage dictionary:main {char:""} unless data storage dictionary:main next run data modify storage dictionary:main next set from storage dictionary:main dictionary.ot

# Next
execute if data storage dictionary:main next run data modify storage dictionary:main dictionary set from storage dictionary:main next
execute if data storage dictionary:main next run function dictionary:find