execute as @s[scores={rightclick=1..}] run scoreboard players set @s Raycast 0

scoreboard players reset @s rightclick

scoreboard players add @s Raycast 1
execute if score @s Raycast matches 1..4 if block ~ ~ ~ #ben10:passable unless block ~ ~ ~ #ben10:cant_eat positioned ^ ^ ^1.1 run function ben10:abilities/eat

execute as @s[tag=!Rshoot4,advancements={ben10:os/upchuck/10=true}] as @e[tag=!upchuck,type=!#ben10:nalive] at @s[distance=..2] run tag @a[tag=upchuck,limit=1,distance=..15] add UpchuckGr
execute as @s[tag=!Rshoot4,advancements={ben10:os/upchuck/10=true}] as @e[tag=!upchuck,type=!#ben10:nalive] at @s[distance=..2] run tag @s add UpchuckG
execute as @s[tag=!Rshoot4,advancements={ben10:os/upchuck/10=true}] at @e[tag=UpchuckG,tag=!upchuck,type=!#ben10:nalive] at @s[distance=..1] run kill @s

execute as @s[tag=!UpchuckG] unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run playsound minecraft:entity.generic.eat ambient @a[distance=..12] ~ ~ ~ 1 0.8
execute as @s[tag=!UpchuckG] unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run tag @s add Rshoot
execute as @s[tag=!UpchuckG] unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run tag @s add attack2
execute as @s[tag=!UpchuckG] unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run scoreboard players add @s Eat 1
execute as @s[tag=!UpchuckG] unless block ~ ~ ~ minecraft:obsidian unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run setblock ~ ~ ~ air

execute as @s[tag=!UpchuckG,advancements={ben10:os/upchuck/8=true}] unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run playsound minecraft:entity.generic.eat ambient @a[distance=..12] ~ ~ ~ 1 0.8
execute as @s[tag=!UpchuckG,advancements={ben10:os/upchuck/8=true}] unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run tag @s add Rshoot
execute as @s[tag=!UpchuckG,advancements={ben10:os/upchuck/8=true}] unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run tag @s add attack2
execute as @s[tag=!UpchuckG,advancements={ben10:os/upchuck/8=true}] unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run scoreboard players add @s Eat 1
execute as @s[tag=!UpchuckG,advancements={ben10:os/upchuck/8=true}] unless block ~ ~ ~ #ben10:cant_eat unless block ~ ~ ~ #ben10:passable run setblock ~ ~ ~ air