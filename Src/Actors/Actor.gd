extends KinematicBody2D
class_name Actor

var velocity: = Vector2.ZERO

func _physics_process(delta: float) -> void:
	
	move_and_slide(velocity)
