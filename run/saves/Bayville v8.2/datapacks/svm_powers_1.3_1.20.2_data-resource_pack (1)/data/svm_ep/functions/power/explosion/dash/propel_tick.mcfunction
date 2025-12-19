effect give @s slowness 1 4 true
execute as @s[scores={svm_ep.p.explosion_launch_charge=..10}] run function svm_ep:power/explosion/dash/dash
execute as @s[scores={svm_ep.using_move=..298,svm_ep.p.explosion_launch_charge=..15}] run function svm_ep:power/explosion/dash/dash
execute as @s[scores={svm_ep.using_move=..296,svm_ep.p.explosion_launch_charge=..20}] run function svm_ep:power/explosion/dash/dash
execute as @s[scores={svm_ep.using_move=..293,svm_ep.p.explosion_launch_charge=..25}] run function svm_ep:power/explosion/dash/dash
execute as @s[scores={svm_ep.using_move=..290}] run function svm_ep:power/explosion/dash/dash
#tellraw @a ["",{"text":"ollo "},{"score":{"name":"@s","objective":"svm_ep.using_move"}},{"text":" \u0020"},{"score":{"name":"@s","objective":"svm_ep.p.explosion_launch_charge"}}]
