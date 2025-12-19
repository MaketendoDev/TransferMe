function ben10:omnitrix/prototype/settings/reset
scoreboard players reset @a[distance=..20] selfdestructmode
tag @a[distance=..10,tag=omnitrix_os] add self_destruct_mode
tag @a[distance=..10,tag=omnitrix_os_rec] add self_destruct_mode
execute as @a[tag=self_destruct_mode,tag=omnitrix_os] at @s run advancement grant @s only ben10:story/sdm
execute as @a[tag=self_destruct_mode,tag=omnitrix_os_rec] at @s run advancement grant @s only ben10:story/sdm
execute as @a[distance=..20,tag=omnitrix_os] at @s run scoreboard players set @s omnitimer 1

execute as @s if block ^ ^1 ^1 minecraft:beacon at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["ShockWave"]}

execute as @s if block ^ ^1 ^1 minecraft:beacon at @s run tag @a[distance=..20] add Shockwave

kill @s[type=armor_stand]

playsound minecraft:entity.generic.explode ambient @a[distance=..50] ~ ~ ~ 1 0.3
particle minecraft:dust_color_transition 1 1 0 1 1 0 0 ~ ~1 ~ 7 0 7 1 1000