extends Actor
# player movement
func _physics_process(delta: float) -> void:
	var direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		0.0
	)
	#if direction == "move_right" or direction == "move_left":
	#	$AnimationPlayer.play("Movement")
	velocity = speed * direction
	_animation(velocity)
	
		
		
func _ready():
	$Movement.visible = false
	
	

func _animation(velocity):
	if velocity > Vector2(0,0) or velocity < Vector2(0,0):
		$Movement.visible = true
		$AnimationPlayer.play("Movement")
		if velocity > Vector2(0,0):
			$Paahahmov2.set_flip_h( true )
			$Movement.set_flip_h(true)
		else:
			$Paahahmov2.set_flip_h( false )
			$Movement.set_flip_h( false )
	elif $AnimationPlayer.is_playing() == true:
		$AnimationPlayer.stop()
		$Movement.visible = false
	print(velocity)
	
	

