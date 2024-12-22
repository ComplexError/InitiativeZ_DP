schedule function locations:tiprefill_timer 120s

## ---- TIPS ----
execute if score System GlobalTips matches 0 run tellraw @a { "color": "gold", "text": "TIP: If you don't have a friend you really should get one, this game is easier if you have one"}
execute if score System GlobalTips matches 1 run tellraw @a { "color": "gold", "text": "TIP: Probable cause, blah-blah-blah-blahs"}
execute if score System GlobalTips matches 2 run tellraw @a { "color": "gold", "text": "TIP: Want free robux? Go to scamsite.real for free robux!"}
execute if score System GlobalTips matches 3 run tellraw @a { "color": "gold", "text": "TIP: In a one-on-one, always bet on Kaido."}
execute if score System GlobalTips matches 4 run tellraw @a { "color": "gold", "text": "TIP: THE TWO PIECE IS REALLLLLL!"}
execute if score System GlobalTips matches 5 run tellraw @a { "color": "gold", "text": "TIP: Do you feel them? Under your skin? Get them out. GET THEM OUT."}
execute if score System GlobalTips matches 6 run tellraw @a { "color": "gold", "text": "TIP: Can your agendas change the world?"}
execute if score System GlobalTips matches 7 run tellraw @a { "color": "gold", "text": "TIP: Can your agendas change the world?"}
execute if score System GlobalTips matches 8 run tellraw @a { "color": "gold", "text": "TIP: Can your agendas change the world?"}
execute if score System GlobalTips matches 9 run tellraw @a { "color": "gold", "text": "TIP: Can your agendas change the world?"}

## --- TIP LOGIC ---
scoreboard players add System GlobalTips 1
execute if score System GlobalTips matches 10 run scoreboard players set System GlobalTips 0

## ---- LOCATIONS TYPE ----

# * -[Town or City]-
# * [(type)ID predicate check and point to required "refill" function]

## -- Towns --
execute as @a[scores={TownID=0..}] run function locations:towns/refill

## -- Cities --
execute as @a[scores={CityID=0..}] run function locations:cities/refill
