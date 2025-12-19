scoreboard players set $demat_tardis delay 1
scoreboard players set $state tardis 1

execute as @e[name=Rotor,limit=1] at @s run playsound minecraft:block.bell.use ambient @a[tag=Inside] ~ ~ ~ 3 .5
execute as @e[tag=TARDIS,limit=1] at @s run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 3 .5

execute as @e[tag=TARDIS] at @s run kill @e[distance=..2,type=minecraft:block_display]

execute as @e[tag=Pilot] in smp_tardis:tardis_dim run fill 39 12 0 0 21 40 blue_wool replace redstone_block

title @a[tag=Inside] actionbar "TARDIS Dematerialising."