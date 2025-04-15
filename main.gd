extends Node2D


var selectedCursor = 0
var hasSelected:bool = true
var num_dots = 1

const cursor_reference = preload("res://base_cursor.tscn")

var tooltip_box
var circle_control

# Called when the node enters the scene tree for the first time.
func _ready():
	tooltip_box = get_child(3)
	circle_control = get_child(4)
	select(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("Right Click")):
		selectedCursor = -1;
		hasSelected = false;
	if (hasSelected && Input.is_action_pressed("Click")):
		var cursor = get_child(selectedCursor)
		var mouse:Vector2 = get_global_mouse_position()
		#print("teehee")
		#print(mouse.x)
		#print(mouse.y)
		#bounding box check lol
		if ( mouse.x > (cursor.global_position.x - 128*cursor.width) && mouse.x < (cursor.global_position.x + 128*cursor.width) &&
			 mouse.y > (cursor.global_position.y - 128*cursor.height) && mouse.y < (cursor.global_position.y + 128*cursor.height) &&
			 mouse.x > 120*cursor.width && mouse.y > 120*cursor.height && mouse.x < 800 - 120*cursor.width && mouse.y < 800 - 120*cursor.height):
			get_child(selectedCursor).global_position = get_global_mouse_position();
			circle_control.get_child(5).value = cursor.position.x
			circle_control.get_child(6).value = cursor.position.y * -1

func select(cursorNum):
	selectedCursor = cursorNum
	hasSelected = true
	var cursor = get_child(selectedCursor)
	
	circle_control.get_child(2).text = cursor.name
	circle_control.get_child(3).value = cursor.height * 100
	circle_control.get_child(4).value = cursor.width * 100
	circle_control.get_child(5).value = cursor.position.x
	circle_control.get_child(6).value = cursor.position.y * -1 # to make it more intuitive and follow the graph
	circle_control.get_child(8).value = cursor.color.x * 255
	circle_control.get_child(9).value = cursor.color.y * 255
	circle_control.get_child(10).value = cursor.color.z * 255
	circle_control.get_child(11).value = cursor.opacity * 255

#im kinda mad at myself but like I got myself into this mess
func _on_height_box_value_changed(value):
	if hasSelected:
		get_child(selectedCursor).change_height(value/100.0)
func _on_width_box_value_changed(value:float):
	get_child(selectedCursor).change_width(value/100.0)

func _on_x_loc_box_value_changed(value):
	if hasSelected:
		get_child(selectedCursor).change_x(value)
func _on_y_loc_box_value_changed(value):
	if hasSelected:
		get_child(selectedCursor).change_y(value * -1)

func _on_red_color_box_value_changed(value):
	if hasSelected:
		get_child(selectedCursor).change_red(value/255)
func _on_green_color_box_value_changed(value):
	if hasSelected:
		get_child(selectedCursor).change_green(value/255)
func _on_blue_color_box_value_changed(value):
	if hasSelected:
		get_child(selectedCursor).change_blue(value/255)
func _on_opacity_color_box_value_changed(value):
	if hasSelected:
		get_child(selectedCursor).change_opacity(value/255)

func _on_name_text_changed():
	if hasSelected:
		var text:String = circle_control.get_child(2).text
		get_child(selectedCursor).change_name(text + " ")
		tooltip_box.set_width(text.length())

func _on_left_arrow_pressed():
	print("pressed an arrow (L)")
	selectedCursor -= 1
	if (selectedCursor < 0):
		selectedCursor += get_child_count()-4
	select(selectedCursor)
func _on_right_arrow_pressed():
	print("pressed an arrow (R)")
	selectedCursor = (selectedCursor + 1) % (get_child_count() - 4)
	select(selectedCursor)

func _on_add_dot_pressed():
	var new_node = cursor_reference.instantiate()
	new_node.material = new_node.material.duplicate()
	new_node.number = num_dots
	new_node.name = "Cursor%d" % num_dots
	add_child(new_node)
	move_child(new_node, num_dots)
	select(num_dots)
	num_dots += 1

func hover(index):
	print("hovering %d" % index)
	tooltip_box.text = "" + get_child(index).name
	tooltip_box.set_width(5)
	tooltip_box.visible = true

func hide_hover():
	print("un-hovering")
	tooltip_box.visible = false
