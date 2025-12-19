scoreboard players add @s aj.svm_aj.animation.standby.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.svm_aj.animation.standby.local_anim_time
function animated_java:svm_aj/zzzzzzzz/animations/standby/apply_frame_as_root
execute if score @s aj.svm_aj.animation.standby.local_anim_time matches 40.. run function animated_java:svm_aj/zzzzzzzz/animations/standby/end