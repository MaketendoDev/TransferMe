scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.svm_aj.export_version dummy
scoreboard objectives add aj.svm_aj.rig_loaded dummy
scoreboard objectives add aj.svm_aj.animation.wave.local_anim_time dummy
scoreboard objectives add aj.svm_aj.animation.walk.local_anim_time dummy
scoreboard objectives add aj.svm_aj.animation.punch.local_anim_time dummy
scoreboard objectives add aj.svm_aj.animation.punch2.local_anim_time dummy
scoreboard objectives add aj.svm_aj.animation.standby.local_anim_time dummy
scoreboard objectives add aj.svm_aj.animation.wave.loop_mode dummy
scoreboard objectives add aj.svm_aj.animation.walk.loop_mode dummy
scoreboard objectives add aj.svm_aj.animation.punch.loop_mode dummy
scoreboard objectives add aj.svm_aj.animation.punch2.loop_mode dummy
scoreboard objectives add aj.svm_aj.animation.standby.loop_mode dummy
scoreboard players set $aj.svm_aj.animation.wave aj.id 0
scoreboard players set $aj.svm_aj.animation.walk aj.id 1
scoreboard players set $aj.svm_aj.animation.punch aj.id 2
scoreboard players set $aj.svm_aj.animation.punch2 aj.id 3
scoreboard players set $aj.svm_aj.animation.standby aj.id 4
scoreboard players set $aj.svm_aj.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.svm_aj.export_version aj.i -396956022
scoreboard players reset * aj.svm_aj.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.svm_aj.root] run function animated_java:svm_aj/zzzzzzzz/on_load