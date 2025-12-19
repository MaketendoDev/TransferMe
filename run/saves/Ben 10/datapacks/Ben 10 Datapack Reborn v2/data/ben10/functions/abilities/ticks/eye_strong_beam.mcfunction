execute unless block ~ ~1 ~ #ben10:passable run kill @s
execute as @s run scoreboard players add @s shoot 1
execute as @s run tp @s ^ ^0.4 ^1
execute as @s[scores={shoot=3}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=6}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=9}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=12}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=15}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=18}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=21}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=24}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=27}] run tp @s ^ ^-1.2 ^1
execute as @s[scores={shoot=30}] run tp @s ^ ^-1.2 ^1
execute as @e[type=!#ben10:nalive,tag=!eye_guy] at @s[distance=..1] run damage @s 9

execute as @s run particle minecraft:dust 0.78 0.96 0.32 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
execute as @s[tag=Strong] run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.2 0.2 0 5
execute as @s[tag=!Strong,scores={shoot=30..}] run kill @s
execute as @s[tag=Strong,scores={shoot=20..}] run kill @s