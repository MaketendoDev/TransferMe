execute unless entity @s[scores={svm_ep.p.gravity_pull_charge=41..}] at @s run function svm_ep:power/gravity/blast/charge/small
execute as @s[scores={svm_ep.p.gravity_pull_charge=41..80}] at @s run function svm_ep:power/gravity/blast/charge/medium
execute as @s[scores={svm_ep.p.gravity_pull_charge=81..}] at @s run function svm_ep:power/gravity/blast/charge/large
