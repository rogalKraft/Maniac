##
 # crossbow.mcfunction
 # 
 #
 # Created by .
##
scoreboard players remove @a crossbowpikup 1
execute as @a[scores={crossbowpikup=..-1}] run scoreboard players set @s crossbowpikup 0
execute as @a[scores={crossbowpikup=200..}] run function alma_main:roles/itemrolback/r_crossbow
execute as @a[scores={crossbowpikup=20..}] run title @s actionbar {"text":"9","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=40..}] run title @s actionbar {"text":"8","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=60..}] run title @s actionbar {"text":"7","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=80..}] run title @s actionbar {"text":"5","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=100..}] run title @s actionbar {"text":"5","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=120..}] run title @s actionbar {"text":"4","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=140..}] run title @s actionbar {"text":"3","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=160..}] run title @s actionbar {"text":"2","bold":true,"color":"yellow"}
execute as @a[scores={crossbowpikup=180..}] run title @s actionbar {"text":"1","bold":true,"color":"yellow"}
