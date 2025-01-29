execute as @e[tag=bandaging,distance=..4] run title @s actionbar {"bold":true,"color":"gray","text":"This player cannot be bandaged yet"}

execute as @e[tag=bandaging,distance=..4] run advancement revoke @s only players:ointment
execute as @e[tag=bandaging,distance=..4] run advancement revoke @s only players:antibiotic
execute as @e[tag=bandaging,distance=..4] run advancement revoke @s only players:stimulant
execute as @e[tag=bandaging,distance=..4] run advancement revoke @s only players:revitalizer
execute as @e[tag=bandaging,distance=..4] run advancement revoke @s only players:aloe_vera
execute as @e[tag=bandaging,distance=..4] run advancement revoke @s only players:bandaged
execute as @e[tag=bandaging,distance=..4] run tag @s remove bandaging