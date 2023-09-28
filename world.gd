extends Node2D

# Menu items
@onready var main_menu = $CanvasLayer/MainMenu
@onready var options = $CanvasLayer/Options
@onready var new_game = $CanvasLayer/NewGame


# Options items
@onready var fps_counter = $FpsCounter

# First level
const test_level = preload("res://Src/Levels/LevelTemplate.tscn")
const test_player = preload("res://Player/Player.tscn")
func _unhandled_input(event):
	
	# Handle quit button
	
	if Input.is_action_just_pressed("quit"):
		if main_menu.is_visible():
			get_tree().quit()
		elif options.is_visible():
			options.hide()
			main_menu.show()
		elif new_game.is_visible():
			new_game.hide()
			main_menu.show()



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



# Main menu btns

func _on_new_game_btn_pressed():
	main_menu.hide()
	#new_game.show()
	var game = test_level.instantiate()
	var player = test_player.instantiate()
	add_child(game)
	add_child(player)

func _on_options_btn_pressed():
	main_menu.hide()
	options.show()

func _on_quit_btn_pressed():
	get_tree().quit()


# Options btns

func _on_show_fps_btn_toggled(button_pressed):
	if button_pressed:
		fps_counter.show()
	else:
		fps_counter.hide()
		

