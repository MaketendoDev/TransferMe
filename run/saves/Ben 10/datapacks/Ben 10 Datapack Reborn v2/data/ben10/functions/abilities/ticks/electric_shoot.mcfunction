execute unless block ~ ~1 ~ #ben10:passable run kill @s
execute as @s run scoreboard players add @s shoot 1
execute as @s run tp @s ^ ^ ^1
execute as @s[tag=!TimeBeam] as @e[type=!#ben10:nalive,tag=!ghostfreak,tag=!feedback,tag=!buzzshock] at @s[distance=..1] run damage @s 6
execute as @s[tag=!TimeBeam] as @e[type=!#ben10:nalive,tag=!ghostfreak,tag=!feedback,tag=!buzzshock] at @s[distance=..1] run effect give @s wither 3 1 true
execute as @s[tag=!Buzz,tag=!TimeBeam] run particle minecraft:dust 0 1 1 1 ^ ^1 ^ 0 0 0 0.01 1
execute as @s[tag=Buzz] run particle minecraft:dust 0.94 1 0.37 1 ^ ^1 ^ 0 0 0 0.01 1

execute as @s[tag=TimeBeam] as @e[type=!#ben10:nalive,tag=!alien_x] at @s[distance=..2] run kill @s
execute as @s[tag=TimeBeam,scores={shoot=..5}] run particle minecraft:dust 1 1 1 1 ^ ^1 ^ 0.1 0.1 0.1 0.01 10
execute as @s[tag=TimeBeam,scores={shoot=5..10}] run particle minecraft:dust 1 1 1 1 ^ ^1 ^ 0.2 0.2 0.2 0.01 20
execute as @s[tag=TimeBeam,scores={shoot=10..15}] run particle minecraft:dust 1 1 1 1 ^ ^1 ^ 0.4 0.4 0.4 0.01 30
execute as @s[tag=TimeBeam,scores={shoot=15..20}] run particle minecraft:dust 1 1 1 1 ^ ^1 ^ 0.6 0.6 0.6 0.01 40
execute as @s[tag=TimeBeam,scores={shoot=20..25}] run particle minecraft:dust 1 1 1 1 ^ ^1 ^ 0.8 0.8 0.8 0.01 50
execute as @s[tag=TimeBeam,scores={shoot=25..30}] run particle minecraft:dust 1 1 1 1 ^ ^1 ^ 1 1 1 0.01 60
execute as @s[scores={shoot=30..}] run kill @s