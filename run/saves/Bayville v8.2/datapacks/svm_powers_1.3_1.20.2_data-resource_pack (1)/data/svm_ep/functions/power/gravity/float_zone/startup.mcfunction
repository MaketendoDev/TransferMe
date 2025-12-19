


execute at @s[scores={svm_ep.lifetime=1}] run particle dust 0 0.25 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=2}] run particle dust 0.1 0.3 0.1 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=3}] run particle dust 0.2 0.35 0.2 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=4}] run particle dust 0.3 0.4 0.3 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=5}] run particle dust 0.4 0.45 0.4 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=6}] run particle dust 0 0.5 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=7}] run particle dust 0 0.55 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=8}] run particle dust 0 0.6 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=9}] run particle dust 0 0.65 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=10}] run particle dust 0 0.75 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=11}] run particle dust 0 0.85 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=12}] run particle dust 0 0.95 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=13}] run particle dust 0 1 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=14}] run particle dust 0 1 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=15}] run particle dust 0 1 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=16}] run particle dust 0 1 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=17}] run particle dust 0 1 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=18}] run particle dust 0 1 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=19}] run particle dust 0 1 0 3 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=20}] run particle flash ~ ~ ~
execute at @s[scores={svm_ep.lifetime=16}] run effect give @e[distance=..8] resistance 1 3 true
execute at @s[scores={svm_ep.lifetime=20}] run summon tnt
execute at @s[scores={svm_ep.lifetime=20}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 2 100
execute at @s[scores={svm_ep.lifetime=20}] run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~ ~ 2 2