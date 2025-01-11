function players:healkit_ui/menu/main/mask
data modify strage ui current set from storage ui mask
execute on passengers run data modify entity @s data.page.mask set value "function players:healkit_ui/menu/root_page/mask"