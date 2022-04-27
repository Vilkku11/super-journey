extends CenterContainer


# video settings
onready var display_options_btn = $CenterContainer/VBoxContainer/Label/FullscreenButton
onready var vsync_btn = $VBoxContainer/Label/VSync/VSyncButton

func _ready():
	pass # Replace with function body.


func _on_FullscreenButton_item_selected(index):
	GlobalSettings.toggle_fullscreen(true if index ==1 else false)


func _on_VSyncButton_toggled(button_pressed):
	print(button_pressed)
	GlobalSettings.toggle_vsync(button_pressed)
	print("vsync")
