#execute at @s if entity @e[tag=svm_ep.bush_display,distance=..0.3] run kill @s
item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick{CustomModelData:74}
tag @s add svm_ep.dimension_quick_portal_display
data merge entity @s {transformation:{scale:[0f,0f,0f]}}

data merge entity @s {interpolation_duration:1,start_interpolation:-1}
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
particle minecraft:cloud ~ ~ ~ 0 0 0 0.8 40
summon minecraft:interaction ~ ~-0.5 ~ {Tags:["svm_ep.dimension_portal_hitbox"]}
execute at @s run playsound minecraft:entity.guardian.ambient master @a[distance=..15] ~ ~ ~ 2 2