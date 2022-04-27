extends Control




func _on_Button_pressed():
	get_tree().change_scene("res://Control.tscn")
	
	
# video settings
#onready var display_options_btn = $CenterContainer/VBoxContainer/Label/FullscreenButton
#onready var vsync_btn = $CenterContainer/VBoxContainer/Label/VSync

# audio settings
#onready var master_slider = $TabContainer/Audio/MarginContainer/GridContainer/MasterVolSlider
#onready var music_slider = $TabContainer/Audio/MarginContainer/GridContainer/MusicVolSLider2

func ready():
	pass
	
	





