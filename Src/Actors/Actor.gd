extends CharacterBody2D
class_name Actor

@export var speed: = Vector2(300.0, 1000.0)
@export var gravity: = 3000.0
#var velocity: = Vector2.ZERO

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	#velocity.y = max(velocity.y, speed.y)
	set_velocity(velocity)
	move_and_slide()
	velocity = velocity
