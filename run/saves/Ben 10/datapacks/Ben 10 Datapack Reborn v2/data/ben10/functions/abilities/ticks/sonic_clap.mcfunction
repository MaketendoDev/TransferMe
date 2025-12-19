execute unless block ~ ~1 ~ #ben10:passable run kill @s
execute as @s run scoreboard players add @s shoot 1
execute as @s run tp @s ^ ^ ^1
execute as @e[type=!#ben10:nalive,tag=!KevinB,tag=!Sonicslap] at @s[distance=..1] run damage @s 6
execute as @e[type=player,tag=!Sonicslap] at @s[distance=..1] run effect give @s minecraft:wither 2 5 true
execute at @s[scores={shoot=..3}] run tp @e[distance=..2,tag=!Sonicslap,tag=!Shockrock,type=!#ben10:nalive] @s
execute as @s run particle minecraft:poof ~ ~1 ~ 0.4 0.4 0.4 0.01 10
execute as @s[scores={shoot=15..}] run kill @s