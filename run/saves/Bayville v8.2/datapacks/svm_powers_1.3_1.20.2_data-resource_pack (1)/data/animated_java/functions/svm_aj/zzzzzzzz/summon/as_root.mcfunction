execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.svm_aj.rig_loaded 1
scoreboard players operation @s aj.svm_aj.export_version = aj.svm_aj.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:svm_aj/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.svm_aj.variant.default aj.id run function animated_java:svm_aj/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.svm_aj.animation.wave aj.id run function animated_java:svm_aj/zzzzzzzz/animations/wave/apply_frame_as_root
execute if score #animation aj.i = $aj.svm_aj.animation.wave aj.id run scoreboard players operation @s aj.svm_aj.animation.wave.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.svm_aj.animation.walk aj.id run function animated_java:svm_aj/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score #animation aj.i = $aj.svm_aj.animation.walk aj.id run scoreboard players operation @s aj.svm_aj.animation.walk.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.svm_aj.animation.punch aj.id run function animated_java:svm_aj/zzzzzzzz/animations/punch/apply_frame_as_root
execute if score #animation aj.i = $aj.svm_aj.animation.punch aj.id run scoreboard players operation @s aj.svm_aj.animation.punch.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.svm_aj.animation.punch2 aj.id run function animated_java:svm_aj/zzzzzzzz/animations/punch2/apply_frame_as_root
execute if score #animation aj.i = $aj.svm_aj.animation.punch2 aj.id run scoreboard players operation @s aj.svm_aj.animation.punch2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.svm_aj.animation.standby aj.id run function animated_java:svm_aj/zzzzzzzz/animations/standby/apply_frame_as_root
execute if score #animation aj.i = $aj.svm_aj.animation.standby aj.id run scoreboard players operation @s aj.svm_aj.animation.standby.local_anim_time = #frame aj.i
execute at @s run function #animated_java:svm_aj/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i