extends Node

onready var display_options = $FullscreenBTN/FullscreenBtn

#func _ready():
#	display_options.select(true if Save.game_data.fullscreen_on else false)
#	GlobalSettings.toggle_fullscreen(Save.game_data.fullscreen_on)

func _on_FullscreenBtn_item_selected(index):
	GlobalSettings.toggle_fullscreen(true if index == 1 else false)
