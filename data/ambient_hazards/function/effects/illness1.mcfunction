## ---- Scorch Damage ----
execute as @a[scores={AmbientH_Scale=1000..}] run damage @s 0.2 on_fire

## ---- Freeze Damage ----
execute as @a[scores={AmbientH_Scale=..-1000}] run damage @s 0.2 freeze

## ---- Dehydration Damage ----
execute as @a[scores={AmbientH_Hydration=..0}] run damage @s 1 generic