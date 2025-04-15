extends Sprite2D

var number:int = 0
var height = 0.5
var width = 0.5
var curScale = 1
var color = Vector3(0.5, 0.5, 0.5)
var opacity = 0.5
var control

# Called when the node enters the scene tree for the first time.
func _ready():
	material.set_shader_parameter("widthScale", width)
	material.set_shader_parameter("heightScale", height)
	material.set_shader_parameter("color", color)
	material.set_shader_parameter("opacity", opacity)
	#get_child(0).tooltip_text = name
	control = get_child(0)
	control.position.y = -128*height
	control.scale.y = 2*height
	control.position.x = -128*width
	control.scale.x = 2*width
	print("control pos: (%f, %f)" % [control.position.x, control.position.y])
	print("control scl: (%f, %f)" % [control.scale.x, control.scale.y])
	print("color: %f, %f, %f, %f" % [color.x, color.y, color.z, opacity])
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("control pos: (%f, %f)" % [control.position.x, control.position.y])
	#print("control scl: (%f, %f)" % [control.scale.x, control.scale.y])
	#checks if you clicked on it, selecting itself if you did
	if (number != get_parent().selectedCursor && Input.is_action_pressed("Click")):
		var mouse:Vector2 = get_global_mouse_position()
		#bounding box check lol
		if ( mouse.x > (global_position.x - 128*width) && mouse.x < (global_position.x + 128*width) &&
			 mouse.y > (global_position.y - 128*height) && mouse.y < (global_position.y + 128*height) ):
				var mouse_local = get_local_mouse_position()
				var edge_y = 128*height * sqrt(1 - (mouse_local.x*mouse_local.x)/(width*width * 128*128))
				if (mouse_local.y < edge_y || mouse_local.y > -1 * edge_y):
					get_parent().select(number)


func change_name(new_name):
	name = new_name
	pass

func change_height(new_height):
	if (new_height > 0.5 && new_height > width):
		curScale = new_height * 2
		scale.x = curScale
		scale.y = curScale
	height = new_height
	
	control.position.x = -128*width / curScale
	control.scale.x = 2*width / curScale
	control.position.y = -128*height / curScale
	control.scale.y = 2*height / curScale
	material.set_shader_parameter("heightScale", new_height / curScale)
	material.set_shader_parameter("widthScale", width / curScale)
func change_width(new_width):
	print("Width: %f" % new_width)
	if (new_width > 0.5 && new_width > height):
		curScale = new_width * 2
		scale.x = curScale
		scale.y = curScale
	width = new_width
	
	control.position.x = -128*width / curScale
	control.scale.x = 2*width / curScale
	control.position.y = -128*height / curScale
	control.scale.y = 2*height / curScale
	material.set_shader_parameter("widthScale", new_width / curScale)
	material.set_shader_parameter("heightScale", height / curScale)

func change_color(new_color: Vector3):
	color = new_color
	material.set_shader_parameter("color", color)
func change_red(red: float):
	color.x = red
	material.set_shader_parameter("color", color)
func change_green(green: float):
	color.z = green
	material.set_shader_parameter("color", color)
func change_blue(blue: float):
	color.y = blue
	material.set_shader_parameter("color", color)
func change_opacity(opaque: float):
	opacity = opaque
	material.set_shader_parameter("opacity", opaque)

func change_location(new_pos: Vector2):
	position = new_pos;
func change_x(x):
	position.x = x
func change_y(y):
	position.y = y

func _on_control_mouse_entered():
	get_parent().hover(number)
func _on_control_mouse_exited():
	get_parent().hide_hover()
