summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["UpchuckSpit"]}

playsound entity.player.burp ambient @a[distance=..12] ~ ~ ~ 10 0.8
scoreboard players remove @s Eat 1

execute rotated as @s run tp @e[type=armor_stand,limit=1,distance=..0.2,tag=UpchuckSpit] ~ ~0.5 ~ ~ ~

tag @s add Rshoot
tag @s add attack