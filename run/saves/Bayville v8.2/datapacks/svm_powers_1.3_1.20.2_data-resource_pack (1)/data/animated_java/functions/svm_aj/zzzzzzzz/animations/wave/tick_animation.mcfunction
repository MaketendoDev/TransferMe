scoreboard players add @s aj.svm_aj.animation.wave.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.svm_aj.animation.wave.local_anim_time
function animated_java:svm_aj/zzzzzzzz/animations/wave/apply_frame_as_root
execute if score @s aj.svm_aj.animation.wave.local_anim_time matches 33.. run function animated_java:svm_aj/zzzzzzzz/animations/wave/end