tag @s add transform
tag @s add transforming
tag @s add Heal
scoreboard players reset @s alien
scoreboard players reset @s select
effect give @s blindness 1 0 true
effect give @s instant_health 1 1 true
effect give @s saturation 2 2 true
effect give @s jump_boost 10 255 true
effect give @s resistance 1 255 true

title @s title {"text":"T","font":"ben10"}
title @s times 3 6 3

tag @s remove wait
stopsound @a ambient minecraft:prototype.wait
tag @s remove select
tag @s remove settings
item replace entity @s weapon.offhand with air