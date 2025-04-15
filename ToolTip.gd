extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse = get_global_mouse_position()
	global_position = Vector2(mouse.x+10, mouse.y)
	pass

func _on_resized():
	get_child(0).size = size
func set_width(width):
	size = Vector2(width, size.y)
