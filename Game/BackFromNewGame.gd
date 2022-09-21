extends CenterContainer



func _on_BackButton_pressed():
	get_tree().change_scene("res://Control.tscn")



	

func _on_YesButton_pressed():
	get_tree().change_scene("res://Src/Levels/LevelTemplate.tscn")
