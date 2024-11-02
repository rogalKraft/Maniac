##
 # start.mcfunction
 # 
 #
 # Created by .
##
# скорборды и математика, проверка для запуска
scoreboard players set *calc Player 1
scoreboard players set *calc1 Player 2
scoreboard players set *game Player 0
scoreboard players set *limit Player 1



scoreboard players operation *game Player = *count Player
scoreboard players operation *game Player -= *calc Player

execute if score *count Player < *limit Player run function alma_main:game/shortage
execute if score *count Player >= *limit Player run function alma_main:game/start2
kill @e[tag=crossbow]