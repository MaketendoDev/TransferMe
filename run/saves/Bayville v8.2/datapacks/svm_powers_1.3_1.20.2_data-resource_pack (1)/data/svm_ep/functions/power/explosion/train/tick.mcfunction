scoreboard players remove @s svm_ep.mana 15
effect give @s minecraft:resistance 1 10 true
scoreboard players add @s svm_ep.p.explosion_ability_06_delay 19
scoreboard players add @s svm_ep.used_move 20

execute at @s anchored eyes positioned ^ ^ ^-1 run summon tnt
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.5 13
execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..15] ~ ~ ~ 1 2
scoreboard players reset @s[scores={svm_ep.mana=..0}] svm_ep.using_move
