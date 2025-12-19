scoreboard players add @s shoot 1
execute as @s[scores={shoot=..10}] if block ~ ~1 ~ #ben10:passable run tp @s ~ ~1 ~
effect give @s minecraft:slow_falling 1 255 true
execute as @s[scores={shoot=..10}] run particle minecraft:dust 0 1 0.25 1 ~ ~ ~ 0.2 1 0.2 0.001 100
execute as @s[scores={shoot=10..}] run particle minecraft:dust 0 1 0.25 1 ~ ~1 ~ 0.5 0.5 0.5 0.001 100
execute as @s[scores={shoot=20..}] run summon minecraft:lightning_bolt
execute as @s[scores={shoot=20..}] run effect give @s minecraft:wither 2 2 true
execute as @s[scores={shoot=20..}] run tag @s remove FLifting
execute as @s[scores={shoot=20..}] run scoreboard players reset @s shoot