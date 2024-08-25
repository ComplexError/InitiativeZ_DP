## ---- Heat Damage ----
execute as @a[scores={AmbientH_Scale=900..}] run damage @s 1 on_fire

## ---- Cold Damage ----
execute as @a[scores={AmbientH_Scale=..-9000}] run damage @s 1 freeze