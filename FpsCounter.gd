extends Label

@onready var fps_counter = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if fps_counter.is_visible():
		text = "FPS: " + str(Engine.get_frames_per_second())
