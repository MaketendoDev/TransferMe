scoreboard players add @s shoot 1

execute as @e[tag=IceRainFall] at @s run particle dust 0.13 1 1 2 ~ ~1 ~ 0.2 0.3 0.2 0 10
execute as @e[tag=IceRainFall] at @s run particle dust 0.73 1 1 2 ~ ~1 ~ 0.2 0.3 0.2 0 5
execute as @e[tag=IceRainFall] at @s as @e[tag=!arctiguana,type=!#ben10:nalive] at @s[distance=..2.5] run damage @s 10
execute as @e[tag=IceRainFall] at @s run tp @s ~ ~-1 ~
execute as @e[tag=IceRainFall] at @s unless block ~ ~1 ~ #ben10:passable run particle minecraft:snowflake ~ ~1 ~ 0 0 0 0.2 100
execute as @e[tag=IceRainFall] at @s unless block ~ ~1 ~ #ben10:passable run playsound minecraft:block.glass.break ambient @a[distance=..12] ~ ~2 ~ 1 1.2
execute as @e[tag=IceRainFall] at @s unless block ~ ~1 ~ #ben10:passable run kill @s

particle dust 0.13 1 1 2 ~ ~1 ~ 2 0.2 2 0 40
particle dust 0.73 1 1 2 ~ ~1 ~ 2 0.2 2 0 20

execute as @s[scores={shoot=1}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=10}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=20}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=30}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=40}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=50}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=60}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=70}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=80}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=90}] run function ben10:abilities/ice_rain
execute as @s[scores={shoot=100}] run function ben10:abilities/ice_rain

execute as @s[scores={shoot=110..}] run kill @s