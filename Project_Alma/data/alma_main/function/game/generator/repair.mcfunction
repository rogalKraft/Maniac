##
 # repair.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s from alma_main:repair
advancement revoke @s from alma_main:repair2
execute at @e[tag=generator] run playsound minecraft:item.spyglass.use voice @a ~ ~ ~ 3
scoreboard players add @e[tag=generator] generator 6
execute at @e[tag=generator] run title @a[distance=..4] actionbar ["",{"text":"Repair: ","color":"green"},{"score":{"name":"@e[tag=generator]","objective":"generator"},"color":"green"},{"text":"%","color":"green"}]