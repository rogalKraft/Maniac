##
 # player.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=player] run scoreboard players add *count rPlayer 1
scoreboard players operation *count Player = *count rPlayer
scoreboard players reset *count rPlayer



