function players:healkit_ui/run_cmd with storage ui in[0].components."minecraft:custom_data".ui_item

execute if score .type ui matches 1 run function players:healkit_ui/minecart/load_page