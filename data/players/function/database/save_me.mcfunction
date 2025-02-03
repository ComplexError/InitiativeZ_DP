data modify storage pdatabase:main args.UUID0 set from entity @s UUID[0]
data modify storage pdatabase:main args.UUID1 set from entity @s UUID[1]
data modify storage pdatabase:main args.UUID2 set from entity @s UUID[2]
data modify storage pdatabase:main args.UUID3 set from entity @s UUID[3]

execute unless data storage pdatabase:main in.UUID run data modify storage pdatabase:main in.UUID set from entity @s UUID

function players:database/private/save_me with storage pdatabase:main args