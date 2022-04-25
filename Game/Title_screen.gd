extends Control



func _ready():
	for n in 4:
		#var button = $Menu/CenterRow/Buttons.getChild(n)
		if $Menu/CenterRow/Buttons.get_child(n) == $Menu/CenterRow/Buttons.get_child(3):
			var button = $Menu/CenterRow/Buttons.get_child(n)
			button.connect("pressed", self, "Exit_button", [button.exit])
		else:
			var button = $Menu/CenterRow/Buttons.get_child(n)
			button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		
		
		


func _on_Button_pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)

func Exit_button(exit):
	get_tree().quit()
#for button in $Menu/CenterRow/Buttons.get_children():
#		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
#		
#		if $Menu/CenterRow/Buttons.get_child(3) == $Menu/CenterRow/Buttons/ExitButton:
#			print("joujou")
