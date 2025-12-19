effect give @s jump_boost 4 255 true
tag @s add Fly
tag @s remove fire_sp
execute if block ~ ~ ~ #ben10:passable if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^1 #ben10:passable run tp @s ^ ^ ^0.5
tp @s[tag=Smoke] ^ ^ ^0.5
tp @s[tag=clock,tag=big_chill] ^ ^ ^0.6
execute if block ~ ~ ~ #ben10:passable if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^1 #ben10:passable run tp @s[tag=!clock,tag=big_chill] ^ ^ ^0.6
execute if block ~ ~ ~ #ben10:passable if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^1 #ben10:passable run tp @s[tag=overflow] ^ ^ ^0.5
execute if block ~ ~ ~ #ben10:passable if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^1 #ben10:passable run tp @s[tag=heatblast] ^ ^ ^0.7
execute if block ~ ~ ~ #ben10:passable if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^1 #ben10:passable run tp @s[tag=swampfire,tag=ulti] ^ ^ ^1
execute if block ~ ~ ~ #ben10:passable if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^1 #ben10:passable run tp @s[tag=stinkfly] ^ ^ ^1
execute if block ~ ~ ~ #ben10:passable if block ^ ^ ^1 #ben10:passable if block ^ ^1 ^1 #ben10:passable run tp @s[tag=alien_x] ^ ^ ^2
effect give @s minecraft:levitation 1 255 true

#execute as @s[tag=heatblast,tag=!sick,tag=!water] run particle flame ^ ^-0.4 ^0.1 0.3 0.2 0.3 0.01 100

execute as @s[tag=golem] run particle flame ^ ^1 ^-1.4 0.3 0.3 0.3 0.01 100
execute as @s[tag=minecart] run particle flame ^ ^1 ^-1.4 0.3 0.3 0.3 0.01 100

execute as @s[tag=buzzshock] run particle minecraft:dust 0.94 1 0.37 1 ^ ^1 ^ 0.3 0.3 0.3 0.01 10

execute as @s[tag=feedback] run scoreboard players remove @s feedback 1

execute as @s[tag=heatblast,tag=!sick,tag=!water] run particle flame ^-0.8 ^0.7 ^-0.4 0.1 0.1 0.1 0.01 10
execute as @s[tag=heatblast,tag=!sick,tag=!water] run particle flame ^0.8 ^0.7 ^-0.4 0.1 0.1 0.1 0.01 10

execute as @s[tag=heatblast,tag=sick,tag=!water] run particle soul_fire_flame ^-0.8 ^0.7 ^-0.4 0.1 0.1 0.1 0.01 10
execute as @s[tag=heatblast,tag=sick,tag=!water] run particle soul_fire_flame ^0.8 ^0.7 ^-0.4 0.1 0.1 0.1 0.01 10

execute as @s[tag=snare_oh] run particle dust 0.55 0.55 0.38 1 ~ ~1 ~ 0.3 0.3 0.3 0 5

execute as @s[tag=!ulti,tag=swampfire] run particle flame ^-0.8 ^0.7 ^-0.4 0.1 0.1 0.1 0.01 10
execute as @s[tag=!ulti,tag=swampfire] run particle flame ^0.8 ^0.7 ^-0.4 0.1 0.1 0.1 0.01 10

execute as @s[tag=ulti,tag=swampfire] run particle soul_fire_flame ^ ^0.7 ^-0.4 0.2 0.2 0.2 0.01 20

execute as @s[tag=feedback] run particle minecraft:dust 0 1 1 1 ^-0.6 ^0.9 ^-0.7 0.1 0.1 0.1 0.01 10
execute as @s[tag=feedback] run particle minecraft:dust 0 1 1 1 ^0.6 ^0.9 ^-0.7 0.1 0.1 0.1 0.01 10

execute as @s[tag=arctiguana] rotated ~ 0 run particle dust 0.13 1 1 1 ^ ^-1.5 ^1 0.3 1 0.3 0 50
execute as @s[tag=arctiguana] rotated ~ 0 run particle dust 0.73 1 1 1 ^ ^-1.5 ^1 0.3 1 0.3 0 20