##
 # repairscor.mcfunction
 # 
 #
 # Created by .
##
scoreboard players remove @e[tag=generator] generator 1
execute as @e[tag=generator, scores={generator=..-1}] run scoreboard players set @s generator 0
execute as @e[tag=generator, scores={generator=98..}] run function alma_main:game/generator/on
execute as @e[tag=generator, scores={generator=98..}] run scoreboard players set @s generator 0


