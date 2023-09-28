extends CharacterBody2D


@onready var standing = $Standing
@onready var moving = $Moving
@onready var animation_player = $AnimationPlayer



const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta


	# Handle movement animation
	if velocity != Vector2.ZERO:
		standing.hide()
		moving.show()
		if velocity > Vector2.ZERO:
			moving.set_flip_h( true )
		elif velocity < Vector2.ZERO:
			moving.set_flip_h( false )
			
		animation_player.play("move")
	else:
		standing.show()
		moving.hide()
		if animation_player.is_playing():
			animation_player.stop()



	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
