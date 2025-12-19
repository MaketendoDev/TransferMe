tag @s remove teleport
tp @s ^ ^ ^-0.3
particle minecraft:item slime_ball ~ ~-0.7 ~ 0 0 0 1.2 120
playsound minecraft:entity.slime.attack master @a[distance=..30] ~ ~ ~ 2 0
playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 1.2 1.3
playsound minecraft:item.trident.hit_ground master @a[distance=..20] ~ ~ ~ 0.54 0.8
particle minecraft:sneeze ~ ~-0.7 ~ 0 0 0 0.4 80
scoreboard players remove @s svm_ep.mana 25
scoreboard players set @s svm_ep.p.slime_ability_04_delay 40
scoreboard players add @s svm_ep.used_move 200
effect give @s minecraft:blindness 1 0 true