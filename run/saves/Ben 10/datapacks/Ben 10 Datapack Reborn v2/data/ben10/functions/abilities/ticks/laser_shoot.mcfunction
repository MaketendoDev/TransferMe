execute unless block ~ ~1 ~ #ben10:passable run kill @s
execute as @s run scoreboard players add @s shoot 1
#execute as @s facing entity @p feet run tp @s ^ ^ ^1 ~ ~
execute as @s run tp @s ^ ^ ^1
execute as @e[type=!#ben10:nalive,tag=!Drone,tag=!Vilgax] at @s[distance=..1] run damage @s 6
execute as @s run particle minecraft:dust 1 0 0 1 ~ ~2 ~ 0.1 0.1 0.1 0.1 10
#execute if entity @a[distance=..1] run kill @s
execute as @s[scores={shoot=30..}] run kill @s