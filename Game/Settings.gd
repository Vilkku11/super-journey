extends Node

#Video settings
onready var display_options = $FullscreenBTN/FullscreenBtn
onready var vsync_button = $CenterContainer/VBoxContainer/Label/VSyncButton
#func _ready():
#	display_options.select(true if Save.game_data.fullscreen_on else false)
#	GlobalSettings.toggle_fullscreen(Save.game_data.fullscreen_on)

func _ready():
	display_options.select(1 if Save.game_data.fullscreen_on else 0)
	GlobalSettings.toggle_fullscreen(Save.game_data.fullscreen_on)
	vsync_button.pressed = Save.game_data.vsync_on



func _on_FullscreenBtn_item_selected(index):
	GlobalSettings.toggle_fullscreen(true if index == 1 else false)


func _on_VSyncButton_toggled(Vsync_on):
	GlobalSettings.toggle_vsync(Vsync_on)
