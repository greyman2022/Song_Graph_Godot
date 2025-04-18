GDPC                �                                                                         P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�<      �      �m" (}��^N�:    X   res://.godot/exported/133200997/export-81c3f45fea7be280987bed288cea854d-base_cursor.scn `      �      `*]?,h���f\��    X   res://.godot/exported/133200997/export-996389bb717188551fece8861cd39a2b-basic_text.res  0	      �      C\�au��{��!�8��    ,   res://.godot/global_script_class_cache.cfg  @
            ��Р�8���8~$}P�    L   res://.godot/imported/arrow_left.png-308ba208a61fa228b5bff50dd05bf63d.ctex          �       ccz2-�����		    L   res://.godot/imported/arrow_right.png-1b5d8a22d7cfa8fe66c6291c3d9cbce6.ctex �      �       (�v�Y���#z�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexP            ：Qt�E�cO���    L   res://.godot/imported/song graph.png-a138b77b8d156b81e64604414ac08015.ctex   R       �     3���. ��
�E�!�       res://.godot/uid_cache.bin        �       �+�Ո�I}-��S�Y�       res://ToolTip.gdpP      �      ��Uqe����0`�\�8    $   res://arrows/arrow_left.png.import  �       �       L*T�B�RU��HR"X    $   res://arrows/arrow_right.png.import �      �       �a<���5kl,���       res://base_cursor.tscn.remap�     h       �@���GO���n�Oz��       res://basic_text.tres.remap `	     g       ���������Wɷ<~       res://circle_shader.gdshader�
      �      ZlD�k(��s��h���       res://circle_thing.gd   �      �      ʡYb=��(���lF0       res://icon.svg  `
     �      k����X3Y���f       res://icon.svg.import   p,      �       U���B9��}1�v�U       res://main.gd   @-      �      0L}i}(��b��4PT       res://main.tscn.remap   �	     a       �J�Sw� ������       res://project.binary     2      �S�u�w��lEq�       res://song graph.png.import       �       �*�/���'3�x}            GST2              ����                          �   RIFF�   WEBPVP8L�   /� L�(rN �D����$����?Z@��U$IV4- I�x#5�@k����yts"�O6i���䐈Ȝ��p��!q�2�IO��WB��iBӴti�"������o$�����L���D�#`&`�7"���     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cgm6ag0wvtvpg"
path="res://.godot/imported/arrow_left.png-308ba208a61fa228b5bff50dd05bf63d.ctex"
metadata={
"vram_texture": false
}
          GST2              ����                          �   RIFF�   WEBPVP8L�   /� L�(rN �D����$����?Z@��Q$IR&b 	7"P��3��޳G�b!��h۶��B���a��FD,���;�}��Y�y�|a��0'�$ǏPJBI0��/� �O��}�{�ϣh��D�k�Dr4p�h      [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cbyy7o2ivb1su"
path="res://.godot/imported/arrow_right.png-1b5d8a22d7cfa8fe66c6291c3d9cbce6.ctex"
metadata={
"vram_texture": false
}
         RSRC                    PackedScene            ��������                                            
      resource_local_to_scene    resource_name    shader    shader_parameter/widthScale    shader_parameter/heightScale    shader_parameter/opacity    shader_parameter/color    shader_parameter/borderWidth    script 	   _bundled       Shader    res://circle_shader.gdshader ��������
   Texture2D    res://icon.svg �To/e,�z   Script    res://circle_thing.gd ��������      local://ShaderMaterial_wssgg 8         local://PackedScene_bjmti �         ShaderMaterial                          ?         ?        �?             ?   ?   )   {�G�z�?         PackedScene    	      	         names "         Cursor0 	   material    texture    script 	   Sprite2D    Control    layout_mode    anchors_preset    offset_left    offset_top    offset_right    offset_bottom    _on_control_mouse_entered    mouse_entered    _on_control_mouse_exited    mouse_exited    	   variants                                                     ��     �B      node_count             nodes         ��������       ����                                        ����                     	      
                      conn_count             conns                                                              node_paths              editable_instances              version             RSRC      RSRC                    LabelSettings            ��������                                                  resource_local_to_scene    resource_name    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset    script           local://LabelSettings_reu3t d         LabelSettings                   RSRC              shader_type canvas_item;

uniform float widthScale = 0.5f;
uniform float heightScale = 0.5f;
uniform float opacity = 1.0f;
uniform vec3 color = vec3(0.0f, 0.5f, 0.5f);
uniform float borderWidth = 0.01f;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	vec2 centered = vec2(UV.x - 0.5f, UV.y - 0.5f);
	
	//check for radial position
	float yValueOnEdge = heightScale * sqrt(1.0f - centered.x*centered.x/(widthScale*widthScale));
	float xValueOnEdge = widthScale * sqrt(1.0f - centered.y*centered.y/(heightScale*heightScale));
	if ( sqrt( centered.x*centered.x + centered.y*centered.y) <= borderWidth){
		COLOR.rgba = vec4(0.0f, 0.0f, 0.0f, 1.0f);
	} else if (centered.y <= yValueOnEdge + borderWidth && centered.y >= yValueOnEdge - borderWidth){
		COLOR.rgba = vec4(0.0f, 0.0f, 0.0f, 1.0f);
	} else if (centered.y <= -1.0f*yValueOnEdge + borderWidth && centered.y >= -1.0f*yValueOnEdge - borderWidth){
		COLOR.rgba = vec4(0.0f, 0.0f, 0.0f, 1.0f);
	} else if (centered.x <= -1.0f*xValueOnEdge + borderWidth && centered.x >= -1.0f*xValueOnEdge - borderWidth){
		COLOR.rgba = vec4(0.0f, 0.0f, 0.0f, 1.0f);
	} else if (centered.x <= xValueOnEdge + borderWidth && centered.x >= xValueOnEdge - borderWidth){
		COLOR.rgba = vec4(0.0f, 0.0f, 0.0f, 1.0f);
	} else if (centered.x < xValueOnEdge - borderWidth && centered.x > -1.0f*xValueOnEdge + borderWidth){
		COLOR.rbga = vec4(color, opacity);
	} else {
		COLOR.rgba = vec4(0.0f);
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
               extends Sprite2D

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
          GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dyc28obcl35yu"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                extends Node2D


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
         RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset    script 	   _bundled       Script    res://main.gd ��������   PackedScene    res://base_cursor.tscn �Z�u��)
   Texture2D    res://song graph.png I:�Ѿr�m   Script    res://ToolTip.gd ��������
   Texture2D    res://arrows/arrow_left.png @i���fsH
   Texture2D    res://arrows/arrow_right.png x�r�KM�C   LabelSettings    res://basic_text.tres ����~�g      local://LabelSettings_4nfs6 �         local://PackedScene_m428a          LabelSettings             PackedScene          	         names "   C      main 	   position    script    Node2D    Cursor0 
   SongGraph    z_index    texture 	   Sprite2D 	   Tutorial    offset_left    offset_right    offset_bottom    text    label_settings    autowrap_mode    Label    ToolTip    visible 
   ColorRect    layout_mode    mouse_filter    color    Circle_Control    anchors_preset    offset_top    Control    Left_Arrow    texture_normal    TextureButton    Right_Arrow    Name 	   TextEdit    Height_box 
   max_value    prefix    select_all_on_focus    SpinBox 
   Width_box 
   X_loc_box 
   min_value 
   Y_loc_box    Color    Red_color_box    custom_arrow_step    Green_color_box    Blue_color_box    Opacity_color_box    Add_Dot    Button    _on_resized    resized    _on_left_arrow_pressed    pressed    _on_right_arrow_pressed    _on_name_text_changed    text_changed    _on_height_box_value_changed    value_changed    _on_width_box_value_changed    _on_x_loc_box_value_changed    _on_y_loc_box_value_changed     _on_red_color_box_value_changed "   _on_green_color_box_value_changed !   _on_blue_color_box_value_changed $   _on_opacity_color_box_value_changed    _on_add_dot_pressed    	   variants    D   
     �C  �C                      ����              �C     D     �B   �   Yo! Because of the way that
godot is, height/width scaling is in percents!
Also, remember: color is out of 255!
1 unit is 40 x/y units!                              B     �A      AAAA                      ,B   ���>���>���>��,?           �B     �B    ��C    ���    ��C    ���             ��C    @D             ���     D     ��   	   Cursor 0      �C     ��     D    ���     C   	   Height:             ��      Width:       ��    ���      X:       ��      Y:      ��C     ��     m�      Cursor Color:               N�      Red:  )   {�G�z�?     /�      Green:       �      Blue:       �C     ��   
   Opacity:       �C     ��     �C     ��      Add dot       node_count             nodes     �  ��������       ����                            ���                            ����                              	   ����   
                           	      
                     ����            
                                            ����                              
                           ����                                    
                    ����         
                                               ����         
                                                ����         
                            !              %   !   ����         
   "      #      $      %   "   &   #   '   $   (              %   &   ����         
   "      %      $      )   "   &   #   *   $   (              %   '   ����	         
   "      +      $      ,   (   #   "      #   -   $   (              %   )   ����	         
   "      ,      $      .   (   #   "      #   /   $   (                 *   ����         
   0      1            2      3      4              %   +   ����	         
   "      2      $      5   "   &   #   6   ,   7   $   (              %   -   ����	         
   "      5      $      8   "   &   #   9   ,   7   $   (              %   .   ����	         
   "      8      $      :   "   &   #   ;   ,   7   $   (              %   /   ����	         
   <      :      $      =   "   &   #   >   ,   7   $   (              1   0   ����         
   ?      @      A      B      C             conn_count             conns     [         3   2                     5   4                     5   6              	       8   7              
       :   9                     :   ;                     :   <                     :   =                     :   >                     :   ?                     :   @                     :   A                     5   B                    node_paths              editable_instances              version             RSRC         extends Label


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
    GST2            ����                        ȵ RIFF�� WEBPVP8L�� /�� �8n�F���I�����]�� �x�@U?B9}���"��UHx�y@:��B����:��Tײ��P 9��r�8�z��Q]jԝ��N� ��)x�`%D��o2��i���G������K�G'��"5�F�$I�:�����$)�R8��13����gZ���9�h9d��?Z���K.`7�4 �0`�t�~ >  "N�,l���DD `A�%��.��.H�8�)D�.��U�s+��CC��QJ�@��q0 D���3 D#�QJC��3 �%JCD� ѭ=.�D�VD�hѢ�hB��C" p "�#�G���v) ��1�(��e�qȲ����D�e`,�,p ��q� `&"
�c,G<B�$Ic�20�� ��A @]"R
���M54D�QJq �m#H������������ �����63��@�K��� ��/���/���ҷ�uW5僧�PW�h��}[���O]�?Ug�QDE���@�g�_���K=w���������|��
���|W�)ĉ:�xԈ�S�>D �G�fնm������+ff4e*�Yd�'_	��X�R�(���uh��sk��#J�����ߒ$Y�$���{T�g����U��^l�V����\�O�������j��f�3ӳ���[	�$�m3$ab�9�./��l۲$I�3/�0�C]a��F���6�UDn�u>W��̋��ֹ-���-I�%I�m!��Gt���S��?��sm��9�_��d[u[����}'ؑ�4�֦H��<��{DfCWUs��{?�X�j����'0�X���,������
3�ݞ�n�����Gd�F�k�Vmے�\��}�>M 3�M&35�a�Ms�JŶmն����e
�̚3H,XVQ�G���m�����mm�͋ �y�i�?����Í����M���vm�Ƕm۶m۶��l�9������i��\.�yN�v�?)`�v�m���Q�f��L�Ϊ�z�m۶m����Vۈj&��7�l[U�Mh���E�/�-ٶ�ƶmyCRhݯ����>5@`Vr.��m����S~�m��)����m�rS҂%���%�Vm�v"�\��������R����Zk����\�TU� ɶݶ�#���6i�d�����m�%�7Ԇx�D�@mk����b۶�֨l۬�*����̔�mU�;�����2�l@`ћm�v[O�][{�]{��<۶�&۶/���H^>�1������;����\�� ٙ�3���s -�́-@�>���p����|#�#�-���c�p�u�z:U�6�.2u��G�.���B��
+���N��V��tS$h�L�c躅 X�K���z��iіVB5w�P�l�4̊�6<�P�"x#��8��C��Q� ��$����~�ܮӦiP8LO���s�o�/�^�����6g���7�@ޏR�:��M#�� r"��:jh�ԑ p�*
�Jx@C*]Y��PBt���)�@ �� ���% ��@CO����Z������t2�tvC�Z�l�]O�- U����<4�A��l��p�����ȧ�k�������y���� #֡�(�7��u%�a!�od�n�c���lFM���6Х ��!	SE�R��0a���J6pGX�(Ԩ�G"�j�D�5:G$*�3���]1#�Ssuj"��N{�Dj�}D��c�S�]��T�m�K$   ^�?�݋�P������__/��/q��d`��G��������Ԕ��o>J��@��V*84�I7�3>ͅ�0��*�"�z��an*]���A����R�8`�뾽�#Bj���H���⬾tO݋�`�O,��}�����t�0�I-�R�''�����Q�.,��x���a�a�"�����VM��v�d��# �\�2#� 
��8�z��~`(���,�!�A ��L�A1Z�?=�a�a6�.Mt��:�>.#嶴��r���{��#������,6��``��,��r���)�R���Z,�*�⽤�(p  H	��"���^�Q+���t���Q��~hPb�Fl<���p[�`��p�8�a�`��?�m�!�;Bp")�EdmZ�T}BQV(=���[����&d(���L�T{���U���K> |��ОE ����Q2�Ȧ��P������x5&��������X���fđI�Z-� �`9�K�Y!�1��*
Y�5C�!�`#�~�~d�����L��T�
�e���riDf
�{�bh ~��6H(�Ԁ͊�����oB2 �01�@���� ������mV�1D�v��m�W���7VXm;�@t�).!�?�����M������Z��L���!e�$�
K
KK��H�6�`HT�������K��Ϭ9���Ղ�2�����?r����L�����W�ŬF`���+�*+ԕ��	���I�/�m6�W�6���G�!(m~���H������Q� ���92���J���
��ݪ?r������M$�����~�98��e00��Z�
�%��`�D.
�?S�4Rv���ScU�����\S�>oUUFppj��3>��X̙�*@E�A�NOCBƦYV�]�-�S��	V���ĬeI�&�@i��f ��啯�.m{�@b~qyӂ�^x��84=kE�@\B��5���n	D�*D#kDEa0�\jȊ	5� ��l��Ն�e��#5�Rbw���q����M~�w�d�w�?7:�ԏ��,�����_��jU]$ ��g�O1��  aҊ��²'G��Lވ��.Ko�VJ)KC��<�cGb��>Ƭ>�QnG����l"涫��ɀ�6Ks?�@V�m��-����o�lw�X'o�z���٦�+T��Z��̰?d4�Bec{�?-�'�#�J��3Λ(Xػ�Yai��4�g�Ek�'0B�"�"�;�gY��	����P4��f��KC��r������៙�FL_b���7Q���uG|8cꐍ�]���[������86s��%� �E�Py��F�qX<�+0���,��� _�!�-S�; �b�7>L��Y	����X�Á�d0d���!q��0(*������q��1N�L�0:�-Y9��I`�.����/17:��@(��x?6�"xX���}�O�GoQ������dIC 0�VNc~�_Ň�W����B|���TUZ�w,wS�"0ߒg��-�����5N�\�f>��{��f������_i����ހs�`΂���T���\��W�3RU����㏢'j�aAޚ�3-H�.T��Z�UOV0�Z"kKa鐍�m1��ϣV��3 5n)|����c�YG���3oWE�<>:�����x��E�wZ�{˸�Ų�u!���L�N�y^��[\�i�D�5<�Z֫w�I����C�5��"}���L��=>}ΐD�3�l��P�,��� q�mɲ�ašFe���`X���_�Z�E�	�b��N�����}�����W�('��y�>"�#G�㣛"}/�2 ц�l���%��Q)�0`�Js���V��X���?�_esk�p�ow	fjj,�r�˕�����k"j��c2�+���P�ũ�cV$&5� ��v���t��Η�>���)?	2����K<����K�m�C���>?\8���SQ_��\��S>�NB2&Li�O"�,����$�UdG�"�����G0���m,������ϓƭ2���/�*ui67y����/�I�d�#9gF��H:�D�hD׎��c2��%�v��*�p0��[";�FA&�AʴK> �3�@ �A_䌅���Yc;p����g���&_�-�)ͣ)�4&9��Fw��F�!�3���f�'��9�L`�c��뿢1n"�u������f7t��*����3�h��� ��<�"�aMՋƟ��Ph(�ĥ?INt�?������e8\���F�% �����2a>g�l�����3�p"Ȏ� ��ܨ�f ��Z��m3!�'W$Dv 4��-Us�?u�@S ��6�,""iC\��c�?�G��@`vEe�DK��\֭a�C�B	&� �Z~��4�4���l����
��A��J}%Ib�nf@��I���j%�%�Y�AU̱V���Pe_YZk��2�A�!;�^�gD��?b���U�U��N�Ы�qs���R�����é����0H��Dc0ˊ|��=]�����s�)���}9f��i(U���'=���$	 �*��;=C���O�A�������>�X�*��tP�y�ނ�:p���)�������VG.��!X�?g{@P�%���J[���? ��"F)E�r9��J�Ā����3
��"�F ��H�|�r;C {uryh�~�.�EP��d����0�r`'�ρ��z# H�Z�a�����)�X�Y��;��g
�\.o $RK:��a@؇�I�i���/^���Ѽ����ۿo�b��  ��������r!! KВ�ʫ8�C����U#J��Ů�@ȁ�y�A`��YB__kM�y���%"W:"� "�")A����uq����aJs�G�{d������B�Ŗ����(�+���,�P?Q"�)<��4�4��ܞO6'r�W6���sx|������@�My-������E������Ǐ�����A��#�d@�*�	b�#d}��	��o�@��	S<Y��o�6�xy������M�x{�=���ؤPoϪ��1����>W��Q�܎ #L�0�T����՗/���W1�7�T]fV���_�r������C�UpR66l�-�$ȟ��%E���%S=9HV����E�W�� ��(���V�J�a(�֚�Gd�X%���^2 (5����  ;���o�"�\���W�2�P!���/���RH�Q�V�����DS�[��R��k�j�[K1�#`��2�G����(�bB��G-R��ڳ"��b�)�up��V'R�R� � ��bˁ���O�%��eퟱm�Hť�0e1 (���aa���*T�)u�_ȡfF�J+K+���5o|<N���`����L< ���k2g��R��b�� ��-֞R��kC���/2n�S唐�����'��vU�'�A�+k":F��Z�Į(�U:�u�YH�)ʶ:����R�0� �U��L�N��ƃ9ΨCv�*����kjr�d-�8�7�a[i�����+�|/�'�UJ
�@��@��a���� �
@ym�Q��tX_)�'��Ш��J �w�� ���~ ʪ�� �%�Έ���*ۜת��A:�ڐ�ט0+�r�J��������F��UJA)����qR�U�D#h���Q�J)����);@��yE�2+ �����h��4��S �}�w�G�뵾�9����\"����à�A����>*@���m�\IJUK�.J���<� S��E��K�8� ���O܁�+6%oA��B��蘪h�T�z ��y��_^jhy[l�9ٟ���@�{��A	�
�x��@/�y�u��eU\-��?k�*f��g�M 1�q��`W>�UOȳ�A�'=F�#��D1m�K����E\q�{�2Q�9G�~uŗ���ب�)	l�;� [ȑ��ݲ��?7
\��j�mQ�m}9R�fP:��K���s14/T�1�ʯ2K���a��-��u�!�YA,�;!�����:jk,�f�������
 ����  �/��\  �+���S.�n�r���9l��"B ��6/�U��B����[����a.Y)�F��E.�#��޷��-e�E��VQ�#ͪ-ڿ�n_ ��!!���Ĕ��S� ɊҶŕ�+%� �Ł�RM��v��'nѦ ��"]2�<���)k�[ŁR}��A�:3����d�sܝp�GjB�ŕk`�)��)���K�TtGn����]�Z6;ﮯ� (��ZP�B2 9�3��� �v�&����[�s�t8�V�Qa����
 ۿ�\@�q��B������@��Y%��Jy��Uw����(�{�FF��m����Jt2P�'5�d��l�	�j���qTɑ�:��H����1��v�U�S�mBK΀�*��@J}��ZA-�����������~Vĭ��==L �� �v�)�R_��,s��������.%��vOR� ���ͦkT� �	J���k�W���KG:p�Ӷ	'_��nE�z)��M�4AϽ(��r;6�N��k0d<(W���n�L�><�2�yV(�f�R�U�d!F�5��h�B R�Z���z �OB*eq0B��l�T���������Br��?<���9��z3�'��Ȗ��4Bh4��V��饘*��7�I���F �94��`!O�~!B6�)W �A�����@�ߢvϷ�_�<�H̆�P+88�J����������h5��z���?��@��k��-�
���-��S�<�mna�3>�T< C�̈́sePM϶'B���H�����"3FA k�,�IM½�#�(:t�蠃Dseu*"&�'S���.��Wd`qXQo�!���C��q�w�"z$ �3���!�!_@h�Q�c���<lA%;k�x���E@�OlӦ�[Z"��MGny�'������~��o/����#Tl�)�Ws�
�����lO� �|ϕ��S> #�ɖ0��0�PO���s����@�?I�	#�s�d�`Mǂt�T24;}��Vxׇ������#ˇrI���巖��� �m�z�ɞZ�8�`�)�{���
��0��/�%Gn�N��	���|ߞ��߾�s-[ 	ю�eq6�2o�(���l�RCPI��Εcs�����w�y>W_��8$!8���)сzR?Y�Lѡ�^K��>G��o�?8+���ZNі8\�aFSq"������)L���A�J��n�o�Y���$�S�����6�_��P���s_-m��Qm�O:���b�|$�!W"�P�$ט!X��پ�ni@�W�ߍ����s�e:�&��9�h�i(�k� ���eȌ� �u��gl�B �xS��wf��`l�,�����)?�w� �P�(��p&;�N�Nؤ:���*�:�C��V �^�|.��B�J}戎De4�x���RS	`�G�I�7Ա�
� ����y@��~��(��rbwm=W_aX�1�:sm�6Kk�'9j�"8q�v�p_R �(�-�)� �z@ h'0Ԩ0�L%8������>�S���q;��k���������&B`�,��%V�D0��R ,�2���m�F��}��B� 	 ����&~7� ���4�ݧ䟭(�Q
�=@L&�$J�2�	E��m�<n?!���0d3{�Ȑ&�u�i{��L �S?�%�|���Z{��[i��#A��nV| ̙�U�<ٳ$��wAؑB� ;7b��@0x+�{�$�̉&ǂ!����0r8�C�ȑl+���WC��U|B91D�NA 0t�@�Ì�N?�����3�����%�["OVI���	1H#x�|LRn�9}:ā�ő��`��M�� ���*;�9�T��� 77�VJÞ>��Br�w(�,߽���ʙzC��Z��t� �}v�ͅF!7\bVN�cEl��VQ�s��L��-��1��S_����Bݷ�)��x��C���e���aCn��k7�؈���&.,Fs(0 4�h�+��-�+�ӝ� 6p�WǜF�;��~`�y�:b��ʂ!�C���3� a��
9�T��?���^'��=M�Đ�Oء@�1⁂fJ�u��tV,�����	o��'r�%y�1��]�k��I�)�*�YW 
�<W ߕ)o��=���N�Q�Lb""̡ �4-�C�52(3�8SE[Y[h�J냚�T̈m��ͤ�G��
�sg��|��"�����"���psy" ��
e
���'g�o�(����8�8`4%����U4|��P@t�>����؅#�F�'+�Q���c�P"ϕ�@lN�ZbB����Dh"[x�zE94��C�J���6Sp��6�T-X�0^a���v/2f�A�U�� ک���EΔȕ(�L䙊ָ"pj�ofP# ��JU!ߙ�c���Ys#[�����0��������4�ۢ�L��R�`fnj���-B`�B�Ph�d\T�o��(A��\y���a�@��k�2��KL�b���M��w��0;I�<HV(��0(-<f��Q`�+v �{&¶�"�O�T�c�l�� I������s����ͯ�T[
SK�t7_���\D�j�"
�G̥�4i(��
FP&h�H�3 ���`v^eU��L�PA�W�F�I��r=�{�٤��]4O�X�NLvm$�w,���;;�Uwm�u�-VR0.��.�0s}�!̩��(����IG�ט�0�'��k�$(�(3�PD���5����yF݅|@FaK+�<��H��mTQ��Ʒz���j��~к�Y�0X	 m��#�s"o�q��lѠ��?"�� `�kV6$�T�s��旧?��i���ڇ�9�'��<ɦ5�׷�oo��R�q�5A�>F���l#N����  ���U�x��)E�Ċc��49�,�ٜH���)^d���bu:c��ҩ_�ك�/���Ff�9��m���
{� 8� �r� ��v(�2������(����	G{'�KrqYL���Cl<^o/obR���@D0&�mG^:��i�Zl����ب�1y ����F3K1�j�b�:�F�i1v��4�������}��e��_�CИ�LPm�1�g���ۈ/9�," r���8��-q&��!����>�ݓEi�o۷��奷ͼCHr�������Ƿ�mU�D�I�.>q"���4��7�+�(;���Hg+�A&�4��*F���&����Ma��Ib3/I�Y0>�|}�����Y& �I��K�	N�!� l�[}����13FD���x"	ui`̸��H�(3 ؒئIS%rh��S`�볁��JIea	6ؕ؏�3�ќ�rL�0;?�1��A� ���>��|b0�I�=[R�t�<�v���K�<W�p[�UF:���E��# �I� ����v���gJC�m\j����0lg_/G��Ya���RL�E��o��:����$ 0f�AL�c<N�}9�#!;>1�1����AJ@"G%NS�[��lY?
=�m	�9Őjb&%hN������zi�C=�$V�o	*@�y�z&X��¢�Y��>�xFry	-MU<�m|>ȗ�"��`[Ȗ�L�O
@�(G�7Xݻ�Q.:�T�Ry��D�ѐ�a$LSn�F �"W>��T.��"�}�'�ZX���#��D٩F̧S�6�A��:w�A0�?A��X>�L`N��ɩ�M�0N�&J�tL�#R�v�}�L��*1Y�3Թu0%"���ikq+�$Ҷʍd�2��С���f���*m	�W�m� �J���c��v�G�W慄9c�V��_1.`r�	�P!�Y�	iRe�<fU6�	24�ާ�|��4�Nn��o�T_$=�L߻]Ya&�^`��\ȁ�o'�U>3Q���x	6�u�	k�X�ѩ�Du�\Y'�4�K#���m4�䞆�VQ9q/u3�u�J��DBڂsɾ�MɸcE�m�4���2=�,Ȉ 3kJ��bՈ��¸�d$�M��B���ZF�ǻ�7}���/�B����*x�Hj.=�B����#�.6�oeǸ��\+ti���g;�����D���xd#W�
[W*A���Hx�KO�b�
��#.6�����h;"Y�}�妌0K s�X����B����G5��:n�K��
#��r֣BM2:� ƥ�u�k�Y/b��w_�	��L@4y��. 0O��h�?�����F6@Q%���4L�0c3K%e�fcpo6�c�dTR��g$�/�JA)�i�y��/��hЃ�-���~�����zG%L��O�O�5�O9�N�Vb!�B$ӐA�(g*�E9��&�m� �4��3 �u
�B�7Fh�n(�0U<$��ʬ��`0�1�#��ֿ��a%L}tن�b��%c+3��嶈X�z�����`���	�4����7��ޣ�&�ǆN��C�u-!�Mo{EQ�h�"�u� ؒ�t���mD�J8�`�渍���\|���Q��uIL_�LD 1�)`��!���<��B�S;v �+ 2��E���9��ؤa��M��6���n�B���l���l�����N5��wr���,�a-z��"`XqbF �<b�[H����6^θ?Zm).L1��Ƕ0��(b��d&h���0��R$@��֧(���>�%E �,�F��9g@BeNHdU5m jf$�w�ꃰ�ݨ�@f�B?��� �1�Eb�J���`�����'
2:��v`��t��UKDigr*d�g I�6��Y��Y�P3 ���%�P�?s�M���T�Ě�0,��\���x�\��B�	`�@q���Hj
��! @�6��DV��z���Ł���M���"�N@�`.űv���h4
e&�%�O�i�'Lu4���v����&C���aP	���Ј�U��Q�fXY����#F��t٫�f_���e�Tҳà_wo�^(h���Ö�x�Az%N '��S�� ��*E\+G��w�3~c��E�FNAC<�t'���+����:`./V���a'�taXϠ!�g-%��"l����j��!@�E *�%@�P���EST��oMX�FIa�\��h�Yl|B&1�C�X=��_����;�������x��1E_�J*����J���Hb��C��ѕo4�տ2w�����R��!9p&�T�8�umRI`4Z�Ք���
s���C h	Ɩo	�춱�-	ٖ�$�� ��L�h��g
�L��}��>2�h��B�!J4 ���� ��(:�����?�G�Ǚ��*$:���[��'��)��H���K�ՁF���Y�#���B϶���b�r.����Y�8�`�1�@�B�av�$�����0�q�c�������^"�w-�u�u9�s�3��p"pd�_'Cg�P8W%����8C[_OWc��B��˜��I�(D�5�)<!���n`�*&qMFJ�X�an��	`=pE�$�h[��l놠�	 SI�b�`���VB�8Fb�I� ���*ڙ�K
� K��[�֎ ��_�s ��o]O���@�eb0b�/�+�"� ��#CZ�V�*Q������1��]�����f<�R�wB�V03��T�b=h����/�e_ŉ!�6�ny�j�훪�#�&V�zV��<B#}$�: �����b�CB��6$�1���Ed@G�r��c�O��p�!���p8C�p�����6�fE!�� ݑ���q�oE���:e0�D��?�m�19b��)��j$ JCc�����s_���I
VF6�ח�h1@tpWI���<�26C�9cɃ�)f��a[1!P,�Y>��DzXͤ����ƽ�w�����h;���A,f\��@4 �:�/�.�4�*B!{~a߾mu\�i4
���ܷ�0�s���%�����ۉ���e�����\��(3�]��&#��@Q��FӀF Y�16NZ���x>������i{C�,_Bzȥ�b���жC�gF�t;1���u*��L(L��. ʂ����Qb���F#�i\͝g�Yp������<�����ΔPL��N����J�TD��ݶ�Y9F�E��E���&�� ��!5
���h�H(�2�1ic)Y��l(4��˱��D��^��,�в��cz���:�l�a�N�D���}Bְŀ�\��3.$�W̸�ܧ�H~>2ȩU�lu��<�����j��� 0(�Q!�c.d��S��u��s ���X�"P�?a��q�� �3��
#W"nx�&W��G'a�h���_���i:��0P`	�� ���H�a�s�|��x��0�����3-�y�m-����N�OI?�gNrMp3��,���H���E�t�T��ˬ������)�o1N#�U���\�4�IB�#KA%M�v��a��Z����UO`�?��_��T]Jv��
�Z�$,[��@� �|4S�� �ĚQUx7-�$X�������w��֝<2���i�P�"�8Q�8:g�Q ����t):~_��X�8# "�ҁ���:f�D"�ɣ��>����_��@����JT��P���¡e)b��m{=�"���WN*��!��8�(��B-�$��J��5,e�!�K�A��Y��T+�	�<����W#V�H2�76�$fk!&_ۋ��{�����Q@�耢u�\3`�#�����㳜 ��s�qK�o5Ƙ���� ӕ�01�0H��03�dЭ���@�Be`MV�+�+uL
h)]��E��������f"Ƴ3u9/�0-E�`��
����������"�F"���Hb��Y0dg!� �ذ0 ��S��&1b*���R7�T��̈́X�D�m%��3��.�`|������RU5��f,�i%8� 4@�K1�톶88�4tk�,4��G	�r5��5�ycʘ�B�0�]ɤ�	c>4rh$-�0�!M��,���uB� R�L�9�`oA�7���`9��h��w^i��]��8D�1O��޿�[а�8�k���HܷMz��xfsNiz.��P� �bKk(vWR\�¿y��t�jր�� �Ŗ��Ԥ��%�:�|6��,K�՞�R/+���t=�R+zXP"�����"3�ԫS�09�`70��Il-���T&��}b(����G:oX��2Pw�:_���l�y�_oޙ�&��a�ӥ�(7����Df;�`H7�0f��ħA8iq:t���^�(�ҕhW��u\���LF�D)q+b0�C��#B#�Hz���29�T������6I��Ar�q�*ܝD�u���H���D\��A�+�ܗ@&��rs���{9-ZL�Z>E��a7�坽Hm˜tf�z�	J`m"�i$W~�*����ǊEy���b��vHWaqR�0�"a��[����	R��XXh4���+E�4�i�~@Ց��B+���N2�BLj� f�#w�5ݛ3��2"O�,���E�U�Qt^�>����_t��$[)�W�b����(D�8��m:
��Q�d(����+ܱIN&H�D �*����'ߋ&$�1y�Z����+�Y%a>`6��\i4$�����Y���!i��  ي	�Sl9�4� ��!d�B�f������m;0G��$��'W�H�)��X���=A !��|e;��dէ�63��Rs����oK��B�0�(ﾤa0���%�ƌI��&�~�0� �������Y��-U^)��n+��޾�1��i��%4���`�i�0ц�BH��B�F�1��,0+��3l��
gV2�X��,�>t�V������#�g	Kl��sZ� �<�<�A$/��Kϟi%�Ĭ˪���AR�3_?�ࢗG!~��sVhV���k� I��8��y�sHo��T�U��󖄫�X`��8��@�zH����`X�䌓�p8���Q�J
I�9Նj�)c��a.�|��E�AH��1ڤ~^LOG�%��f~�r4�	D(���?���?���� 0��Xa꾢B2�.��2ʰ́�ð�-�s~�C��h�O�v��\\���0�Z54��hƂ�X.T��h�
`��Úßq-\�RA��õL�U��7P9��LNXQU�{�4FA� �w�~��7!�x����"{�(E!���[-�!J�����|��ƣ( �z3u�hJ��Aхf�<"��?H���*����w���"i �X�)�lY�V��L	v��C���gd"FH�b���ae�-t�����Q�5b]b�RKʨ��6��}�+[��[uB�ډ�-�o
�"��P�:H�l�[�Ʉ>	��*�d��0�P�W�y��y�u�B4o M#�824�\��SxY��O?�`!�&|x�7���Pb�Y�@�q졆I������"���v$i��=�=��M�1,��l������x�.�暎�Q/��'c�����K$G5�)Y���"4g~-L�LC4Gz��������(;�����}���PW���������c~���M�X�|�x{������ȶ�o_��~�x���' ���篵�"R�X`���,�I��0�<�"5���ki���ʶWG�ܕ��f���.�("S�
�r^��*'TC��Gj��������zlw��$Y�)	���jj{*A���̓��2�����N�G1ňF2��!Pg	4�� �x�����'�(�p��x���G	�q�c���xy�z������W���r����?����1@	#4�o���p
p<����Ҿ�O��p��3����n���"��o�qB!�sZ\�@��.^h��ǀCZ��@c���yOc�h��k�����gVM�6e������%]����>�3�M��ٞ|��
�j�-�x@�� \�>y�4PP�%�b`TG"�eA"-O�^>>�^��x��F��z��������+^~d��1o���N��0^����ǌ$:4޶o̓�i�84 '<���i`<*d�=�/�/�MQ�,x�$ɠa8�����	�8��1�}�Y�3���:�V�c]��i��N3���O d��jT����H�P���7���
�����4O�ԇ5Z�"�ߐ����wd�nvy�E��\-��@��	R.�"H�`�'~�x�����h1��}���c2��* ���U�ϣ�����|��3qr￾���?3Vo��ڻ�a���8$�yj�i��<�PW:�'����_W��ML�y$�!�5��cЪ
��70�P�N"�*�u�����ná�w;@��Є�� hPй_Ң�K8�-�v��C�!���Ha R�h��;�u�*5FBRw!��iA#9Sa*v��D ��p�v���k�q
ǿ�#Y�# �{��Gt"��t�G^�,Y��X�n���<���8��0����9�r"��*XHD�0;V�g�<Z�vj�1m��S�*R�Kt]�f�:���t�~���E���J�$`
l���J��di�����k��]�,p���
㤿��*� ��y�ߵ�&�*�i��:����b)���J��~����{J! b��p��� �c���`S~6͓�Wz��i �HL]`>P��i�b]t(
�J�F��Ap	�90Bw\1$�!�U ��h�	x-��&��D1�9Z�j���:S�0	�a���Vs/�o�;J(�Qg��g�G�~���B4Gj$W�eh�*��B
e�EQ��4U��G:�ayb�����.�L���<�8%WF�(��͓8N 8�<�fÊq�Z	a��A�J`�UZhG�&#(̑�@� �d���#��-�{it8���2G��?�z� �J(|4	` ����=Sm��l0Z*�J�1!^�e��W�(0Fq�E�c��.�`h����i` R*x�h"&8�H�[��!: {C:޿��Z��e��!OS���|��HL��|: �@��cb����L�2 ø��p�8�����MZ	C ���S	T�Y�B��o촟��=���@Gb��$�(2(�ԉO��Gk� YK� 2K!X=܈Q3��]��s6�Y�p�7𕪀2A��8�PpdSr��ޅd�b��6�20�!R$��e��d�����9���E���$�x�x�I� 0{�Q�yn�-R�n+�%�<~�W �pЊ*�Q�h��}\H*ˣ�/�8b�ۭa��f�)S^	A���l�<��8���2ڻ�*퀨�3��/��`�q߅r���8Ek�_���^ ��<Is;X8�C���c��� D2�\C��	�(��8�hR)������-bȫ&�in�L�>��7ƥ7@�o�s������� |D�v!fAN$#%��dY�
���SI0y?F^���� ���C@+#���~���l�lP��F4�|�ia��YV�7���ND����S@H��B�����{��D�^{�˲;P�Q�Y�S0�z�B�2B��� Q
o/�0�<,q H
�N�q���@��K�0���}����_�Ѫ5�w �f�P�0�҈E�սa�x}���.�b�[���,j�2��E��$��r4Qa�vBh4�p��"�]�@}_�A]Xg1[��ǂ�l
�<х0]���_;h��E��C8D4�)B��>��¡V��APt>X�= J��B��S6(�88�b�J�<¬���X5,��;���[�L�Dj�ӛ�@8il��iL<�((��L7Z��ʯc�6����0�����`f�o��C� T��$g!@j�\y�d
@��w��1͟F��H1�5(�w�d�36��� �����|�(����0ͮdE��VP����I�d� V��J�B��	Q�06[~`���9�IIH'�P+5���M��4�Ѫ�g��P�!����!^�4�G$ u̉U`���0����y���%	h!J9� ;��Q<jl�nq*Cp��r�c[È��%	(��x�D�]s��uO4�$� 1�fٓ�8�I$��]�\&��,-���qh���I�l��0K�Nrs!D�G;��$N�t�b%eu�F�*[�T�v�]��J�U|k�3F`�����ؐ�7b'�{7�\f;B�X���B�G��� ězC	B�&0$���h��>�L�B� �{*S|��KS�X#-�	�� ��7���^A��p	���(E����V���p��=���_��T�1�$0������B3��|b��C@� �e�+H	b��󙙂�7"�f?�)�eL	�L~Nz��%�Ż�� �(���C��46��6�4m��t)X�E((��Y@oF��� `��'��``�6)�ד�YM��DY�E����@[Q겐<�i9��.�x �nUw2�0ݠ��hI�A��JQP�#�RN�h�d]�,RĬ�(TuV��\4HAKW�a@dv�e�������]@8Z'�NY���* U��5S�AҘkH�s�D!��,�a� ő�%4��B�Ӽ�(i�a,�{b `|�+`,/�������q�tV�����K��n7Z�ܘD�Uo�ņҠ��:�FU�Z��)��x�W0GA��G�r�����3�s�&���a�]W�ڢcew2z�F܀�
��� |����$	�hb�0*O�D�3aKx]������A�b�b�wZ�8��p�v�B�HR!�|�Q�߫D��|�Թ��'�ֈ�G<���!���#� <�f	� �]���1J �,�E�:�HԒ�6S��e��tN�,�f�0���w�a6���RL\� ��! )HĄ�x=�X'Q�x��
"Ƭ�H�@E��DT`\Et��,�u�"P�1]% ���(Wx�h���@�521`E1:V��'ǉ�� �(�(�AJUH �IqY2���*P���I`�8�&�0dcy�ʄ��B����c�&V�i��Ǝ�tte�D�!�=I�O�=2�4���^��<le���7�c����ֱ�d�-�_��q ��@�0�$��14d�4oK�g�Ĕ܅[��pC":�2��:"�&�)��s�G
F8N#������,�O�Ǹ���������.����g^�7��?�@` ��4�w^1�a���@�;�5WL��5B`M.`�o��s�<\P e��`�5J���A����l�!Ba̬UF�6ɯ�*�	a*A~�����R~L����x�㱭�Ɩ��$���'��?(0�*)8�u#^c�� �[D+ A=f�Ä�� ���'�dq\6�\˕=Dx���0{�?f0��|P�����E�����jV-I��{i�>����U�:#P@���h�6�8�����*&�P�@FF��6�'d��
Z�o�䎶!P��`F�[/����A�Ĕ׭_ۓ�6��+�E
�	A���L���whF���,@�Z���U�cT� <��#�{1`�&�Z�ԍR|u�CLan��c�1���ثk�Lja-	�;f�2�Hǉ�����j�;F��9�$� 9����%��~�0b��dM����7MӘ��8���`"<�\K����GE�N@���Q	r��� dA0hasUA��d�L����,bH}M�����E��*�o,��p8�%,�y���G[��Q�x�۰Y���Q^>,�s:�&�(�Y	$BHQP���:律2��~����Վt����rͮۖ%Nx��R+b6c�P {h7��E�F�$���ʼ�=WO3���5bҾL#����*����9���2��5�l���b K�h�3@D��l�9��[�SlhT��e ku�"�>������&�.sA���q���D]S���H�F��x0��x0��C|�_% ��6�l(�u�?`�@�d�*���DV��+V9J��U��1��qe�d���y�^[�zI?��9Nٖf& ����Թ&:UC��8G� �s2A � �r�V��aMbNA#�bv1<��@Cd��f1��D���j��>a �~�]d�pD�9B�\��"�D��η��i���l"
�8��A����h�}E��!;b��7ڗ����P��.Ǥ#fE�� s�]��XEG!U��т��_�2P�ªH�XU���`F�j��p���� �� �� U,?�=80?�X�
�E�w��T%�K��s�׎�a�e��_��1�� ��s��/|�A[$���sy"F�3]�&4�NX���x��Tm"1���l�8Y�,$�Y1��@�����"�	�@�!��s`�D��C8�X������΍&	L��K�R>#N���3=;�nT�����*`�8\���8�Rō
��g��C8�80��� ���O�!� �<�ba��&��Z��� #�wC %�&(��f?ʓF!8E#Ċ1���j�CL���u�� sw�Ӷ��׈ԬT���B8J��q�
P����;�H��Q1�Y�2��:�$�,0�E���	M]M���D6�<�Q��, ��`�Y��% �i i?�����dQHW*;��\��]�x{Cs�F�!�y��2�	�(�� =���'[� C��z+�G��d�_w%�^ON��=�!Pe�_'\!LX�"��e�4ۯ����H�����-�⃀��RTH�PH�Ngu r���%2X!D�����i_�V��Jo3 D���s ���!b���*��ܗ,� &�`v7�M�@�CS=�]F�W�J,��5�}�(�|p �V��M��\/�rˁZ��߷' 4@q@A1D�2;*0X� G24ڜu�Xhr� C ��
 ��������c��Ǹ$���g��`v>1����	a��C�H�0H�(�w��"JF��w-*���
��w-����<�լ$�@� @L<���I�%Hbbi��M
8�œG`z˷��l[��w�4��
ƍ"9|�V���b��X��)�X@���M5:��f0@���d=�~X�]|��ԏ�Xv�b��؉���hhܘ�I��+P�D\���# ���r ���z�d#0 ��@�����/�$I,�@9q)�(
�j�@�L.^�8ܰ]!
#]`<OF�Σ.���ĵ���6�b"%0?H�3�a���1'����~�T�cɵT�������Z
*�9��'���6�u� ��]`p,Mc�#H�_� �k�����Am�3 � T���R��. �����L`Ķh�CV"P��e��|�
�����_a�y�o�4���ѳX�b5����֢C���&C�� _Gm���P���1@�!���<y���}J���,�9���XD�����<[-����j�'QO���1�O|G�@0�P6��}ɣ1�����$��Ց��@EFZ�Qf@в�<��H����K�Ye0*�γ$Yh]2�����e4�]���}Ič�42Mc�&*P�T�-�T�HĦ�3�9ECVD�\�%
�̖#��80/��������m�j �jn��=����@y��l$�����,��'ew1Z�[�bGgB�M? [�0��`8��`� �6�����/�~P�L���^gD5�1V��5��B���4\�!�ņ�-��.���Y�
�Bh��aH�e9��i.��_P¼���paj5"L�kr`	DQ���%���fyF`��(#�h�b}�CBt$Qef~���� tE�V�𑞫'΀d�<F;!cЎ�8����IK���IN� �0�hXv� ���G��7#�I
1]���ɗn�Č�sIA��	�s0�^�uS��KP���u�@� CJ���!V'P��� a#(lIh�� |��L� �G����26�z�)!n�Ŀ�?��9  <K�A@V;H�8OVltb/ ҟ&��hx�
�Ro��`3�:w|@X(� ֈ&��b�(Ⱥ<卢T�vl���(�lH���z�O^�sC�Ta�4���.2�n�y�P�*`�=$@'+�L���<u������,�#�#c�8���:^ 9H?�=�0 �!��.`>-�l�I�`����mU��2�i8�r�%	 ��u��B����a4X H�O��L�H�1����R��f��-�ʔQ3Inp�)�e;OI ĂԿ�)$t�h�x�B���8�=���噲CdHy^^�ͪ�V��Q}Ю$L/�MT#�N䡀l|12[!М�UN,���4�� ��&\aA�P�v��;�A�E0 *����$XGC���������U)h�İ�*Q��B(����=�@ ��.�h"G�\ �$�
+,�s����C�+�w�����F]=���A�ICT�#bR6�Q�	�ذT�?�R�"Q�'��*�i�Y;��t�D�<�C�<^���^z�w>^�Tm��iށ*.��g^g����#`���i��O�T�a��O�xC�*Z^`��N�p��	�7��^ˑЀd6�4K!o?2$��e�S�!L�uXr;.DC��fl�p}C�"����M�AOYٔr�O���iFE��6C������p��ժE�I����Ir��i�� ��Ւ0�n�,g����$s���8]ô ˃���)�I�ڔ� �J�Nȵw� C����k�h����t �_g�m۔ #�����s�0�e�WE ��k!���If�������Α��E��4���ܤ��b���:�J���� s"BC�դE�J���a�Ͻ�ƿ�j_����8�w"T�������s�E�Q���44˲7m) ���tec8a�k;�v{���U���i�i�|)o>A5mʱ�<���o�
�"Pa �M����4s����B@y�S_D�_�,B� �E��	X-�ʑ� ����CK�Ɂ�J2 �p+p�VWیn.L�HV�d ���dm��،J�;p�șAv��D\�g>���{�4|�k|Ƚ�P�0�J@ ��_ȲȊ��*\� �P� �����W�B����m
��q�,գ,a��p���.C��!)��Ἃ���'� 5$[K��E�{��J�q�ٰb'u��B ��[��/P'}$�^�z�)���݀�}w&� �LT��16�s�f�o��u`�(�l��-���7du�@Fse��Fc�
��( 4j+ �!̅���_��
\�Iޞ��!�M��� �xl�aR��_ ~#Q�Ѯj��?vT�HF@�9�xD��\�r�rh��(WH����	��gV7@?�w
W`0�w��y���@w5�q��8�d�:Jǈ����z��Î�����D���!�e��QHI�3���{��I�E�p俭�?�WA��o�,���~�n@>�E&���;@ʫx�W�:2�A� A� zً{�%Ā�k狃�V�e 'ܼ|q|�3D��0�
�uV��LN�ݙ^�����-� ��������H._���Ϸ�\�m(��||��6��s������o�wG"v��c�������q�f��k�r����c��E��������)n��ʋ�lw)[ �4w��8��-x_�s%F�/��w>u� )R ���cn�Ҳ� ��y>I���������(�C\�g� *���?�o�S|ȥ!�!q>�n�LP$�����aI���x�'i�+ ���}>� ���s����$rn����'�6���ٲf�)�-����q�����?�A4���C_�� ��v������嘋��e�>n/��e����?���;���Ot������ɎF�s��^_��5�")�/ @���}���Q�r �xeJH�� @F�h�������lD ,��hp�mk1���Y4��'�0H������D��{�@N07
`;觉9�L7�d&�-�g���?uP䦰2 -N)<��v�I!(�q���C���˄�(�Yo�AK��>V����<@��MDK#���8˨�8�K��{	��x�ߎ	���Q�����1�R�.�����x�xI���>�?�o/�I�3U���������cR!`�"���x��篗g���^��q��T�vP���������WA;���s|#=r���o�ߖ/���>���f�C&'���v�6�$�uߚ�K����vXri�	�TU���s1����^	�����<��j����i(*Ց��|��C���2U������:���������W=n���U�[La�S������'�_��sb#Γ:��4�jh&ٗ�4co����G_�G~+D�>�~��_@���������E"������������2A�|�}����Q�#�bq���_/I>����������K#�%�|���_>������[O�y�������a��J�n��:�+n'fm�o�#��O$|�I�"#cY��+�榀>a9�aG��lxǀ�A1��}�� Ųx�̣0D��؁�g��܀����#0i��L`�EH��	�p����>���u{����  �m7u�a��ɽ�� %�mf()JBV4��(�-�8B�1�i��$D4X����P�#�
%
!��T�o@�P�0�&2H���������$���+Y%����ZC�=^��=�]� �f�&R2�e�8���3eC�)`-t�
��T)~P{�h��B��e7v��̩��q�L���4�վZ�D� �)1�� �5���$����S���[����"��)��'��6���r�nX�����g� ����u$�Ѧ�I177Ӕ\->EC�݊'6X�*M����Fє�IT��͛<]���6�ޣ�l�n��m/��z����(e����wr�;� (I����0�i�<r;?Xy�s�=�e'Rt��h���R�y/`%T�9�?��zZvS�)V�V[��A�5��
��>�@���rt�J��
 �Q�B%d54 �[fh?� A������Y=�iC̭���p��:�I!��ܲ��LCv6�0�����(D�x���	PB�f��e*ƒ*'�Bs�hi�������=��g�%?�h~koA0*�����.F�0 ͹d.P�e�K��Lj���p�@5`9dn47�#H�i����̤���{_lpZ��֤:���H��	D�!9�M<���s��ic��@@�"�xҀ���o�36a֗ >��&���������\'vO?�8������l��,u!"~�u	
C�+��3��#Ma��5� y�-úDP�{=�h�����h����7��|(�[g^L�����ƚ��x���B*���xrfs_hVЌao% N#w�0�4�)��Z� �.@�N�E39JK2b©�ơT���P6�����2�U�k�-�2�e`��<gh�_ޓ��@���Y�4 �������]� �0��-��f4�L�&.�IY�Fs�H���Dw2
�1���J�������dU T� P�H��aP�7�c��+k*DQ�Y���i�����I�n#�;	� �!��5P����]LCBH3�B3y�S��Is3=4�d�՜< u����9"�rh�ӌ��B ,a`�� �$�����¨lZ%��BJ%�f?����$)#Q&0����w2	���X���|I@�x�yj[�{��@Ee�i;Mdbco<����2S�*�r�{E���U�b_�YG�<�{*�M2���V�ޞN����p� C���=����o�0�!H����Z�D������=�ʐ2)d��^��
�	�]�g�Df᠔��VӦ�F��V��pheLc�	�	82�����=���0P���<'�����햶� ��b����.dȔ���$F7�E��IN�
�\��"@&��RE�����8oS�\}h��Y���&ʶ��X�s��h-�*��-�ߟA�G�*8�%S���R��m���3��5\�X�w�y�� d7��P1_�<��Ov 6�.�"�n(�^��	d�Z$�s��D)"�9�KU'�B�R�`�T�14�m��9������=�8���h2�(H 1ʠF �s50j,ĆL���&�OPQ5��A/�k���O(���'�h�qE$D�X�t��h�(����뮲�#@獲6�ud���U�3���+|-� H��_�ɕ �s���mj�*n|r��lZAf��<�?Y��?$�(T�;)�ȁҐ��M"'2�h�5�1Y�xd��	8Պ#�ѤL�de����r"dd�F ʸ 3"s���}�#�`�8��&�]� �d�pfG���5���G.~�P��n�+L�>F��b�@c`�y.��6=�����TVqw��<n/�.�ԉ���(o�$%�ߜ����W���/��|�J�@���Zǧ�� D��پ�A"l����VwL����Z�����?�=t�Hc��4����m6RVi�[��5o!e�%��ʓ� ' " �w��2��D׾Y�ahrlt��@VX�5Xx���1�W�DC��ϭ��BÎ3�j��i\BL��jp�l��P�n,DS��m�	(�R�bu+ �
2�B@Ys\ ���[_o�+gL���eE��J^`�e�^��E�4�Ss��A�#�BiA��Ds�g"KE�mClҪ�갟�
���H����h( �=��q�1hEo}R��"�l}��9���r$HKl���?��Dݱ�e� Lj+&K�FM�C'
�R\ 1���
�b9H����&����!�@q8B �(��s͡0�R1����sL��t�q�PK1�� Ρ�}�f���U��3�$e-*��֓w���x��' [׋��y��L qi	��F�����F?/m����u_2��(�H�R��B��m�d����T��Iz`6Eՠ�R���haR�TV�: ��oȗYZhT�$�F� s��/|[�L9�Hv �r�r� �T1��2��h ]B�g
�  �Ȍ���I��@�/]Џ�n �8��o(�0���o(�}U�V�����6"��C��H��e���V�nM��g����6�����* 4a* ���/��EL�mC`&��3��fP���ܷ'���P�#ń�F�cُiM	AGj�V��쨐NFҲ�x���Lq�IV�g[$��9��Ќ�gpA� �14����f�x(��9�$�hg"s�E�s��1����Q�g�����(+�F�*�SY�7���6GR��)��t9��,8S�*��?��ZH�qX�ؽK��<q" ���L|T���ɩ�v#��`@�3(͡�����Z�$P(��^��li��G�˶^�0�ZU��V�X���Q�U"�ߒ�W�s"��22�
�3�#�k��F���-�$!ư��i�) ��tȷ�L3A���p]�D!Ja���$�"�
I]���5��'j�P"�J	Ba��j$��H���n?�������TN�ʾ�y`��/){��@��j��+m�7Cᠥ�(8�9�j7h�&�L�ev��q��q6�>�8��j��G�����[���U40�q� MAJ�K�
U#����#�~Z!Ǜ#�ǆ�N��M�_�d�i֒���v&��\��e�ƃ\�T!���I�f�)E�3M��2$�$W^���Ԉ�U �F@ݲ��<x�;���5V�x�9��!��#1��|L�mδap���� R6Q:<��}#����)��W��@[ʟzk�8�64���v��-.�r&�(�
�����9T��C�܄42!�2�S�(��W3U�����$�1PF	�I��������~	�:��e�~;FѠ$O�O
3B�� �PE� M"`B@�N�bs�Q��o�B#
�i"��(���G��y�BPX�!˧(E�8� Pv�7UEg���i8@��S ��R�T�-��s�i8u��4c!&qAAA� xrfmЌ�g�����8�4$fy���Om��O��h�|1���<z@&a@�Iڕ�V�*�l5����o����f��щ�����$��� ��3�`�0>��E[`l���! +���6���FP�a!n�s�L(Gz時&��hH�Ƽ@l5����TQ:]�%a��H	���H� >1�Ydb9��G�)p6g*�%5��D�iʮ��(�b�s� ��]d���0I��;#�̃�<�c����Q8��BF,�ȑX�$7�OtVCBN�Mc5$��V5�!X�z��k��<����vME�r�H���+be0Np����0�M��"64��B�E;�A���j?�`� d���T2��ԓP�#B�wR-�V�E@4'fQ ��b�g�Y:���q!�u��Qy"�Qnݥ�H C������h+N�pA��E�C3Z���Z��B`g�5���v���j}�%�)�熁f�ըh��%
��d�4p�ZC�
����Nᢩ�:%A?��i���%G��#S�'0��C�j:h�'40	8��@�Q$�+��mv����>a�eP����*�9bE��&�a�_`�� �1B�FR��9F�n���ک���=�l Q}E�<�4��m�ш���4A�@�b?/��j�9�_��}w���T�����^e(&�(E�Ʒ6�t��@L���3��)�oǵ������+���R�n�	,��v�A�Y�fה����r5pj����D�P������$ ��F����Z����3�1�:��D3(�?O �xB��d�gha���8��Z@u&��&���gҼ>�#C�I�~��|�\��0CW�|5�R�h[T�D�xwI�+%%����;s�1�Ha���=P�g�d�y��/�Y8��g.0o�O��(��؜��B�<7�"� dǑ @빖[��^��v\؀���Q��)�^PϬqP?�ДUc|3Dc
y��ԛ`���z�@��T�PĔ�66�f�,��Q��� ���8]�B`%F<?�
�<�Uo����L��YV��TM�ѽQl�;����㠦p�P"zrY-E���ߪ��$HR�y�d26cQ��l�k�����d�)��wr�yrύ��)>A��	��/���`�I�^�t�jQ#߫�e-vm������`i�y�};p�@e�f�V����Z�g�vɢ'�0Y�1���	�J=�aS	�=�=b05 ����!�1A$W�~ :��ƿ����[5�x'Oh� �����m�%�0Ě�V �1��hna�q���j�i�Ph���s�/��ʙ��a(f!k-�	{��{����w��x���� ��/�K��x��q�Mv�m��<���A���sC��F;��w-�%"�
.9�C�|���rp�0|��ro�E�r�al���H���-�'A��(q2	,��`��y�LM�0d"�x����ݓ�>���1�� �]��%�8�� �'gd���5�����RZ���Z)��}G�x9�@���q�!s��F�$�F�4�L�\CƖhb����
���_C6��� M���Q�hB��w��+�1��_�ҽ �h4�,<��˗� �@�~5�Z-D�\-i��e�/�� B-p]����[7$E0�V�|hEj�<p��\\�8H~"���O)�3�,�B��`1e��1�U�+��5Mb��S�!��l$���A:Kd��a5�� ��Z�E��F�T!ӿȸ��
������`���B"DQv��˭|.2$isA`����(ǤDSnx���{�i�fc��P�Y}i_T E�� rM�X�`A�nW�D"<��\��6���j�E� U��A�gn�67���b����9.�6T�Z~ڊ�$����!���)Cb(s f�
*�Β�ѸO=�o�J��	������2D#�ᘡ �=�,����H��<�܁Q�A�/[ �W�$C�B%�(��p�0 �,R�b��0�4�%���O��b�b3S���P����j/ Ӑ��00��"+��Z�p���tO틆�(�]ctw���O�IaP�������l �_�ء@PDK���<����n9�y �Ǖ(�!�\��S�V $����'���� �9�[ ����zF�d��S�r'�Y����J!}_1K���"y\>��W�!���m�?3@������T�4��}M��0�#����M[@�Ւ 1e��6դ�����"��`u�Lo������M��bݗ�˶���* "!��0 @�(�dք�e"��� �ݏz\�ڇ?�)y0�>-t��@{뢜�A�����$���ZtK�����H{���U�:F0�c�$��ɽ>��0	,���LB�o��h_���6�Q:¨��4��da`�������@��@D�b���dT"��(X�;��@�"�.l��[�U�/�]	�(Ӏ�S��Pl��A8��8�/�S��(������\�b����� ��T`߱�[C��K��.��sh}�C�, 너�缜����P��nj�!������P��Č��m��RL�4 ��tC�#_�z8�������r�a�D|���̉��w��@�Z�T1�b7|NCJ�J�
���(ܒ���6�����t1�����@@��;s_�1�!��c����(Ei���3(ڂq�n����\Fl�9�d@sX�B�z�Zq�����&��]�\(�fg���v�4��NY"�8e�+��l�j��BLog�U���hHүX�A��kf\71KװN��}�8@B���!�_�ٌD�\O��N��qy�]߮�Oc�4 �-�m.D�F�J���3|�J�� 0���M+���Y
�I�=Q5�H\0���m�o�@�C!�L�5L2��q`E�������K��(4F�d ��1-����>,��6,��xi��BI8+�.c}!0�)��T��f+t�~Lz�C�L5>Y�$�F7�Ce���bH���q�����o��=�1ؠ�t��uR��~I �8'��4>F��ND�H3�АǠ�V��{��ҍRB�2� �"$.0�m�LC6��l�+*Ob���� -f�	�E�{.@���6�E�x�,d�B㙏��$*2	���mu��0
ȞKF	�]��=��l
r 8��8.8<�/D5���h��G֢���=7iR� ��-�ƽ[�d��Z�1U�:Pʣ�V�WeȦ�~5�MPD@��h�^-DZap�m���b���)f����� {?D�H��z�c��b L�5�(>'�p��"!�S8�H�p�)@$Io��DQ�����(�7
(g� �"-�(�'�H$ρk�Q
)�SD��xI��Cw�9��h ݄aJ�s�"#�`H�W(K3`��40*d1���F(�#�����j��5渤���{;�(6����:�ڐ��"�Ē�BM�PFL�f�&MV4E�"mB���5��h���� 1F��ߗ$�G�j���!	:k2J�j�����I� ��1vRR
��Ğzf3�	4d-z�	q�q�B����smF!F1V��!n���ͫΑ�H*���"�em}.�]!`C��<����J1���  Bb�(�v���'�\��ɽ{a��u�_+{��h�����r|��^�Z%T���膂�"΋v������b�>�T�����c��P�	�15G.�Ũ!æF�AY,���3O����'1��cc��F�ٿ�A$��Y�VK�5\�_Q�TY̙3A��  Ă���h����0��:�c
3� 0�l)�,��>�s�U���R�Y����?��`x�[�
���Ϭ[j<���h�w�����eG���
:��K��=�މ��q�i�gA``
��b ���`�,&����|$ժɃ;���E��KC���kA	r�z���$C�f6�E���~�RK���5֐�e� Su��H���(ᙧ��!ϞF�pL*@�(�s_�}ŐlG	�E9�֯�<b�Q�%�8��$Z.��@E!x
�JB)d�ИBI���KOCq�;n4͢�C�,C\�*�n���{$�&�C��g[.��@��=o�/�QM����#2����P�mЁRwZ/$V�+@��M��_l/n��h1W��	��0�vxUQh5�5N�2`��hh�+O`��7#2�����c�5}�
�%�~��]�hS��9�+_R����.�#d�5����z��@h�!4m� �����]0~�f?E�����/-~�0��I������kk��F�>�7��x�~ڊ�HB�cB�䗤��xi4e�m��4��J,HA1�C���]� �Z|�	c� �
�K�)Xr�1ə���"�����$��q�FP����A��HM���;�`~�;_�K`���:����b����6{L�b0��,bY!%�<"��<��he���r��2�?��R@��#*P)Yݩ>��$�D1d`���Y�9� ����1��){��̞N��5�D�CT���K@�yl)1�����;P,ɼ U��EGwAl)�;�Kg��AQ�E��м� x��!��H�v�ί�S�G��� I uW���2�\e����^u�N+�k��i7@�����=3*g��Tm�Q�#T -�	�#^ d�䓀�C��+7=�e��B�C�����ܹ� 8� ~��$�s�qΕEus�'��{]�;j-\���<����#8����R����������q�ѹ��y��������ϣ����?�o/^����8����Eض���ϯ��������|��n�Qg�"���q�Tۆ�Y�8�?����nJl����0mT���q��m[��}�a�d����*�:%�Y�v��"ZPJ`�i�2<x�G�&`�\�ǵ���#`����~1Q5P���n�Sj�.?���Y&d���%W^�t5�P�~�Y3���I��g�� Ԗ�6����#�!�d�`�/��g=��'�=�zo�sj
���mo^y�& �2���.V�q�z�Ab�03�����5Q�*�Y]�^����"�U�"�1���}^�c@lm���������b��j��тx��y]e�B�V������:&�쾞�l�>�g��h�(6���V�)  F}s���Q�v���#�p>~"آ������j4ˏ]�`�w��'ۚ�=D���}s�՚ը(@�1�G���3���_��A��2E� ��V��������;�z��$S6�3�Ƞx�kg?�b��|a��~@�!9p֯�����B'(�����h  ��?P��?�弼����	:�����q�)9{�%��y}|�:���&���������@�X!�����^.-g �T��_�?�vD���p�|�����e��28������6;�r�1����}1h �{b�\Ĭ؞Ǝ��m�Q�|��s�7�Db��?`W������,�@��Rs�@��ܓp���	���A� 4"N�]�G�i
u#�8�)�X��~���L6���)�êt+3b�4�����^ϵ|� ��~N��.>X�u]�b�A�ɕ�+��.��L]Fr�\�et1��9n�G�����(8��	��TX!�\���V+�q��1�9fQ\u��)��Z8fDa+$�qLd�Y��2K7X����`b�c )�׆c�����sd�;&�
���<��β�q��L������0t�a&O����f?����I�@"PĎ`��@G> $) o8�'���SӿX�� ��&;+գ���	U�� m�<�
���t�BsRP嘰�C�����LI���6J2�4l}I&�ԳȤi�=����ô4!�CCwxcDflr?�
�Z�k��r��e
N���oQh��  ���)L60��B
���}I�sS�Bi �Q f)�Ny 2��?�^�_X�Q��h���J�/�}v��P�"՛���w�S�_
�4c�F�6tO�INg`��%�m�Y`�cR��s����"dF�h!���;߹T�Y+���H����6��Z��A-�L|}/r� �W0��%N��X�$�j�3O�|$�I��rJ|}�K��K��a*	S�f�Y�:?�/`1��I2�y�X� B�1!��P\��L�B#!�p� ����t�ؽ�S�%`�2�Q< 9�i�f#Ip��p����8��N0O��˿ҧ�bF1%�8�=Yv4Z�:cgEci�H[��h��w���:��r�m�F3w�Mu�>�2H%���x�Cei!.�2�%��5q����NA�x�@F�»�Ah �_%,�j<��֌�rtI@�Ҙ#R������Tb��Kh�]�r��`��T)@�T1ݖ$'�q�Re$LB<�ta0���A��[�����"��c��4�m] �w43
���>{�+P�LwY??4�H@�@0��8c����3��!�;��(�X��H�J�C�
,1�P�w�����m��%� ��I��4��ϵ((�5�+ERߋt8v�!�P��0{%`$s�(XF�hxfu�8 �"��!�����)���,$hV1r2��6CNFjw��k `̬5;��`H��A@5��#Ħ��$����0l�Rρ����$Q;B��d塘 HX"�.�8��%E "�r��P�s��k�$m `g������n�񾽃aъ(2�2�T ��,E�u���k��_$�����-31���ė Y'E6E���*"0�yE�ڏ�~����F�F;HL2;̂�&�<��I�x�E#v��|��1�ʗT3��QY!"@���TV��u9 �a� ��4d@�����{kӏ�;�0�-@��H#�b0��MZ9�4*%Zv���<_��4D��	6������pXk�E�F����)�\}�d80@�����G���tW�\d&`�o�����Fh��6��B�Z
1���m��0@�6I��4�$[�����H�id�s�}=�5
{`�_�=��h H��� H3z��\K��L �`eX�wC_&9�����1"@FC(X�9�ec�ۨ��� �Bl�Q3%[�����t��a�|��'7���C��i0�"��1�6e�k��CQ4@tSDE+�Q�1FkS
"����ǋg�M8eb���^��L�=3��14O�,%�/S�h�.rL<*���(�?��	b��X7HơV�<��[�!���5���� `S�)�]GR�P=
��3Ϗ�G�M.14�l���U��H�g�=51J܈��ZB�ï��d�S�0E�FBhm|��� UQ6@��*���_�	r;���r���I3X�_l*�\�U�9� D�B���<Gl��h� N�,&6>H��ФR�r��+����Jr^�T���o�=i6��je����;MOt<"��6������4H�Z��ͭ�G4���+@�Y��{�f,(ZÏϔ%�s���ɀ�O&+!O�{�A�[��F�"���ґ@yv'#�t"�NY�y�	Ē
�5�֗X�������,�2��Ԅ#�[ ���n!��_���3W��p��4�� &LI0��I��(���<��h���"m$嘝�&�������
���5/bC�g.�M����^�Ab � �.�V��Jh�ZQ4��l@��7�HP@h&�B����if��ݣ�S�X�"��ڣ#�j�L&4w#��ҭ&5[�7�:�Q8'�s�F&�ɒ���j��'Z2�_R��|t��Ff�;���ЮXss�R0ǁ���� ��\�5&'pAd��A��(RU�g2�����DE퀊�qI ]ЁV��ۘ%��*
�y�I�鞋�}|��{2 ��lc����%�X��@X	�")2X�o�,)Z�A궎$�n7i D�U3�� �1���M�-�Vo���P�G��}��[ $NF�-TY�s|#��)��I�g>2Zk�|ᇰ9������ �#g�#ZD�nW2�r`V�Z�30��������H������+sP�y�����q�Q��0$M�(�:#ZE���ߴY���<Vw������ˬh���75YC'��LŁ(߰8B�q�EQ��4���8��j��\�����S�ꁸ4<@;�is��[)��j4+ 4�����@�Sk�a�q(Q?R{p`�Cd��#`)!Ƥ� #�-f���c� \�ɓgV �P1	� ��ڗ��"�� �%eC�+ى ]�L�8)�xc�X�[��A�Hd���	��~@� b.q�sF�L&a���"⚰���Ԅ{p��F�,ѤD��\d	OCn/�(�Q+�Yߨ�4Uf�!����m��gI�m�}�?dĸMU5�Wg`,2ߒm��B���4�C���n�*���L\�����s`��\�V�HHI�ǤG�xE���4���b FkdRTF�s�9����'bG�����i�js|�h�%��ҏ0�:(Az��42�6D{3�Ǜ#�0y��\*f!3L6oJ(L�y�pq�	�ިtN�kE8Q@$C@)�V\־��,W'Y?���w&�@��`�0L��������Ѵ�"w.=AE���/ L��{��N� �������
�~;I��8)5Q�@���aHu�X�Ǖ�� i�3t+�N���an��<���!m�ވ��ۜ^� ���Y<Ұ����0$K���|g�� ԌZ2c
 ��1ņ&h���4�+ f��� �e�Y�Gz_g f?ċ)�U�8&�M��@�����٣�);E(A2��!k��3�aBV#`(P.`�ܡK7D�n@�s_꾋s҄d���x 2�RޏOc�kA�#@���)A�?ڂ�/#&-i�hDF�,B���XKC�=�"U[��w�h
T�C��w�"f��*��(fA� 4S��k3<�lB���`���B(3 Vrm|�)�ĕ��%�� ke2����X��w�P�*��~r�X�a� ��\ 3H,c�g�� ��9'���Z���0$@�K�:cu�"�p��ʪ�a\��F��~`�D��}Ɋ�4���{XR�F���>ٌ ��
��h��GY���"�}8�mDF��
�?�V��G9� �4�<RJ2�,Ȓᤌ����ت���'0��&w����E%�Z�!�~�IY�ٰla�(��l�6��Ua�-fKo	� ��Bi4����S�~�l�� jM
�ܐ�)�`�t�DH�0�A!W ^?��?��� (��)!fӵ ���� ���ב$����FHD���5���:{� �f�	0�T��0�aԊP��������	ę �5&��y�,>T� ��9�ԟ�0L�p�	�!�,vE2�"�V�yC�~�_��XڡPb@@�� �����߬fZ�)�m�� �H�>���u��J�R`Q	L��6^(B�liw��݈qJ�ǜ@KAk���h���G���<�;U��d-�=j�*V�Th�!�4�q@�~��� �`�ZlJ �3u�����Cq������L���/`�����s#�1S����=�D[�CT�4�H�W(�)('9��h?Ŭf��Hc� �������T(W*�D���Vui<J�t��b.I��q��&0BccV��g	4=s<�Q�;�W�Fr d�}�T�ݓJ1���S���G�"l ��0d�<R�t�k=����6� ���3��A���=�zh	�v9�h����T�=��$
��!���-οF�4�� Dؤ" @���g�	�hL��X�r���X�$/������(@1x�$X`�!JU	hـ�,�p�>H Ռ6{�9OGwI��Q>�$+,@>�� 0{�N�]�JC 3
�hIc@���Q@��Y��Z��Y�hRv(��e9S5�R`$U�g�&S����� JČ�U�I���k������K"�����>U�Gc`B"�c�e@�e2Gf�P3D�ӆ#pDrEa,E7>�������<b�#��Y�� ���bD"`		� �(�%$����Qf��j��!LD�{���\�s��g'��4�@
�R����Hg��uޣ �!�t4 r�r)~w�E���s��� +Q	9�i��]�JW��(6΄��-��%�'Ⱥ��'ꖠ�
��I(�ʟ)T#
�T���P����^BJ8
P��t/K|f���13DV���=؀M���$�H��=�����	�0��@)��8x"^F@*A��-K8k�Z��J�F���Q�� ��P�����.#��D�@��@���h����(�	` ��^�x�onh�e�Ea�/M�ѐ�\��P�V$�1* F��BJ��mp�?7� �T\��S0�@�B2��C;]��� ��%O6 �`�$8�-jdŰE��`jJP�Qř�Hʵ
�7S�X�!�w�W�p�r��80��v&ۢ�Y�i����g2-!� �*LF��`	ز|��VQ������� "��j�Z��J�;�*&\B�Ep�� Jb�'$K$��bTØ-��I, �@�R�BF�PXw�|kX��L`0*C��e����� KX��a1$y�/�fN�{�G5n���P��@Jv��PY�mןad�1L��֥h���
 3�)`t����+f�U�m��X*.�����<�o	B�#��^{�!�E`������I���k|Ş���M41�$I- A��H`D����` �8"�	0X �
 C;[�j�*�b��(����u:$9YfM�4v��c�e|�e��:�"-�@糫AW|&�x�"�0@^ɨ�̒�I��������L���C���bi8P�f\NP l��B�a�a�* ��J�ѥ)q��n@r�Pk�*a� gEp		(��A��Cע�r#
9l��Ӥv����B �IQ`����/�!��P��,i��0�wn1�k�S�8C��ˋx��$ ���R�H��F!�kA4�l�n0
.$.�[V'(�|̐���1I�IN$��h�a@� ��cD\ߥo���D׷a��X}�6-Q,3P��:dRf@ُ��%M4��!��� �`6�^���P� XWKu�(��Al��d5�������+Ԛ�l`Ad C.A�%c��QR�V�I<�2s%�l��稷T�uOԒq9ҊW�I�14ǍlZ���|� !�d��!�ݖf"��J����Bk��o���d1C8jY�	�d ��QD��1F�ŔĞkq��L�P�w � Fڨ��ٙ2��Sd]M�f�Ql�C)�̓]0�bdkL�EH��D�x msDl��^�)��8�Z�PB�cB���e�h Ǘ8UaBCܖ��>�L�}�`��Xl�_ �&GA���~�`�S�O	�315'
�ǽ��F<�����X, �� �F'U�!�{�H�Dmx�%@t��h�TÆe78��Y.����]0�6���a�"J���U�_mh0ѹ�b�����0�bF\�J,B{Sv�X�4��G2Z3Q�UP�!�.�k\C��jW�J@CǇdRd��c�T�_��	�l���H�_�]P�v�q��`a
�� 25UG��F�EE
Ԟ���K �G2;%�D��� � �����?�� 1�b��_�(nA�&ɓ$ �$�o ��Of,�F5��	Q�@b �҄�U�������l*00���� 3Bxbm�M�f�g���ڴh��ϵ�0�g�-0͡\��l�%���Ef�ө�2��9�h )b#���F(q B�A`��<�^G[��@�Ы}]3E2��
~��0պ<b�\��)C@�Q!U�c]
�B��
���Iq �y�������5A5;�%���?T��`�Xb�!Z8 ~�+���t<�mA�	��M���O���!|c<�u�b.OC��0󂥧a@���� �/�z���]6�m�8 � S6���|����h�+`Ru �U�xd���$�����+<EY��f�`h�.��<��Īp�D�Y��ˑ@l��ܗ���`(�0,U�@��"J6��Jy��K76����1 �K�*��_�w*R��q�6�HERfL�HX�2
�ɘak� t/6e��P��f����J&sA���
�����ȶ6A|*�!1 	
�0�0�9�6�+ a��`����	g��,�4�G���h	�0FP�������AFP����Bc �ƃ��%�(�2Ɓ�}�GL8@��k
'2��L�
�U�(����,�\�1Z79Þ���,pȌSB'��+S�����ia���؂���تP�`U�jc��<%���LZ�b�	J )T��#d.2+��	�*����"�������5�[�| 5X+>����H�A4�������I�0xBT��4�@,��Ą�Lw ��$(��L������$�`��TG	c���dN@ � @�d^~�
����k�Tf d�QK����g� �_ߴ�	DS�-��B!������Ԯ��	Ͷ�cPF3���6��Hl1�R�~�����DVI���:OE��'��U�"�q�m
��Q�
�q@b�d�ء��ZB ���-���=�e*�� BAĒ:H�\Lұ�P�縄6Ǫ�-� �1�����	�0��v���}ԋIo��5cVInF��%}�ˋ�"��1ظ �\���X��:�rT�eFH3 �G(�4�h�{,�h��S�<�HTr�e�#�X9$�j�M�.Z�~�eHI�veʚBee`��6�H��7��
�1	 �Ŧz
D%��4MP9��b2�ԮC���I�R6$S�g�N��P\	=D��4-1_=�
�0l�zN7M"�n���A�l� �v^)��B�`	C����7P����T��	�e��1r��MM e/oѰfIӥo�߈���4 Pyh��+P��1�e�ڣ�A6�6��L���5�<R��<lɬ�.5eb`��f0Ē�<�����\.�`�L�T����hȺCO@��QI��t)��o�o�Ho'%�_Ł`+����(K�ٳP.M"��yJD��s�� !$�w�4�AʔE���i3�}	�Vʛw��v��	'��o�m[M�y%a�,2s0&����X���d�b�G1�O���w���w�CX����#�<> ;.�OX�~Ds�R��$Uo���T��[^�Yߎj������QU��3l_�h/���C���E�Z�ƌZo`	
�	�-B=긺&yA��@e�M�׾�����Jl��R�$/��cf^���F@cļ�,�[���T�P\�x�@��*a�3�/�0�a��6����O��"*�v���Z ��u"7�T@X��Y�ڍ �^wOb�Ii(�Һ&d�M�i�Q=�He�CXb�NZigFĞ�Gj��ew�N]��(�!&Xy������ 5֕J� ��h�=f`����re׮0I�H�Bgd�Cf#�9@�$������F����$+����� k���� �a��x�G��Z��;/�<�����"KJ,[��~w�!��=D����h��B�cL@�8����s�b�D�֒�h����B��������������H\�!
0S_�\�6R�M/i��<�)��`5iF�CF��Vb�֕��};����T�0T|� �ԟg�2e0qV�<W��p��*.O�Ѭ1��r�>K�(�mHV%�˥��dT�T\�.�xE���d�0�����e�%M�!H\�.�k|�� 1��fʉ�P(G����D�p�cKE�ATF#�~�����0C������wD��'��'CY�}��9�p��bVt���J����T3�pz�䳀A�ό[��R�QTeۥl��=h���s�a�,�u�$�r_����*b��a�E�@b��&Y1����b��.6�M/,d�P,�i�c�'�5B�?m3a�*d����s��F�)�A`�
5Eh�e�i����60� �-��[�/7���G�Sx�8�9D�����4�Z<bV�ٽ)�_	�t�
ĩ�P�?B��l�0��YALT(�+��~�}��kTI�q��	�0���u_�e R��aiaH�j�l3�	R��y�!�x~f�@a��<�^$�b��Q4d���)،�f�zf��d<�������1�����LS���)�	��W]�2�Z��l���DWgzZ2~�z�1�'e���^<�L���m炅��������as��Y� 0�= ��L�I���3x���#����cX�#f{�[�>��>�c8�8����x/��1�� ���G`4:a��P���#�+a 6������� ��I�x/}DR`=L���	7	h��F�����0��hd.�JѢt�0:U�(^{W�fU���L)"B��a�����А�⪗�Aj�U��1�f�Q�gr�	�����+O]�	���;C|�4gx�\��[��dÒr'�d������Z(H-S��"����䞛08�'�pCG�lO�7 q�8��0	h���S �&dh�>��1�N���M������8"Du5����>����m6b3�:���������%Ui��{}��#f	R��=Ϗ�q;�TųE�P�>~>o�ݖgJ5fm�X�����]I4��Gy��~H*���x~=?~�T�T*Fc�aYa��k.�%E@� �5�rB��/��+�V/zj�)6Bz�$eX�Ǣ� ��8���F#H{k��$_Sy&<�����y4N�2	51,��T9hO �
u�~����Փ[���6JBh� �9
��'`�/_��H����k�2��O��~�zM(V����? n��O)�aO8��捅$X���l���A�C������F�(
�s�1ȓb�+�z��`�ǌ͈���4�c^@�O�	� ��"X�	+��E�!X���M^�0�d< ��~���=8A���K^e�
�Ȏ�djʖB�Ub֙3K{m/]�`&5ˆ�r� �,���SÂ?Q���Y��<Ee�
>�"�gMO��$xՃ�����aK�,�?_|��s+�\2�B@B��������U6� f���O�������$9=CT����o��7��������28s5��[^�����qa��j������vLQÖY,�s�Gs{���[б�������B�ɖ���h�vø#f?�߆��)5� >�n/�?�o�0].jj8F idL�ONy,�"�h0L�nh� ��~B H����fqP��Y�i���e.㌚Z��F�`e���	�Q>����V$�%�����T���J`FJ�Br��{�etq���dW..S7S!!S��q%��r�+W��+���1��q�Jj��u�a�8b8���q� �Bn�b�d�;�66� ��1���s{Y�c�D3�S��0���Y�Gn�`��J<�M3�,�1̂�\̵ �Y�elXf�Q4f;&�X4�*��2�Jʱ�Ic�a�%G�Ì�ӏl��"�5ǌ���f�����8O�3����Ep�ܧ� ����oz�|0T��X���]���>�h	"@����@:;4�%	�Tb�{��8�HU���Q�6fRc��C�dg*�|*ߪ)��Fe[R���N�0�p���2��NЗj�M������V��s�@��(� Rq���[.
`,�r��i�'� �a8N\��Z?QHb�B�]DD���8I�%4��%TŚW)@,�&
�QZZ�BFU���E�9�~��f��DA029�_��PgQ`p(i�2Ȓ3�����̬}��ɪ� ��J���lU;��uk�}u&�j#JjVJ��z/$a��b��VKZ*f�X��l V1da�2�6)�i�٨i��9�Ef5���C0B���6H�(���ZҒ��
!"D��Dn �~!�U�	Y��o3�l�+�Rd�D�$�y��'", U�MH�TJ`c?�ڤ֯%h=�M���D@lM��Zeǘ-ml �M$k7�q~�?a@l+k!�l9��D��4c��g�=� �t���e I�k�S]0͑�P�Ty��BM�$k�J��`�.�Q%��E05�3��ĲU��Ee�U'�^+R�	�Jl�H ;~=��շ�-�L`_���L9C���FWB�8 *X$j��6C$ۍ�pB8D�VpQ3�2��lK���T���HX��c�d�M���h��0���ҭm�%����y:�(ճ#�Q�4`�߯߷��C�QU-��[Y��+? ���� �o�5+�R�R�ZK�*�԰4VO�5ꍴ��>CDeC_�-պ��Wy��l�.C�,�	85(f��_�}���wiCE�CN�>l�g"��ř0�MZ���i32RfY̺��L^2��߁"u❢�Z��E�T�s���[�@Eך�h%�W��-�CQ��� �?�Cf- 1dOE���3ڷ�f���܅!&L�	�4��p#���@��@:��a{�+��,�	���` 9A����]�R9R�BBTu��2c4t�U��p�Sųj�^!�8��")��_�)
�y��w\�&�v`zm�tٌb�Q �b`�$�&$�&��!�(F1��O�����)\���Qޙ"�- �4�,�����"(� �U�VI+��P��4�������As���s��?T $��Dr�6ݘƶ�QB�&a�H�a�M}(���	�B ��Xe���v2�-�c��vH*I��\��ϰ� W����CK��#�XX��;�D�L`���� 2�@BIa,ZV�~���sjr���v�S۳��� pQ�"9����Ė��ꔜ�5�a%�"�YE�x@V&�N���^�$?�W$N��c�T�)
3��	T�Bv�J�VkRe]G �'$��l(6pi+b�[
HT�$Pr)��^.<4�+�p�j/��87J�Ђ�L# KgJ0m� ��q�v�Ҟg�	��r[�xU�U9��Z�c~�<
$i)1 �����V},`,�.բ���k-�K�gړHYHW;�!���J�9��P�&{�k��*,��gex��gޱ%W�Ȁ!�RB?��� �3�`�J�7+Է�%�~i8%�^����(�i��O�e	�$�C�C�,�)�	K�%̪�Zw4\�4�`�4�1�J�2P��m=@^c�V "�\R���h�Y*@�
L�LH�#��(ż"�Sa�Z\�vjDYB�)3Q�6̴g���HP��0�W�)ǫZ9e���%�ُdĺG�����d���",�jOˬI�t$B�O*��Y� R�&Avc� ���#�	���\�ʵ���(�,W�u򑌀�n��~��|��A�J ���z$��ۉ���7�\���V�������}1�NXjg�K���\4@X��DHe�	��P*��a&7 �J ��U^�Bb'�*�T:3������8B�͹��U]ʼ>���{�B �H���F�H�9}�Bȷ��=�V��S��HJ���%Y��v�(�ȷ�%Ȋl^��Z�R)��؍93��d����# Jf+�D�K�א�D�B���
s,��A�C3���d.H��4��p�e�.��.	B 30����t&`�!X&0�	5q싷T�Mf	����=��#Lz[�4�]�������/�i;���d	A�j��P�������8��hl;�.@���Q�"I�oe� �e�Qq����+3OP�MYk�����v' �5�BZ
�۳ �>B�a�0/aSI2D]��"�����m���#�^�o/�<���5�YR�SX�y7��Zlm��)	l���=wK*��b��Z���/�ֿ���rL v�lP�s7\k� �x�O�N˽|$�ؼm:�]�����B���s�u�+�R&���#ɕ \:� ��5��-9'Q �W@���(ǰ�  �Ɏ#}l�J�!����,�E�F���@K��+/t0ƶ�aP���0 O	���\8���R��S��%�u�a@���%�����V@X#I �\�Tg@`����h5�"� r� �xW9fF$I��w �P̐�
�DfV�����q�	�D*�,t^&Ir�#���D"8�e�Z)�"�
|@�@R4kiQ��qMӋ㗅U�
)�H��lE�0x�C:C�zk2��e %�� �]��l&M&m�0{���'&��,1z���{C�F0"֮
� ��ot��2�"�S�g�0�i:X�Y�A1�d��f�u���
�8��<U[B
��j���|P�
�,�M���k�>`���a�[�ٵ-َ���r��&p�ۣ2L!�6��-i;lwD�U%Ζ��*���\��������k��+��1gk��:j/�gvX�YNn�� �r2���F-V�f6$1Fy3��Þ�::��ה�7�E'Vʽ�e-3�ʷ����d��������z�>rw���=��2�QE����sr��rx����[l�I���*q�Z����k�"1�쫽0[Cw<�b�~ZQ��C�1�H�u�)�1q��
�(b0�ĩ�7��qÔ�X��b��d�~�_3�[S��e�0�s�8â=E�ST�S�L�[�%m����bs���޷;�UǨpU�i�՜�ݾa?W��g�A�h$7�ꪏ2�b��.�KQ�s7�1 �\�x������������Q��
0Ω���v�hI6�O��	�0���!�Km���	�{'7��Opz+�a�$��N���ڊ�Pz�Z�n�v�%��^*F1~f:Tvev8̖�\9Y��8�r�ge``�-���{�m��<%�F��}S�}]�0d�`&��ݛF��T�cUwP��Q۾���ٹ�;z��Fbwl���,,V���#T��*�{�oEϯ����2��9p<�n�]N#̹�����1��~�|=�+�����$,ag��)KT�t~���
�p�y�+E��+��f��q�A�������DF�wP'
��g]6�0��=VB�㴧��b�z��lv�S�U��6�!I�����H���3�
�gTk>�
�VW2GOC�~����`{� �F1�c���U�A�.F�y߉�)�z椃yW��۽�n)��F�a/L�no3��xC,'Qm)ћ�G��~�LbS��RA��{gC|�3�>�ݮP�8���eɐm�A���n`���6�ܰ�	�8�wNI0�n%r��o���H&�c\���=��[��Y� �{�9��*��p�Ei��i�߬��A���&����=��[Ʒ�&[D��4�g���g`�:y�s,�o8XG��m�L��O�}�&�5C������0v���t�EeȌzC/:sMv�s�n���Ǡ���He3��:E�QQ۟�	��?3��ʌGo;�?ana�N���|�gdp�����[5Zin��*�D��~�V��pDa48�u~wϐ쪼fXO�N�g���D��~���v���08��( b� 6G�i�K�V!�U�w�~���[����ff��t6�n�J`�� 9Fm�I��	C���w�E��	��Z�Zո}��E��J/��Ƴǘ��~X/��!��Î�����lːۏ'��b����y�.fh1��S!��/�R����T3�?0����� �=����k�05՚,�����Bz�gD���,�wTA��ucC�o]���2=1+�k�*	����ȥ�ڋ��! �����x|<>�
�}����q���x��� �p�%O&��/=>�D	�T�P�����xX}��>��Ѽ?��e_q�D��rd�����E� ��s����=������(� V	�/�R�i�x �
�l��@� �y�_��W���\����_\�_,Aj�_���0�h����	S�R	�#�Q
�ce�" bJ{�C
!`�EY����N6����TD��rY��|E�{Ĝ�Z��t ��lo����蔭����N |������W�B��N������?�q����}�����xY�����η��?��^^��Ly�����WN��&�����q._��R�����#�����v @��׷�oo���>��pT�Z���Zb�/�R��P�Z7$+0��!d�h��B��2�5�@���[Au
O�� !��`��YЉ��:��+���.�5����q^��呝p����yy!�bC@�,!��in�MscHUX�X(�`��<Ε����'\i�5L{^�������0$���i���in�ŸjhhT����@�\�+"�������r틔Xq<!������0�GD��ȄZҁ�@��1��*��Y�P�	��0�҉ER�c"�Ɍ&����� Q���y��)�|#�u�0��o��>���#����޿��E�ch�]s�ޅ�39�8򷏗�����EU�����˷�HByu�Y�J��۷��i���A,߂�eՔ��vJ#�Քhh�$F	@��]`q$?��H��cdF�0�����3�BXck�$Bͦ�A�ʷhJ΅�	""bH����#�N�K�!٬�!P�+��N�X%F)���b H!  �� (�ރ D "�\�E�!@H�� 	�1�����D"��i���%�K�$��� � R	�$ �'�H )Ԫ^ވ�=A b�5'H�`Y�>�L�AG���+�I�AB)L���!=�!#�H=��ː���B�ygz=1�e`8���g����� f��B��T�M����!u��K
v� c0dg��Y9�Zw ��QJHm?r*>���c]8��G
sۥ�
�Ex�SEm/���i/��!���~�� ��c@ ��s����������)Ė���*� � |����2�ǐ3t�������w���d����O4����d��T�Kg�M���2d8�2EV���빨�K�!y����' S��%�s�#"!��w��D�$շ��39�}{�� ���0�Pg�m�47����/bn8��u���Є�T�P��9��Ye�׍��~Z�ޠ|�s��x�ԧ���tJ@�t�٨���,�t1�7�62������'�2p7u*���:mϐ�'7���0ߵ|J���#�]�/�5C����H d�����ʐ�;���, Cƃ�JqņA��(I���1��:r���L�E9�ڴu��=�|	/�� �<7�L�����L��Aqr�P�gbkd��̩8�e���=�c	0�y��ٞ�"�"�'|ɶ-����N�P�e�ט#1��>�cYǀp�������2��*U$�3�n��٨b��4��@��1ɐM
C���|�s��$�ю�:�(��3����(px{��	�]�M�!�+CD^keF�H�D�j <F�!�<�!��Β�0����a�*z���B��½TQH�!2aa���?�u�Ő|�77�d�t�!-C��g�ث�}�JE>	�ǈB=ݡI��ː�� ��'Cn����Dn<I�3]n)�^�إ���5sX�χ��{{s7�T�u���@��W�����\P�9�ob�H���[h���h;�m�̷���N:]����'`$(�c���q�/L�.�`��f�;��1X��D��(�<��S�7=�ǐd"��TQ�6�9����|����*x��j�S�,�!�6է�t|4�X�������z�,��7�Cb�,Ӹ�3����:��,��.��~P�.�}宗LE��Omb��c9Hb�)CZKm�����������ߥ>��b�|-y&Į�x�E�{�bd��%V�>�~?�9WY��yB�>�!�bn8SPsñ(2��%	 ��z����n)������[���!�C=9)}֋8��ʃ�}jC^%���@����Lv�7tC�wC*m�ɐ3���pw��I�9���zW����V���0�3d�E=�vs:����V�\�L�K���4U�pk�n�3�-��<ԯ�rs��=��9���p�!�8���v��R0�2���~ ǐA�?A�� N �n&�`�Lp�%w����އ���͐m�9�v��O�(C>��b&�a���
 7$p��k�ѽ[�9��2d�?�;C��d)ϳ�QM*�"�NQE���sa<��7h�Up��Gdȭԣ����u̩��%�nyLƯHv�*��,)�"s!|]c��6��'2f��s��}��f+��M;��nQ�nQ�@!z�E2�1�❡}G�0d8��	��!�R��OU(���W��3��l��	������FV�a��� �=�g�[�ϐ�>�!sÉ19�a��綁{�*����t �cȆ�!c��C��y�bt�m*C���T��iVl�0��$�ɀ;A�g� �9�4"�K��Z��oxI ,��g����H!p��N�|��$`�c�uԄ�q� ̐��6�@d���1@�C�������= ���>XC+^���nDP� #�a0 �ɩ'��@��� ˰�n
MT�F0\Ā��05��J�\"5N�8�AP@U�jd�'^xɹuID@1�e�q�Iq�}�L�D"O�HX �z��xDC�1#�@B�f���a��0���m6�L	@�*#5G�� �G������T8�! �djI�:# ��$lrb|7�(�R�漳���9^@]@Q�B�c���z  P�+��D�K��o��>H�E�&"@B��4\��/����ZC>6o�]��QgA�m~����&��������I�@	}�����ڇ�)���3 �l��?��P�L;@� ��9*f;Z<1�
�S�v!nLGH%���L�i�{�v�T�?�kIe%Y$Ӌ�͚"�NH�&uKC.����&���(���O�*O��nl�و���bOU�j�o��7��}@UB�eH���K{� :Z
�@ڇ���[���^����{
�沥�<����7Y�!�榹����܍�ڻǙt�;R]�w���4���sv�j��k�2 �elW�r���� @xe�K��k���� �Ba��^��H$$�2r%x��@��Z#��Zf%bh	� ��F�@�!�Rl����$��Z�� x�o�*����R���ӗ&��.�� �F"��w ڻ����1�K�?ڇ4�h�B���h�ڇ�FSX��DFuwr� %���o���:9, �{�$��0 ������ሙ�cqs!����D`Hэ�* ��T����/�g��(�H�T�iv�eL�b��<_q0d}7��!_�υ��9��T��TAm���Ő'ɉ!O�,q0o�<Q�a_-:z'�ϑ�0�1d�`�-%��������ۭ���H4��f�{���j���t��"6T�F�mtu�N'UQ�g�Ni0d����Ȑav��˳�av�o�!�!�c�=��rJpF�2^���F_x����̡mz^�xB��iO�tCk�Λ�g
�I�e��SN�sQo���Fӎ�X�������Xl��+�Zp�۳���d�W觫<R�:��!�Sy%CnI�i�7 �eL;�"w�QŴ�*�(5��+��BW��*�-��Q�d�mT�����߰0���!7 �d�9����K�v≯�*\G�2�����P߳��H���%��P�*n��_�[R��?��4����'�ty����� %F@r�~Ac� v�v���y���<�fG��̅!����)(�'��ن�2Y�v&!r�����lU�|)%qsy?i�c�cP�  �'�U�ό�����Yj�f�o�M�!�<�x�~�����@|�O.��� >�uax�;A�)4�GC��?������W=KFV�~lh|�����<���$6��K�������18�|2#�������~S�Ð�h��m��uw�-�#{���}]���9�GRyK{}[}_�Ħ{���2�B+�\|s�!���?����c�9)���c�e�;j#�fn���n�&C�A���jd\���������~tLu#gP㠒s'�h���0���ƭ:���m��=g��	o\�ym��9�.�/�"���}���2�to��ٽ�����wO��<{*�l8˽W��#8��k΍��|�~b��"N܃t�q��״�+e�Β�M���Jb��h��K�FE�m��Kû����Zk��*k^�H��ْ������mk�������vt�\㿁�ֶ�g� ����s&�|2�!��oۗ�_��B���5 (��}�t XaP����"{e�Ħc.�:�`��[�Y��`٣m�x�͸���@ϯ{��G �ړnj]�y�V4�A���u�	k@	��~��2�������Gû׼ؽ�.���LY����@H�l����	���-�8���$`26�MWԻ�w��������<���4'YX��s�:ˋn�}@��O�~�����	Ad��S{�ś�/{(�K�ܶ������\�g�|�]�N�wQ}��m���p0u�II�5�۪���+�H�H�P7ƍyo��J��� G���}rˢ�w!��u����7P_���������?�R`���n�'Ӻ���M�j�Z,4��X3�Ȯ����Jkg7�H��i�S{�V�%߶,B��oM�ф�u�N�U���I>;�o��3�8*��/K?1).Ν�S]p\���y�m�̟�� ��=���>a�츝��H�����>)��=�݆DS��o]��ΖE��R���r��f��%�w�bv�r���<�Qk�����oˁ��&��~|��娚R�wF?�Mz�gz�+I�|	���� �x�a�oם-�M��d%
V������C��Ԣ�<�;UW��Q��v�%�ۃ��V&��[��~������-�����T��� ��0�*kM$�O+�� t� �+;KOS�@�~I����X>���7��}TL�|���p��J �� e�鎘 X�i�%��� �/Yrq L�Hl���8���cqj}��߱�Ҝ�-1��Շ�kû��?V�]yqu�Ǡ���@�� cpۉ��K���r�P���˝�� � V:V3$c�b!��4�8_`���1������~�
e�Zd�Vg�x ��d�QW&�xd���I��9h�x���@)\!$ÅS@S�)i���)�c|�����B,Q�$��������$��D����o�hn�P n;���e��s�9�*��7|��Cg��{G�N:�B�S�I�wz�Y��D����Ѷ�)��� �ˠr�!�ѥ�
�t�e.#
�n3�6U��;�< �T�b���۷=P �1��Вo
���P��`��Pr�r�a�����W��s��p�T�/.�r�l[w�=��2ouȪBLIaHHku;�v��2�5X]{a 1�-!IO b�Y�a����@ 0�ci RV�_ ��D`���b�P� �����P
B ;0/MW��aP20��c�\�������) n�����p��\�%� $�F�Y�*˗�W�1 �����Ed��� �E��16=C��	�C�0gۭ,��%�z�v���7ʹ�)1���G��W��i"51bɟ��
Uy���d@���3l}e/QӹU(j�-U�N��	��9	��>(��^P�O�Hk������� ���5�\�Y�6g�������U��������$ �A�5��>��Z&? �	����\��  �2i�x��' Q$.��#�C0%�=�����4�Z}a��b�X�!Ci; 4�1C-;.K�F������ /D�� p��ѝ`hF���r~Oŧ����!�"��3��if������hߎ �8�"GI1�*�e�x�Q n;�Qs3�J���(i�����bh��J�}���ڎx:8�F�(�%F,%$[􁧥���Z(���ξ�ΑJ]j���j�a	TC�i�\>QP�⏛�,.`������q�RC��Fԫ6Rhi@�/1̊k7R���NH2�ސM�!߇S͌3��|��*B&3�anX�lBBv��� ��� �ɰ �p߇y9��ZQg�^���Q�Nw<�v~n �}X���qs1����]����}�4w� T=�l$GBd��C����1��� q�Ks���8å9$A ��xQ�1)&��e{\14�+!�V�������2�dH�X��k���^;���(W� =t���!1$� ƍ`]�G�N
��� ��z� q��S�����0Jh�]
��H;4J���EC�S�V��H6o�u�[?|�ݟ\4�h��
)��Φ&Y	�p���p�^�0�I)��T�M3����I� �� )�bI��#�j�\�)�0{�GM��=�lN�HdLZ�!�G��gz*��� h�@
�:@F�,�vnnX �A�f�%'��X@Fɽ3�8۷x��/��L��1L8B��`84 %�� .r���p$dS��<�NwHF+cEAk�xپu9 �d�c��}��aE4
Pj�F�Br@Oe�uo�Y��C�=/�lS�G�
A!�H`��r���|�9%����o��1�����6��ߞ�tɲcöO�J�!�	�j��d6R�/����<,�5np��F�%��(�K08%p�����ث$��y^x�@� �����&o{�&��(h�������;���Fl�����2�ھ�OP�Z�,2�Dwa�zt�Ͽ0���A͆w4/,����igOV��R׸2y���_Q�K�ʇق�%B04��D�mĐd������Ev�-	�ݩ�������bݸ}ݎ/�.t���c��d�}��.�'wI+��)����x��Ǻʡ����[�ҷ�����s&��T����c��/�	��d�p$�3�V����Pw0(�=\��Po����-�#���g�ն�w4��7HMP3��\�x�z �L�f�;}pL�5�m��,�Xk�U8t����li�$u9���_�i[kLb���}F?o��\�]�̭�� &����aXjM.�����u��r�ppjTʪ4.��h˰�H�/���Θ�q��~��#���`6�����%@Bcw+L��İӏ��Ĉ��Ⱥ�^a�Z��PM�����M��	�Ƒ���	��{�k�xVbo�'fV�ZI�SK����hc���Z�8�E�A�WK����M���7�Ub�_ͦ��s<��6���3 =�il`���!�Nw6-w�y��w� +?2�kNpLz�1V����W�R�=!����c��d��h�"3�ي0�x��a���!��N��bQ���i�_�$uK��ܼ�s��Ó��O� ��>�``��W�@&�W��/�6���I!?�8,���KJI��c�-�EK�#�>�D� sq�o��>8F"�L�s�E�V�<W��^�����A�iP��.� �bW���a%y�]�|������h��3��g�`�p��sa�v���.o\��P����\:T��ǡهTN,ժ��Yj����Z�E.h�,Cn�����vAN���Pv�#��4������n����|�ܢ�K>��`�&�Y;f�z�C)d���y>O(��_G8߲B���*TS}s[�M�rR�)T-*�+���:�ڹ��g�w�{̂k��i@ �N8��9��g���-"�f��O& .�e�G�X������=��}"<���$�NF�>�n-?C����J�7X6��S�� {�妎�%w0�ީ��Y��6/���b@�K�΁�eI U��D��l3��y(����&���"�TA-l|l U����؝Bgn8?�ɑ���g��j��z<>�sswP tu��./b�B���Yyg˖�G�5�9I���A�z؝�i���PN�B�@D�vF+Y�����V�9]���y��*�γ�T�F0�0~��Ĭ9�@z���o��e��Ԑ�'y�g�(5d=Ύ���}�@�����ցTAu��YXd)䳁iD�-OXҠpN�ٰ�-���nYy�In�&O��>�K��fIl=��ᄤ��p�yG�B=����M�p�&��?����=�|">S=O����< �AO�����d��)���E�$�ͻ|Ƴ�q��繬9�_�D��ܞ����fޘ_<�1!�/�du,� @��y%��/Xs���L7R�6�u��%�̯
H ?�.���Iv��WS΂��{~"�8���k� Ȃ��r�S��3_k������ �4���<SԭT�����=V!3�@|�z��ߦI�e�nE>�d�?��U�C����& Α���e��<E��\�����	;�[�4!�-s#�������u�%#�s���������G i9����&�a��>�؉�n���h kNj�"W�����	�e��A\��`���p����t�q�9D �!�%�q�fd�5���B�  ����6��KY9g�)Ւ~��dn�^����<b�&ȯB�s�{^��i9�|EȒ���φ!$�2�pt\��)g�|Ȓ��Wr�R�����|u|�sY�<�sdn��"�')`���K����'YqR�_!<GVewaq� ��m_ ����,�f��W��O8������J�	0�(�8���p��|λ<�����n����&.�N��M����|��s������#���F��*_��<�P�#�q���cا����|���|Y��ly9wF�ىџ���$Z^l��K���r��9�P��9�⼔O�?,"��W��d�[2~�ě|Ju�~@`�����'��[���&dK�xu��_�eK�	/ z�p�g�1�9�\�W�oǑ[kb���9��+��� H=h<��mTd�~�/8�fN�^����^O[��~�r��y���̽��mv�0�Ҹ��� ��n� Ήn�C��tsu�<��N�:J%�7$̡
�1?"�E�b"ڄCmR�O��؂7��I�y�~�D  d&ٓ;�OVF���9�� ��_V�opw����v#���L�M��S�3�+�/��|��q�.Po��g���2,����jo��@?��j�W�P��g踯�P���y:�=ua~?�z�Ao͸b��K ~oeH����'��
���-�?W	�Jb���J>��	ė�w����OE����K�{ ��*��}�v@��oN���X'_U�~�m�Q���wX��@�f���S��tyҧ�����ճQ3���y8��7SqS���������7���)���nc���ːl���En��Y*�����9)7�@�7P��JP�v���5��.�Y��5�8��.lv9�o NvȗrY�3�!P��82n�W~�B���Hb�������<��#��q	��lٰ�C��.�������#KP@� M"�?N%׈ ��@C� `����H�EH��� �*�R���� ���EzmV: �A����]p� �v����h""&i��^�+|L�.F���4Fa
!(dè�E� h�"F� F�T4�lӳ�`
Y���n�`=.�Hg0)Ro9¢�NHD��� �~ٳ���H��i��@|�Y��D( �vD�^>�")�%YEC" I����!km�"2�8 	!B8��Ш�(V"�����Q>�үH"�x�}�4� H% ɄLe� �`�5�q-��pƳ�R�4R�8(�X� 1�r\D]� �O3�C,č�H�:�^I��p�*������@� ����Za �L�D��Q LM$���4CJ`��� {���Q �X \����<ĕ�F�,D�t���jy�+?y���퀴��J� 3HQM'��(?	��MH@-ұȒ�Y�H
�缝��@�'���BX�� 6��C�3̐�)K#�>}�i�2$�J^�-`$X����� � 	&�=��Z���#�&���6�n �Ѳ1�=Ő
Ġg�L@0!	�.l�ܜ�K:��8l��� r�A �,A��C�<� Ȍ K`1�!=�!,Db$gegC�]��"d\%D��� ��G�� ��!��b��+Z �4$�q�A�C)	 `���(����;�D�N�!F�ORXRa"i]�-a
�P�L0��D�"ku2�0c4#�� #a4BN�:E�S \z�3��;��b�8v'��ق�M �P�	����9LaHo2<?ֲeĲ��L��?�?�8����wsT�;��该D�y�������y �J�av���qK�l3���&�Q<�NP�!'Gc���3Թ��')�m��(��0�@$���K֯y.#SY�Q<��/*a�8sȻ~6����WQ������Ï��]�v1���6r�࿤ �Ig!!0#,�g�>�E���m���A�+f��5��K�����U*�ӽ�B��z�On�x�o���+7?�6�P���z4csFϩ��Ώ�I���`V�9�@%p��2�K�<�"�	�Ⴣ�[�A�n����
}69<Xe3�I4y�N�}�s%�K�W=�����?/�(ʶuo��{�dH������"��	d���9L0�c�;6���_�Ff12�㦡z�B�k�y�_��\�������)�)��^��Z�]!�9VdH}�=������������R��`��;K���R���$�
���iJ�r"���$Gԉ�gh!�W��`�����-�p�/��U2��1 d�۩�3��P>S}�Wmc�^�l��'�6�����C�/��x�ޞ�z J:��p&��Wp�F����ۧ�/{��|��۠n��!3�~"��{�֬��7=ͤ+��
<�S�-�}D��%f�������ǃ�]Րz�����`�@g�_p�@w��.�`pS7[⠯�����c�Q�Q�뽓���j�<ۋX�NV�3�
f��\��OGF��)��ߚԤ���$unF8'��������qwP�����c�`S|j��kӘ����-�{�jy;�m�o�c��MD���8�H0��V�D 8�j�^��&v$G'u�<`��>Ε# �ND07Ltg�vSn���<Ouۦ�K�us���N��Dv�̨�2��q�|/>x��@�d�z����XHp__�/r��M�����ѧ���hr����AgV�-��'���`Qo{��Z��4�<P[��ԩ�jF8G�o���lu��a{��Ԡ��`(��
�R��LxA^��@|I�V	�4�Qް�ח���lu(9>�S ���d�g���`h>��ў08�&��U2�dgS����9���d��{��:=="wǼ=M��,��Q�70���?:��Q����o�,����=�%�1�'���a�	 ��s�ܖ�$����MF��d{j� ���0���3����'�G}��nd��LߊMԗ3O�S�`"�>��]�n9�9��dn���\ ,P�1�sC���PnD���f���;��Ц_�K<b�ZS�u�D�|�Wy�g&�wl���}up�+�OIj�Hh�~��"�!HN�pꖗl�M�a?���r�+����d>��SN0���\�Nf�5��B��5�!� u�ߦ�s#����K07���:��`�
v�S�}�����F������ՠ���d��^*���Hޯ����g�ڍ���]p�%x�h�8b�C���	��?Pw��!Ku29�=��P����2Ƅ�F��y�н�z+\�'�dK��p����<X; ��[�����F�d呧,�c#�7}��4p0�����:�k�l�`2P���\x���37Z� Rۏ��'��^�c��7P3��h���x�S��^y��LD � t@j<�E ��K�!"1R;�tD�%����*���1{���$������I"E(H��P|2�(�)�dK�����'B�� �Fd��*�� �,�P�#���XC�O(W\�I��"�G��Rz� ��2,M�bc���*���Z�X��q�FP }"�"@lQM"�@&0-��(���r�z$S�b�J�a�����P` !��^�����5o���'��]�y�ڮ�B~I"j-)��AU
�P~M��W�% I�B����*kə}��v���#d��&��!�ȔI"E��?&r!�%������Ά�T��缝B�4��w~����\k��Z�����#���y%=�_������u�:{�:�ҿ�I���|o~�����[<���D~e�G´�β6����\�"�S]6���Q�M%�֍���3V��]����	�L���?!(C`@d,����e%�vFQ
!�I�Je��I�J]�˖(�D����V�����2$�lG�% ����cÔEb���(c��c�x	�!���L;��x��,��Ȟ"��.޵_�,`�H�)Lǵ�F$����"��:mi��$7oi����W���| �C�w~�`-损���)�vi"2K�_��Wdq\{YV�=�J�$���# e&�|�'3��5 ����o��2!IZP��W�/\��<.�^�=?�B�$l�%}0�׼�O$�ٮ�§T��x��ۧ��oR&�4��_>~����u��c��dX���������-�����/�K~�����<���%� E�3?N�����	�i�|\�k�J�/oYSqYu��X�8�z�4Y��� p�
!˩/�8�PK�Bq�D�A���I��˻�W�>)�������R$�b�k�]�WC�ȡ�x���7S-���C�Nw��`��	L6���Q�8lʵ�{zǦ:����  L:�zGm?)���@�`1F�3�~ �����P�Yү�7-w�)o8��f�2���Q�0����s=_��a�Ic�#؆��&0v��=x�
��/��o������0��ی�Fj�$0���uS �n�7�NK��0�SU����>�C��,��@�Yfy�����P��v5k�㸻�@Y�n"���ۏ����>��-�� ��*�
n~�vժ|�p�
����j[D5��B�w�A�v�,��j=\���ݔ�����!X��%~�7�|���;��j�m����bW��@�o�8��,�U���=*�s�a6TT�U���v���W[0.�1'�4�]o�D��� ��[i�n�
����ׁ�L�@f�c9QC���1�"��u#͗ұ�(8aܯ�����+p�uv��/���5`P�G��9���U+�	�H{k/�@�p2H���.�Ҷ�w�ӹ�nW�⧷I���E�/�jCC�R��*�4��ԝ> �6�x�3D�t���)�O2�"���eU7)S��*שn��n�Y=�F[�#ʐJ����:0?���s,rC-'t�^��z�K�@�^�5�f�j���!4I�I�֯^&��}��`�RFUH�����̀��f���-�T�T�7�L�V!nڃ`<P��*/���X���*4�/��@��P35�R��Jf�qrJ�̉j|r#��P��Ig �5c^p�A�*� �@��{2��P6��B���T3���`Hj�I}C��cP�[�!/G��f�� �������ň:w������pu´�Kȷ�R'��}yO�P���A�:5��: '�����3�'\��ޤ�`�	zۄtܠ�ww� b��S�]!�����ݢM�@|��ԘI���|T����Ǡ�dG��Ȉt�N�<O��F�ھ�a�sx�:�9�7���@*��p��E�y�c�H��kZ����g|ǅ��M	��;;<8�R0L��L5��	;ٗ��Ǔ2���!	n�b�0Rԍ�J�H� '������q�`E�}� ��4Ü�n־(��!��voDoH����P��m�1+��+jB pǷ�p�Z'���ηU w�TR0����`� wl���aڛ˨����E�Rs
�e�Z2u|~���xj��Nv������%Fr;9{BO�`�����g����pb�]�He���:t��(�iD�B���F߾G���0���c�
���(��0�s���$�ڑ�R�Ȏ��D��
�	7�ر-1˲LS��4�/���ݚg���BfUH�����i���EX�=�5�;��!��GJ4�I�n�[���v�*��,�� ��v�D��'����ڋ�����'�rdJ��+�����"ܟӈe�y� ����S��a�>�����A-4�p_�s�&ɯnu<�بu���/��f)M	��;��;&5��:�:m���AR��`KgB��'7a�K�(��N�	Oħ/�{LTmQ<�T��W�~�B�8�e��S�FN����|�w��J(h{EK٬�J:�=m��lt^��I�!���ՔeB�v,�$d	�0y-�*�B2�)�P���H��5�h�@#@������h"C��	\GJkTu�z�$B9`� �}I��F�ܾl���$Xl�`�KK���r" ��HP ��[Ȱ�0��R۝��"6ʑ�.G"�-qG a�ւ�! 	C",���q���kM
>�	����AX%@�-�$��+�Rb������ ���(�,IK� �6�E+Ap2 s
HP�7�5j��Z��ʟ�r�r,�8�V�	D ��:�.F"��)D�L�hK��.~��RW�Lrr�J����Ry����J��v�J9B�t���#�=à���P+F.*��M)!Aˑ� �YR�-ZI3,	�R{U��BI���� ��d� +GJ{� �4�[����Dv)�!� ��Ga�Kk&�L� ��^��	K%a�p�1�0�f��l��Jp���� T�0�=U�~.)�:R8	@ ,D�op�����
mr�_25f;%�����l{2�b,,A��=�!�]e���R\i��?Ʉ��L�((�����(,�5"���&������r�J �3(�4�!,i�G0(�K���ʑ�# [SE>R2��-DXڮv`U�$�H ��L{@A�$RvA�zaJf	�&#��Q�=W��%I�v����6��E�	�'e�U� ���f��!r�W��A���<ll;���о�@*��b���ﭓZ�I%�$��v(�>��;`a�?D`��*�J(�F �(%\�F����$A�,$"�O>$FJ!9H�U�U`t@��4 Z}��!-i�n�2 Z9\B�m�p�b�x��a�T&������=\8,�!�S5�%��eTjO�� ��ص]�5(�Ƚ<��iu%�CXN��"P%�m!���ɛ3Ʉ 1r]���k��y'߾�ɹ�hMH���z�t���H�A��^$U�	�Z#�F�ք@�B� H�I�+eA�D'�@*Ȫ�Tf�z��'mOhew�=$
!�C2�NfH�e	4��+��	|A9)�v�A)@h�=� ��2CBA�_��J�<i R$B�5�jq3&�i�@�h�מ)ע0�ɕE9��A��!xX~�p/�WguZ� dµ����S'� ��HP"L�(���w��"W�` ~"�IyD*Q�[OX�a��	�0�{%\&M�0�>gp���:�߶%5��´]�F��UCi�� �Cp
bq|;!� �0��j7՚t�@�\��q�j�[���u�];�>�VB-f� Iy�T�� ���$HJ�P`�1XĲL��W�#4W�$-鲭�T�ٷ"jQ��l�&QX~ϒk�֘��v,�L{�C����U��]�a�����W]��&O;�^�a �V,@*�0y�U���"�̋E��[JAf!���a� R;�.�U�!���r��#��Eؼޤc�   ��;���R)\k��ahIHfP��.�!J�4�2�P\�EH�&Bғ4G�題���J��| CV�0@��1eZ�?Ε��QdAQfPW^9��	�-g$�E����$  �h�4�%���[�T�#�\�Tr3ʄpa�\e���*�p���a��XE�Aa��kwW�� l��<d	Z�D���L@�X(lU\�0y� �CaR�,��p(lQ�����P�� d^͕]K��*D�V�i0(Ë<��>�>5C5P �����*{��8�P��R ؕR�"T6t�3�6+�jmQ1��P���5-��ZņQ�*�48��%!)��E�q��W�V��*��ǋ�5N�,�R�J�L& i@p 5���9Ω�O�A#Hڮ'C��z����3�Uo��B6�|Ν��wZJHd,)	�-BP� ���
D�A��Yi�48"}4��&i���T��E&6ZЦ��@F�K`P�S2��1z>��������s0@'�=??��{� ���/�0�cW�k&�0E
C��J!����( �:�돺�H�j+ZՍ4��:�4�<RBj��֭�4���8k7I5�3z�z�hE����wǇ����4w@5����e��X�b����Gq���;P��2��D��ā0�- �((ڡ~�H ��o7%g���i�덁P�`..�OK	$�"�#�(�p�v�&і
��ӌ���-��j��(h`�N$ ����@c�54``�z�
A��t>�G���N��J��@�u�	���}$��#����>RoCՕ�jARq�xq$'�HX�V<[i\�l
��j�Kc��0�:�H:^*`i�*y�flqJ��B#҅.]�R%�(@�6��1� +�!�Z]eE�+M�bQg�8n/�RX
^d��T/$:!`1�8o7�!�lP�ef
S>��K�� @@D���@h`�"�
`I[G������+��)͡�:��Ds���a`����!G�!�������6W�%(B�풽\� `']������N�0�쌝��$�zT��۔�9P���W��v�P�+(dt�R2)R���GqP*M�~[��Rmݺ�,C'�*
��"Y�{����	N�k8bլh4:̱�(GX��k `�C`��k=�� U�HH�0v���F;�� �rף1�iGC;w�KhB��
u�&���M��M�tڠU��`Ii�ü�pz��}QE�ׅU�ئ���� �!� �������&9C�j��`	�8�~z���d�'@�"$�5�߼�B���[$9�J� �U�+/�� �5a$�U��C��=�r$�`%[U���*�~T5�G$K��*Q� ũq�Q¢A��*�SH��+�^e=Ņ�E^�iՑf [w�1K��1c�V́DDh��RN��z{��q{�T�/��� �5T��}���T;"�J�-�;���B�,U:X��>�Wޢ�T�Ѥ^��Z��Bb��ut�RE�cU���O�g�Q��߆�� ��˵Ѕ:�U�����F �=�e��Zo޼m����b(��z�ｏ����5q͋ߨg.=�-S1�F�R#*�Ӟ�iOC`���9�C��g�<�T��� �zN�Z��Ӟ�t�OyBa����7�6I�Ss����<y�sD� �hT,
�M�W,mn�0Ƃ8����. \��/��7H�$�� ���F��鸩�eU�ᐹ�!w��A�q`�G�s�F����ٹ�c=�.��b�;7W܁�CB!��"9�0���1צ��P8�	g��bVIr����]ΒR6ң0�������c]�>3�ajd*��44���s�q{�Ti� \�(��������*sX)lI(��G�5&"��Ax�7�C�<ys�f��6A�@���cwC�$7�S<[(�T���璊��81[B��=���a,R�e/�Z�l����HkO$4o�W�"��W}^T�l�n��w�t���Nh_�Г;�@@�������X�ȵ^�F �D�'��N�1��#�����PL�Cs�%��r �@u�Bt؝�YfJS���ܩT~73�}�{^o�YrJ�>�m��d��~E�z��TFsǘ��e��2���qLz9ٝtԶņ�uw���p7+����N:v�;��To7d���l�ၒX���||������def;����q�P��X�;�+�����Z$�1�#�2z�v˛;jo�Y��P�w��P��xpS(����V�ֻ4���PB<1c��n��[](Y�7��.b�Y��\��ܒ�n���&�6�H�έ>�7���Z ���XB�1�[ɇ�iMU|{����z�����7d�i`�#9ݤG@`��j��KbJR����Z�78f����=X��
i���5��΁��K�!.�S�%55�Hj�^Q���$� ��h`�:�3�Ygw/��(/�]����a�](��Kj�_6_��0�'e,�.���)B�al!ɮ��!�*K�/F��!K������.�rI��%�B��h{}6�؃�q13.h�W���^���u�q��<9xm3�{���ry9'Lm�t��b� �MB^�Eķ��8����|� #�Te��`�R��g>�V�*;lCY����y_��(rd�`!&�W�qw�Is>�þ�3M-Z
gQ7/@�O��/w�),�Hm[�>Q��ж�|��gy|����Y5j�g]�� a,��q0X����u{�X Kx  	��. 05��RN���Ē ���k����_y0�x��/.��+WBt���L��&�F�L\#'.���Ő\�z1�k�F�<��㚁M)�Qs%�k+���.�'��yC���].����#�O���.fOʃ-���K~���=?~�z��m9z1x �=T����x����i!�Q��#�V_H&���z�և=NL�@�~+Lv�1����g*qUq]v�2�+����%�Pt-Q
�C]��W]@��(�&~U�p�\�5����G]v��..S���$uC��fNp�TܹL��l}�o�Еˮm�r��\ದ�6ԫP�0�m&�"��f`A�v�*Ԋ㎆K�ŵ4Ȥ���0���k.^�c��� ��� �k$�/Tp��ښ�p�O23 v�p��(p@I=M"�1�j�"�)&W�C,B�	��(򛖐�sq���(")Cl!��Xh��I����yC
�W�;JSE|#�-j�d��>̎�S�5eJ�D �}�9���8'��_�W�׫
��� ��
 ��� �.�v#�B�D+ ��X�P�,=BE���B[�h����A�ESԁ�T�J!���@�c��Ѹk ,֝K�B*%��@�T65ivL�H5�E��+�t 5�!*��d�	�pQYj������ �Gr&&�ُ4��@M*$d;��s ʄ"�F0D�6��9�7��$w���:�m��r�څ�~& Azҿ	#��W�;w�$H��V$��I��
(�ܷu׾0��lm��ѿ�In���Qal�k*�b�ݗ\ +�:~k?hp	&��^� ��@�9EZ�k/Vy�"h�4��9����?��� ���(HnW��S�
(Y��R)���@d\���`�f!��+��J˱�K#ij��P&)H�)�AV
��ɮXq��(!T\%a�K!D��F�*B&�B��i��8��&���f/�f �u�P
�ҽ{�
��Č��!���+�J��L2�/����$[�	�;�$�h�~ 4�߄�P�3�&�`��bߴ�#(T���zk�8�
@R�1����2�uYvd�
� �8�����qln�DF���\�Y��/�׋��C�B�R���"ab�n�M�1ãX?!5�E������Z4�bT|n��_x���Ә���l���2���1�\�Z-"R&V���2p��%�C� �W�X�CQ�rc󇤯�z��'��/f&�h��S�����z�� 8����9� �1Z�k� �� �$A`��^�vS]�VCEɼG�΅��Khv���)!Y9�i~�(J��`�\����'_y'�U��E�ʴn�w���}I05.;3-HF�s��)Q��"��)���x9e3�s��j/Y��D�#�M.*d/�*_�Yq��ʪ��'SM�u�) ����*�`����E�!��(��QPW�P'#�R��jC|!����(l�����Щ�D*�d3b�&UuF�A�(SĨ�:J#+KU�0`�&���?qrIk�0I��1! ��zB$%��@% O���E�7"�v��M�`4D��Ф
�v̒�f)s�2�Q�	l� &}�;�Rh 45Mц�g��sy% �U�`F�J��m�˪��������6��d
p3�=�����X�,�Y3���wV���%��`v2�����q�U��Z,tb�����:^�5,��Hh+�%���]w�B��{�	��7Y��U�m���2^���҅R�u�b��]L�u�bX[�0��]�/�"X�Y`h����0Ѥ �W3�2^9�A@��f��_��3w����AfN���0��� 1ݸT+B� �Ad�chÝ�6�Z�|X�E�O̻���ð�U����%���� [#���-������ٱf���l$�	�]�.O�k1���eX�B�D9�A9��?:�����  �Y@ʬ�#K�r�h�aJ����@"�����(12�|KEĠ��İ�S�MK2�4����ڝΧ���2��TT9��:���`��~;m��q�;�W�J�nF�MbU�US��� �Td+:���0����i1t�\n)HbF���I6�rˎ �9��$Hp����!�DR�G�|:�s y.���~�Q[Z>qL�a<�wсqu������0V�����=�50[��|�|,gx��*0m��=�/# ih��������6��fH.���Vz)8R
�.ƽ�&�Ea�=�l�
�fh��U�����-#��%M���bPC�6H����E�|e@e@��Hu/|�l����O�80@wqUb2��s�ǽ< �X�
4.|4��� ��8���ȋ��"� ,��vOA`��$��#
i�4�ܹl��o30f$�ה�S�!s d.b�~ipX����4�Atm���ݼE���Ӑc�xSHp��\\�!���!d��@F��9U��!��hA�U�{~~��f34�}�KL��ɓ��*b��t��A� dT�dc��A*T�U�V		�:A�ѳ�E�rJ����Bf��,Z���H�W�0�D%H*�_YQ��h�uT,�G����q�u���ɽ�
+��I�-B� �	C=&����j`�_1v�kW�a0gE�m"�-����^Hq(��S��a{�dr�e�42�����B��q%A郐 �X�R��
3��
 �h��#�yg<y3H��!xLs3��\$fj,fT�H̺��?60X�F�`:e���� 睌_�������@6�Xdc�y�:�
�6O!LUqa�հ(�)
c����T2�>��
A�]�r�6L6��%[��H2�$�T�`gǰ�DY����юQ�uZǉ��b���-���n��B)�tم0��E������@d�h�H=� ��@{J���L�v����f�6��f3fSOR���"�28��c�A�injac�&�(1� �B�t�SP�Ԯ�
L���D�F	 �V���4>jY�0��[Տ�N6��� ��B�Y��CFm���Dt[�����"�jIp(С��Q�h\ ;�$M�x�"��BpR%��Tu; 5�KAT5����V���8��(��q��a4��ѓT���I�	�ߎ�l
�x�1��ňY$~�#Ac�\BJ�S�  z����"XAh $rg2u��n�:�C0�z"P�BR���\K��je6Bm�\�ƪ������Zؙ��	�;Y�-, 6���
T��}{c�p�=8������n?>D��`�$Q5
�(3\���(.K;�	m
�ɂ�fg���P� �#�%p�ڝJ��`o�JHD؁y*����h9�� �ٕ%B?����X��fh�D���r�����))4RX�ԊU5�0�8��V&�G�� j?LUX���� 
PG�?�PC�'#� �v�IeaĜ��Ɉ�m�z1r7x���.� ����#h��c$S�j�F�M�!�F#��H-��9� ��� ;�?��[Sj��X`ǲF�x�i3TW� P֔������q�,��F��Ip� �$eV�I>O}S b�?N���0,��L���m�H%���"+��u_�@Rt�Њ��d8R��HsBD[�T��Im��Y��@��P� 6��e]h�� h]ǭ�À��^�����Z{�����t�b(�i�Q�`��W�TfS&���<�f�\Z��t��d�h���M�4P�+����C-�<�F�)*�ШӮ�i����f�|]*i����ݮ.��B�J����ͬ�H��`L !:�d�}�e0��MC;�1 U4� �7~hBXw����n@
˦~�R�p�F���w�)�TԊ��eјY��h�U �-`�B1j5*���
HJ+�Z,��@;��HH:���1�b|��KIX�8�&�a,��:��3�d]G!��G�H��@�4`u�o��E��U?;�� �v��]�j�.�f��P]�M|0%s��)����2�vܹ���Խ
i�J$�0?r�mA���T�%k8rm ]��@�H����N�1;-�Ж�~z�rz�j������o, (�`��u�@���	
`�cǡ"3���Re-J��8�ejYD4"	Ad��a`h֊�qy^�$ ��T�Y��.$��T���J�mz��
��)��xƊa�Tq�8�g~%;Ң�x�U��ҡ�A�5���@�(W�z |?��oZ{r� e5�m3� BC0��^�^w/�l��hHܹs��严
��� �	hu��ԑA���i����MA��k�Z&XS�>��oor�Ȑ�L�˪���?�0�a�
�m	�x~�h
`&��`P�R�@�\~bW�}�����aփ]8�<��8��fhLU�h�J:�DV��)U�Ԉ@����@��b)�4qK���(� �T*��RD�Rmf�'@+�qP	F~��B10��f��],n��:����bi�x{S�8�3 �`��@p�u��HU3���o��H� �^
�"�۝%�q���/m���C�}I��qP� @���X�����2�Ч>�R8�@][
�!0�0k1���������6`��6bA����d�C�J�t% �eJ6�� �!;mk  e?��8��Ĩ�Vu(�:����0��+�M��%�(_� �J�� ����a#R��gQ�:ƕ ;�d@���x����r�U��P�G���R��jh}J�Gc]`��n	 �)�#�3� 6�fG�I�I�ܞ���3��!���0�]��0��&n�k�AJ�D)���HD ��i+I@��Q'�W��>Ѐ@ĢFX
�m̊�Ș<��q�`Y)/i0�ij�}�)؂�O@��/Y��m����
�q�H�D<s���l�ьe�\�&�Hu<q9#�OU �Ո �@�"Y�Pma���H�BD ��c#H�c�nN��	�T�T��dQXR`����H\�V���`H�9�Y�����1*Z�X�d	�5`R��k�=�@*^��!aI�$��!"h5je�Y�v��Z����3![9�P��"k�]U��H��l��H$��|]+z#�hw~gd9P��@Qm��躠��4C���d�V������2[1rn	
io��,�2�g.��O���Sd��PB�J�?�-dאM� �"7%���j�w���Ģb�&cIj*�#LSuѤ1m��I ssC RMQ���
 nn�јJ��T�P��T"�V~��e�Tx�-8"�0``����eB�w�'���dԉ�d��Nf���f�3ԺCS	s�9)���M/��{R:L�GGA$
�  I�P��/	fM�+��� D�xͥDa5�hPG�F"PC$(�<_|�6��E4h�)@�X���J�9�ޚ�����]�A!0M �� �e`jXV��҄������ �Q��+x��%K/yh?ۅ�ffע
�)!aʼ3_Pl�R�!5ȒA�P��D&�S�+H�Y:Y�)��h(C*�*Á�u,R�ȄA���}8l�2A �y;r�Qvo#iӶhi�I�T4�.�8�AR���PXuGǴ��Dw<�$c���!XZ&Y�E��r:�ȴ�CX�(a�F��zXܛD88�B ���AC���;�~S̺����8��Uh3S]�T� �a>" K�b�j�x�"i�k�T�z�2Jm/�ԧ�h�Y<�̎��'֒ �EX�����
���q�j,��$&�\'F��yH־V�X��.�R	@�R�(�*��"�Q'g�jy�%�D��u�Re��K~�TސF6�+qlZ���MI�hT=j�V�Qn��J���@m��"��A�c�&�N�-��I2ё�<�:�&��8�����@����Az���n�,5ņ/]�Y��7�F`�MX��H`���S$��0D� ��2kP�s�Ds��N�/�`��� �A;d��Lu�S��O'� ���3= ),d�X�&2[�'�#�BhR��W{GhS�QMdH!�(�i�/0��s�l����֠��{�e�2W��Xv7!�h��v1���P@b���A�@4�I�%a���  u�2@a�C�!Ђ��#@/�
˪XU�5'^�q	U����,L�(����C��$.����V	bLQ������И%�v��7�d�c()XMD%�ɩ���JQ��}�R�a�#�ڶ@�����JSh���V8Mo���/!]�	��s�;N����!��)�����7ּ��zm��II��Q��������R��,�~�ڂ�=SAT��VF"�d{PR��H�f�ne� �b1K���~~z9�\CP1Z���%��"����� X�Ϭ�#9����qY� �URi�(�蘪+=�V�P��WS4[amu3����h�Ty56��DK'B�)IRJ�le�l"[�G��@�%�ţ������%�vR,Eib���r<�~�q���C�:`��p��@ 2#��OL��,�� �fRu�d(y�2��N��֗ AFt�n
�K���Xd4
���� �ڮ�(2�b	jwpgv�4Ȅb8A���B�ꓯ���IK�T��z�"��
-9���d6�z��h���q��ak��繯�+�5T��Yk�0b��\�AV5�� �p`r!�iȊ.��?�u[N�p�$q`���i9�� �!��v(���Jx*$bYz6� X�0������>@�шX�7>�8�	��	�Y������^y�[t6j,2��3 �?�k!Yvv���a`ۗ�u���̯__��_$�n
������� ΀!�B�L��O�|�:ő�����_����Č��޼#�U]k=���x�@k�:Z��=�G�DV.T�~Mhb=7E�=@���Q��ν>n���s�H����)�������^F���� �DF�-J���:.��p�9sSK�)�#f%A(Rn/I��B���ēI!0��A�h��L��S������DQ}S�/h�� ?��� B�(��
�x��^an�Ј9 ��U���*Ң�X�ĂE+�"ׁV�X�	  ۾�|��~������Dv?SӪ@Y�g��n��%P@� 6��BQL�gN>s+�aJ*�������Ĉ#}Ḭ̈Ǟ���}��B�X嘈�P=��<=~|l���?zX����O�^Ͻ^�S�&��'��Yx5�y�{��ߜ,@$
!םfߝٱ��5qj�%���x�Z�R�#�T)̶h��Co��:_a*.�:�BTiF�aC�,�B�&���ˀI|�W����g33͘��dݡ28�^����$(+c�UD�SY �`�u����|���r ,͏��눀Ё���,�2��ף�D���PT#H��~�n�r�+���L�Xq��Z���a1$����s����Vl�C�s�m@D���M��n���\�=� J���5����]�EB�t�)��Ti�$f�k�W�P{E�8U���҄� ��^rH4�/�"(A�Uh�د%#�N5�;�cW��$� ���S� Z���7��DR�C2@#4��<� 7-�@��ѱa��h�8��K�v,,����:ء�x �5�%�-I{1�Fj4�L�帾L��l��_��޾~Q�V`��	�q,����`Vx�O�e��j�_�fy*/2LY���X�b�Y�JN�aG�,"镳�([z��||����P�xa�8D��|�Öc������t��O/��Ƞ �OJea�(�'OVs�cp� �� ���ij�C���Vq\�th%�Z�a��#H�I�������+ΘHY�~J 2�Օ��#BI
8�Er	H	[�nb5V�U%�.����T����,8 5�٢N^<r����2��F1@L���/���Ȁ��O��� ������"�I�X��K�8`�։=<+����V����-K:�X�@Q`j��[�|�˓	�@M��S�6�r�
�(I�b$lL$0��q>�����0�@��A:���|����3]DT^@�=�Wx) s\
"�Pma+��\R��ʁ���|#����/P8���x�~���6Q�`'G�CS�*��OuFY�P3u���T�%M��Ѥ�F0-�4͑c����Fi�4����X��T�}�f@��|/HH�����W׍ų���l�\��$��H�1���74����3�c3� ���\� l�/�_?��6st��H\&`�k�yqڝ[TF L�(�`�g�z�O��ʖ'�܄A�T˛��?����r��cgH<k��������iq LKiTFF�?7\��r���<ԉV�����J/�d�D��:��B����O�����I�X
Y�-l��SF5��
��R�PPu<)R��ARE�xe���C�B����nR&�)�41�ҎeL�U�)�T1-<��E��[�hkVl?3 �ɛ��W��R�l����#?�V�=bs8T�[0�0y���_����S�N��+|4_���/���ДS�
��]�c-2�3�fǍ��q��5��%0��}40ŌA�ٸ�EV��n�"-����f��yn��[�/��! &,�f��&�2���/q�Q�!l�������4�>{���,$?��$aB�11�FM�8ZE�� �1R�̀#iE=��8!��U���j<���I�E#e�@R�.��ES�3�R�a&��ou�i	��� (�AHCA'�<X�k�b@4X� 0b�4؛�850�,L�u*��iZ�> ���������H��n���o�E-�2*k��>�5�/E}-¦TU���;؂�F�S5��+� 8�	��1I���њ]n/.�r�$��9P0>���q�6�`��(�W{Z�]ZV�ɏۄ)@��u"���� N��p=�0�DBV����H�s� 4���T�P�����)���8ָm(� ��\��URST8�O���@��fT�)x���C�I������9N���e�������'�	�  �YZ������\�`�l$���qٹ��9DQ��@� ON1d�,�j��v0 ������uė��(� ;�t�Sbq&0�!�����3iu��p����������S�,G1��L�,T���ci�!['���p�*\@�D�s-��^.1�X����\����0��a����~BY��ZU��4E��e���̑f�����P�JC��)��F�F H�2F`#+������DF�`���(2� �j��v���d�H��fpg���[��[h ���X�`8%�B�E��C!
�ŁM���=��V�V@u_R�A��r'�j뙟����2e��~Sg0�����3k#Jnyf?3�`����U9����RmK�d#l\b�0W5XsQ�Z�=��{��ɖ���'��dw9] ��?�Yx�dSBr�PE#cX���y9�I-��PI�p����EWP�A��l�0L�6��T	B���Q�V��D�4�"`L"����&SV�i ����4ʸ >:q�Y�<�
+����# ,Gu��,�-L� ���DB�}?�� ���Ԅ�m�A�~7i8�EP)؋��3����`V"'fny���<�p���m�|�/9��,����b�����ca�4��쾋-�>j%���� ��#�fF�E]s}��̛�� Օ�V�46����}���-T*����E��6��m����˛�)sߩ�K��\`����; ��M��V�`I&� ,��P�֤�Ў9�7(A�RE�1<�k��^y�v��h�K� �鯲��W���r���?6�H4YE���̱� ���!@u��p8K��G��	�������TV=v"[�l���Y�|?%j���g>Xp�
s��aʟ��?lm����[XKST�A���ÛDY?������Kl��3�!��0����zʎ�g�i�L�Jl<(M��dw8�,H	
�K��!�e����6���~�����m�j8y�aH�(PH�{�8j�0�u1	��'9I�%	�K�jS٭۔�
f����$�qZͳV��h��	2N�ߒ�G��~>*6@�ĸ���h�k�>F,������O�����Ұ�WqƁ��u��'h]�؊`ڐ&_�;*~���S���
�o�]����Ab?+6d���#E�\��N��}IWXJ���8�o��%��d`��G�9g��R9��~~Z�]�����S̱��Z�W�"����BW�x��yŒ��f��P\��i�C����k7�$�~����U���vԑ�	8�~���.T�=���پ��گr o�����k��L�ߍ�󝂴0����Y/��v8l	Ј�	���� Ȓ�h��a�~#��������@71���ʷ�`D+$o��6��0^:m�l�L�✿���$�)N[�J��m"�`���`u 3L�����jb5�~A<���nF�s΋�9r��Ps���׼�=��A��:]���Y7[A�(�2��
���G����T�Q��C�䕻�K��AYTUe������2
����*�.|A��{�-�E���������d����h��h5�G���`rs:xf`�g��;��]�h@�*83���/ 1%�IK�۫���x��@� 2��l�H��#D �����к�ѳ@�����G�����e�>�a*ȷ0�)��@�eL�K�}�6�6-�R=�����s�';�Z5I3J>.b0ϧ����T&���ٌ�9_����m�7X��
I������&D�H0����˞u�ݲ��]��:�#�v����H����<���<*µ�u*�_��ʭ� YƋT]d�v�������<-A(�P_����-ۃj�#[�O��W>KA譪�m������
R�4P � Rs,Q�[��ʪ_S�Fn)D�µ^�MJ;��� �
��oZ/�=z*	+��	�V!��B`3;�D��:@QP��|������=O��|�y�7@�"f�+;�����7k��A����o��1�]�E�E��Z	���?��xOy��Q��>~�z�8&�.
e �/L��~{=����1�����Gi�bO���A|�wh�h��8�$-H���� ��(+P߹n$U�>�gn��d��W�W�ū>}�K�Վ
�J�-�G={��v�lgr )�������lP��o��<z���!��J	F;��dʴ���Z���W �ё��<�@�/����dF��jSI��V�H��Ь`�x��E��s�j5�q�
������9����V'iN�o_��7U0D+X�,G�R�����A����_�����ϱ����<���_���/u3OC�M��I18�kY`������Og�!H'���5	.��T=�b�\Km�q/<��S,T0�3O��������J��D�6��N����P���y��Z�ęݤ��(�1�*F�\&[D.#�5�i���iƩ�\�p���q�"�8m��&�0\�E�JJ(i%*ڒ.�h�0�f�ǭì��j	xy|���@`Y�s�Y�Y�N ��PeG��Sha���'�J����!�@ �|	���Z��[S>�}�{�:��X�$��<�)��f�[��M��$�SaV|��<W����ؠ�Y������0�z$� �X�=������5;�U ���A_��}ILr��Zx|HEך4��F�5�~,��z�:;jBu�T2����B�����**ʥT5���:'0R��K����0�̑�w&	j�1v��څM����H�!@`
5W�q����i�ñ����p�,��������� QVDr,���4|�Ї��[A�eq9���n�р���Ŵc1�:�"`2�0�b%VY[-6�t��S��ϗ��o�D
�PD,b�������gN���(kP.@*����S�u�K�u�f�k��_ԩ!y��!T�=7�S��!����Χ�Ǐc-O���=E���f/ׂ?43B�rl��D���p��H �#O��@@� �p�fK�*F�OU�D ���T7 a$�����A�%�8����8���bm���b�YE�؎ami�ش��

��R��H�Aa��`;2AP�z���ymx�qN72�>��z���fː6�9��qX��H"�ɠKO�#�Q��E�����ɿ!*3U�sß�aP��`������������x��a�*Z��OىƁI�� ��R$n�E�9�Vl;�����g�%`C)�(��W�׋�a��`�0��2�j�u{�a7�@��n.���S����� P�\Y��׫�k j�*�J���9^��+��@�P���Bѐ8=�5��ބݩ���*$Sc $�nn!�h:�]1ǘ(8dƤ���i�V���u�)C]ݷ�F��`0��7A�Տ��pj��� �p��UF�ݒ��/[��-	�Z��ٚ���dR��#��;|�Y'�X�Q_�V�a��{��k��j9�0����W���_e�]B($_l�<k���|<�n���I6ˆ���q4$������ 9��3,/�(�m�
���c9nJ����k��� 8.(��kN�?kg��D��h�������TSaNXUɪr��_[��P��|��,`) N�d�$2���5Nc�jc��P.�!�~�~��~?���)(�ǵ��]h (ض�S K{b��3mY����-F���Ö`)0t��0uV���6��0�%���/7Rem)���v�b�z7��Z���7��7p$@&rL,[�� �ܗs0iT+�<?�Ǐ��q5JdX<����G�bu���)�� ��ɓ��{6���tAa%�P�s)8B:R4ҊJGj[���.&J����� =�4A������E�(%_80�ץ0�e��� Sh(4�
4G*D��q[�lx���
��塛e?�>3,w҃X�� ������`�Q2�2<��U�5�v���i;������b��5���z��8��-As�bg����ó��V�U]����?t�*�1�I�����v{q����@���}����@,����IQ=W�r�B426�I1�*O^�s>n�����H�q��y������%	��Ѡ P�(�S+^	4R�9)%a"&����b[����4Z#0��H
� Z"�)Ѩ��:D��&d�[$s������s@�4|�4�}�}D����b<4��`�3g^�Ъ�hX �P	�9��;`&�m�{�O'���fr ۾o�y�#�����ϜXcŖ�����9���F3����5�DpCq���K�3vv>�羰�����Ҕ!��O�~�H(lP�U,� ����}��LN$�#����;�b��H/L�ݠg��(���\֪�(�V�#"
o!�#T]{��H���M�ӿ��)"��(C� �'�v�2j�b�BdSdPW�NљW�7,_y�4�������zP�U��5;ҁ���A�c�|���~M,��+���Ջ��Ųc�@�2�1�s����;�Z�}[l��+`���e�F���󸿷v��>l�a6�᳁H���^��I��A�L:n��9aJQ�枛����J4�-K�� �T4(i��~�W�(h���r��U�l�B:��!��(����(�"���4Gc��{ɵVC�Xc��U��:DQ��1͍�*���v��w�=eb,�2E��^�q���f8��T�i��9en�@�@.�!)��":ȳ[�V��*~�Rp�������O`3W]
[^^����@�E1�Ejm��'���I���LU:��?�(ו<E,�u��`�r{��%��R^ {>��c��^�M*~\�V�3YkX�"�q�B��wQ��$K�@��C�~0^��_��<)�#�t*hNW�4�L�`HE�|]^F�?�	�GB��U�@B���Q�|0��IJ�Tu��$��fci��V4������0%K�1(#�]�9��2�<��pAև/��x��̔�1������ /�__��/��B�b�ҧ�3kՒGo[������|�*T�_��oׯ�Kn8�aiZ��2%��x>>�n/`"#I��q9�����T�*��~~��v����OY� Ś�$��/� aD`��_��@\�"5���~�H"�}��mP۲7�����/�="M9��nT�Gi ��a�	l�r�FW�"iio���������mP���fc�\�;o�=聙�@�2E �[@˴�聃�T�5!�yi�g�}�~�����H��!�v��6/�g�ۏ��@[������Bg@����`����kg����*#���TE��1��`?��<��b��(��
e���1�F��21�1xR�$p�j�,�����B���>��	Uj�@�i�㴟�Q��q�\,A�%R���W�J���������W)�@p�����<� �*���mю( #ֹ�H��J��t ����1I�Q�O�Z0)y��<��v��Z�S`���gn1Ʌ�eh��5��/��~Cx���9r>�.	Ҡ�r�z���M�x:�
�=�R6�*5�bP,TˠZ�:L	�B�5Z�nAJ��X ,�����B"Z
iF�Z�R!R袌��2�S[�f�A()��R}�R#��}ə#�����|
Y�2jo��
��܏�� 9�����[u����.��N�򰛀f���@`�2�	�@Z�`�$�]
�!f�E��>�a�4�.5�_��G���H9�7���֗8��h�z
�&P%�e��OU�k(Ł���_�CG��E	��i�?b�� ���Χb�o���x>��?�U�I�4�z��t�d��Jkc�������Z0����0Gz �|^L �M�ϵ��$H@���C��.�H0��-��-e�^0A����i���iw��B	Sk�F
��^�Ҩ���h�0a8w]�S��@�HY(�l�-u�<Κ�;���!�@�1�ZE(l\&�?�5���	f����������+���Z��y`���-Y�
�ˬ��,ľs�f��?�W���'"[��Y���������R43�IZ-���|<~�fF�HN�P���s�I�[�ڪ �B�4g�&%���>#�҂��Ȕ��~	JLU	hA�=?��v�ծ�eZ/�y�&�ڌxK]EZ����Q�S���`#�L4��ˠ�⊨����qZ$;(��1�6,����H6TN���Q'�<�[��G�x�K���
`����,�f8��؇���B��!�l^�>c�a�	�G��떅L7���af��r����/�Y�@�X�T���s�CY�A���J��42���֣H7v��f�;�߭�B�d��\��������C�B2.����d�? Tv� �Ը�?Ӌ�Ԧ`���}�O@�/���B,h6C���6d
�V�4��%�`�FPm�eB��ZF�/��^�R����#�z�,"�nHB��Ԏ��G"=���*9[���o�/� A[QM�eq�l<έ�TV�u8,���(
��]���$ ����� ?�y:��˙����ׯ�5�`�dwN�=��އa`u���8����|V�Y'w�բ�y@qc�3ֽ��_�s�ȱ�"ic,��~�������|����{�܈송�d�8�9ny������Ȕ��80aV:g`O=yX߅)�݃��{�Y�LW�3 ���� �����1��x��P�mF,�7��5���A&�1��]��#h�u%�hN�8Z/�HCT�1�!@-�l$��ƭNi��B���:Ć���Ď̩�\��7L@5���i�o���@8M����{�9�����n��{1�?��=��[���8�3����2��F�~�/�(��D����s��d�PW&�Pੳ����H�@&
q&����g���eD Q\�:��l���!�n\\�/$`/ ]�$12Fe²��f!�33�%�Ʀ��FyA;�H"��HaI���AheF2��J2#%��T��V��mK8��6��y���9��� �K�5�ɫ�
��V���
����
�I�%Kr �x1t�d�� s	�b�Z��ב�j431��|\(1p�c
�����\*,Aat�ݗd�+2��/$fx=��"�e_�8&y6O�<��@d���3_(#&~��g7���Ūx1-���^7�k���ܣm\���v��phPL�G�¥�E��Y>��V��5�y���0�-�x&�i9S���A	J%���
�_��چ�$  ����Y�H&�0�pM������k�L�b� 0�@��sm�pX"����s�N�"�Fr��؜���M1�]��2U��rqa]�g����AY	0��
�̔�g���}���E�%q������.!L�"�d����|��Z��HMgy���Ǚܰ^�6:�1����~�M��ڨ �Ⱦ�����'��s7B���?���pf�.&1� ��1���֦A���4f��Ŗو�GXڎdw�گ:R!4��4���8%�`�X5��o�-�)��1�7�i���|��P'/uct��A��^��: a�B������Hp :�z3̴�4��L�}D*����"�\�$T^��几,�
ǘ���P ^�}��P)�s�������D������Aq�~ŒI��[q���X��|1 �EIvm�IL�7�Pͤ�� +>���3)tB�" |n!0 1G�@E����7�0�Nf���Z�
s�ۍ��7�D���݊����BT�)X��ʹ���h�a�%��_�CbP�kN�oȊ�@��AiFG����M ��D�5P �Ў=��M��l2l�g"�,#. ��V�Q�x}��q�/����ף���T����d���ٙ��;.
�����\� %<C���nE�|��&Η���Ki@1M�)�΄��60/G�aFR 80�7 3X~0eo��w�A�b|����#֚�n�%���F�
���h����h!�L�,E尴��Pm*}H�#�����q�&,ha��Uy0�N���!�Qe,�����8Ӆ���P�)�ЈF�6<�5��\y��k}�!������9�4 �Ġ�yJ�Y��ݵ60PA�ƙ~%&6f�Mw��$}n]�x��)��d;��L���>��IA ��ۚ��3e���9���;��d6�c�2ea�̓˺�7%�C`A��-	������NS�,�`�X.RU�G2Fa�M;�ÈAS��_��<J؞��گ�=����H��hδ��]�u��噶_O����V9>z][�f:�`�"Њ�Á1�p�n�_�L���(��y.���т�8���Ѽ�'����1uW,fU�B�6>T���l���%�j�#A�����`5��>^[/�sxɨ��e���<���~}f68�ʰ"�Ռj��Lw��iTIh4 ���LP��ʖF9�_a�ʃ���ڙ(r!�Cơ� �L��#�
|?�1-	1�:��fDк�	�@�~BA��d�3Q�$X�X��L�o�Ks&��I�vSpl���i! ��6����,'��a�`�o8;R��T~�c&�@��n),� �|XѪ0���Aw�Y?�S�1'|��a���U���N)6�}��%��X���N�"a��>B��=��5���o�)9*XY��,�
ςD�HƓ'�g8�h�j���X�\��G�0!���6mX�@�R�EF�_2��r^,��
�T�P#R��Hg
�3%s��`��5��M�K��X�E^� ��b��a7Q`zjP�*ˬ@���4S��s6`�0}�"�ߞ���2�((/��AL]�Lݑ���A�vRZ�d��ɑ �Q�h�:l��>X!m �'R���DX���_�m�0���X
r�u}΍�cc�~
řĤN�>����;P��w�̭-�*gB#`��LT���.,>Y�0�R�a������T�) ���)8�Ƀus��R�y; ��wЗ��I��H�p�}��1ڂv~Kc=�%_�`���� � ��Ð)f��w9q��o��8��k�[�N�6���ۜ�R ����Ř�gI]2�@8�/�/i����p�$�vY��_�0	�q`���7�Q)״,�68������ �X�	r��>y]�X���`W�`�A�#G��*�W�V0`�i# Z�b#Xf�:�ɤ(ߏr�zU��
Q��?|FL-�
��9��}k?��+�D�(��w��U8��� ��5]�� S;��鉖�����yE?�D�~� �h��Ě1u����)=M{^���v�y�s���Ɛ)E�N�H���|W�e��!���8в�)��}���lv�LfoU��\��Y�랏3��'�U8��ݲ��h�&�:�(@&���'X0EA����V�˽s#��[�hN��jGp4�i���JBSՠ4I�k,�bP��1i��a3�Ƈ�s�,F;�`0Y�g'/���*0  ��_sX�y�)L���Ƕ�
a%'�	���~�c��k9jbA��Yf����X�Q��1��n�J�����/	�3��JT�O���R0p��a�f��?!�{>����n/��"�o� ��FaIz�Z�ؤTX�T�8Hi����j��}�_Q�+hv(n� ��5�$�̈́t²S��/0��!CC�-�`qx�����0B!"A=�ԽjhK�#U�	P��U������5+i���2 jb�,�E.�q_�x3�F!ā���%-ȿ�L���f�dcJl�M��9V��+7�����+_bRL���n�I��^�b�3=�����M3aCU\�kN�,��|��s��`���
���D+P���e	�b�6D����{>u7� s�L8��(�a���`�6�ƍ��#.�f �`��0#t�3�ʍ2��������-2b$�T�
�A�d���m;�Ǡ�"=hY4a�i�W���h�0��2��"7(V	^K��N&V��z�z�a7�����yZ���!PlQ1��o���߉&�ҌűX��j ��C��+|A���`~��}�%Y�_
�(6k�zd��IT���.�����/XJj���[��T�Z��aG���8�Q`�q{����%�Ň%m�������2ɈaX����(�Q`C�퇁��S;*~���%L?�B�jB ���X%jCJ��abIk��cB�͚$7)?γ
�e��e����E�T;�BƤ4Q�͌�5[߁�C-SR^y6!9���i�6)�����;����,7I�XH�=@^(N]�ZL���������[|�;3f�f�������ڲ � e���M,�*�fU`�w��9jaB(�;��(���"E90R �3|P�H��8eV|�T#O/9e����� ��І�r��eD�AlY0���	�f2S5�r	CC!#+�,�*޵�L
��@9`��b���V�N!�a��e�#]&�Ф�w'��q��
im=[��|3���$y
� v�3,5�a�ãءe@�����8W�00q�ā�A�#h����u��@rF\@Q$UY�Y�3�gV�'/�*���E����S-���7�R7s�2�F�&"�Q����y<��s-6L��.���D��gIf���.r',�U���2R���"�'0�
-PdE��a�yP��"�2��+s�P�,(�8�9�U��Nc��r$��4�lLJ�N@��v����C�R�Ȟ ���-��AX?�$�W#�s-Lc���M߈�����{�  �F.����V��'�1��bs���#�����֣����A0[�LT.0�0�[ܱy�SΤ��}{��A��
�|��"��`���%sx��ƈ&�����/ ~٧f#%n�B83��?�I���b�j`�"	isw3#����0j��L�@(EA����5I4�N�1I=$� `'M�0d�G� E�PY�d-��]A։\X(�F6��\���`�z:�������q����o�K���<� � : Y+��K�:�	�_`��Ƒ�"`l��������r�T�Dy�����(�Kc�3X����S��GLc	��ڒ����\�2�$. ��쵠g��(��_�ls���|� �Ie��v͓'���W�\���U�f�DX�L�����X�"˰���,%�,�Xa"��w�1��L�X���6_���~iJ)M5#��@b��������v�G
@�(~�C U�C�p��Ag^e�B�|1��u����J�-�O�����s{C^m�@Z0� d���ț&�T8�HI�x}�}'Ͳagj2���:�N*P���r�-�<�y��'�*,8~���h<c?.G+Y�}I[L�?ӲF�������u�Ŋ���?��3�ڜ���d@��Q�"PZ2�"�Өb���e6B�"[�!�FO�&@�J�^����9B��zՋW]$�`s�_R�`�^��ʋ	���li�� �+/�?(W<�)������8) �A����xp��"����~��?DX\�~����s�Ђ�z3�c;�gD!A��?yq�õ��3BNe�}�s�\��m�4ml�ʄ��y�� �"em��G
3bH�8cډ��%&?�������+7*EBs������1�XM�RtJ!��K�v%�U� ���'�@��Dl
<Z�]:���?y��?:�QL�z���A�N UF��W=�cyPAA�D�"�>�`\�$*�Ď�{^|����iL��I���3��}U�O���P�<�˃w'pb~
TRӛ�
����I� T�m�9���<��?����nK>���GD6�kԩ�z6�uWiq{븁Tcl�:�������HX�	s�(��ߜ�Y���d*��F�p�W�������q�h<�������68�k�ܞj��x>�����V�����
�V�V������G�����xq?Ga�aE�{��[�[�/�����A���5P�:�t5��7/>u$p�v�'���k$
Py�A�n��$�25`��I�����s}��d����9���UŨ�+��m.�~m$��*�śO*��<���H2�h������%�N���C��_�e5�ҚQ�hl�ZZ20o��p����E=�t�S. R ������|;����/���3�]AP6PA�3(��7��Sv���O�{�2��1����z���[B��.m���<��Af��������sX�a���Q~������ Ἕ�k4�+��c{׿�<y4� �������=��r�QT ^XCI)$�. =ݡ��#!�"�L|�W}q䌒�-��H�¿���s�t�o2-ۢL�Z��� ��h�'o�k����`F
`�wy.�GH�C�3�������e_< C��6D�r�K�1�N81�_�[��	��q�p�@0��lp>^��\�m-��>u�v�3qc���N��^y��v�9�5k;��o�c��:��3Iv&� )s~~<�oS5�� �^��s#��PV�ʻ~�Oi(�*�@`�Z�)��4Y��1���Z�y~�;�\���+���P{UT�u�ElP�T.@ ���y�{gGʉL9:���ş�(G�ޠ� ��|�㛃by����Q���>֖O��|C}�R�W��\��T�t��[b� �S#�]h �����/�5Z ��8�Zب��N����!g��&�݌& �GD?���}�u��l.u��1�w\�� \��s_�iٝ�	����Б�� ��=�C�x��2��u枏�Z��߅�s�
K
��w����'�M8\\��.T {��}���b�9K��2�ah�A��0�/I h�� gx� [�iϨ��#1G�(N�����wX:-M ɶ��)�3�0 ?,A"����}��$ ��[bA ��� c ��O���oq�t��2W  X����:hG���@,�����),.IT�)���'w}�Ee���(��s_BUD��3��:�Q�D-�D�pƊ���U�ۍ
6�`O���M����.���aw��r�� �~�enQTv%��gi��@��Hj��P�E�� 6>0�`�8�80H,T.@A܅	�E�1��,���y�N��8x�*h���4I�:� '�s�_�X��[f�r[ܗ���jT	C�zv �����ɿ��=���
��4OS��jaQ9���;��� ��QY����"Ai3ZiOW5뛙��i$c�f����4s�r،C:�ԁ�"���3��Q\��զ�������(&�,��m1Wp\P� �E����ܣp*��\X�@C4f�\ �K�c_�RRZ5�u'��Fݢ�g	p�-С��`DZ2c��6	;I@y�|���0b(�(:@g^<t�1�B�_�� �A@�=������/X��=���!WG}��(���f�ЁH�䁍 3fi���n
W��^�8�d�`�*.`�V�ܷ�U3��F�B�3��̉$<EL��1�@��i=���2�ԉ� ���N��P.��,��3��L%~^E��u�1�8N�9�@0x�@��p4���'�"i��8�J����i�]��H��D�y���N�h{ �*�V)0�YP�f,V�em Kb�r����y����Kg���eh?yL�~��������~lw����Bi�f����` X�� ��z���e�����T�ݷ�P39� �B��H&@�$v?�������7�ø\�b�L�:[6}L����4K�0���pֈJ���P��}`EdӘ��Fe0��D�x9�e|ã�� %���tvPEbJ�iP�����S'c{������UW_��/� �_�e�|U�I�Ξk���
  �ľw�0t�,a)��������:����8 *��w�pDA�S��,� \��%)G8+]X^���e���Y �(��f��6���l�ַ���-R&����1 ��?����k��p@�Xv�c���plRw���F>΅f�8 ��3�	\�z���I
�6TrP�H��$�[A�o���0 ���dK�@!�3�v(E'EUy0���9,��\+r9��f�Ea�� � >�w���/�I�[(���z�n�D���MB�WF�_�u�@0� e�`Yr��)��$� Rg����01�M�3������	�}~d66_`P
�t+��K�b�ўky���8��0��TO���<�q@�����*H�����i4VfG���� �n��! �����P0��YM�R��zbX�`F#��� P�5��a�K'Z'(�v0Ua-Z��e�.BcP��@B�5�3M2!���s�n	��6<�^yp����׈��<���`���e;L���:N"�	��Xn�eA,��(�~�V�CP�*$
@����(�FW�Ư��nH1n&���`k�����$��h.�x6ӬP� ` Kh�ޘFeR�:+&��H�3�!� 09�ƕD@��
*8 v2��O�����/4��Iq�cV��R�A@fYb�'�v(�������lX& ��8/[#` �\{�*�`�gI �P_mPh\U|��Y,�������-�;�`�H4��0k06O�θ0X��-��P�ԋ��ج/�> L��Y�����U�Y�E�O�~,P�Q���|�G�̐e�߿��b�PF��5���|g{�X��"�Xm������l1���Fl���:��a \  Y� ?��z��@�` ܘ�������'L-ë	��Q��J�is���$5d2X�q��/`YyJ���:���`��Z���g,
 ��n����*8����yͅJ�l�1}v��0o��)��UP�y�y�'�(��ɵ"�����|������
@5�aྒ����o��nVM66�M���~�qn��0d������<t�I�d�9��o���	5g�)텚�k�z�8�@���JQ�_?�r �<&-qD�MB�F��	��(`g����9  �F1�k�����ò3��!|�j��h2�|	bh�fPlQH1�}�`��1����
�;�\=��g5�	��[���M`�%�
�К��/ؐ4!��])*�B�NN���wG�<��xŨ ��gm(�F`�R�o�}PY�@��簿\GU�g�zr���#�!A� ������u��Rd�j��&PNPE��w��4%���  eQ�o����(��eob�f-	�ԑ�2_t
1Cp /੮ .��P(P��~��T�� `d���Id����@Y3�J���NpB�W Rkq���+��B	`�\	����6QI9�DRYm���`q��/A@j���j����8�����aE{���X������y��<9�qV�X	���<Y����e)b�7�L����T^�);L9N�"�d����$�9,1@6�֪�PQ�i��6�Pơ��s;�!4怸���T� eN̲���:x' -ː̄a�Y�h��p�h��7H���� D���[�����gX�=\���ȋ�-Dݣy�����EcN��)~?7�G�Ta�&%�����>�ᶅA�c�5յ��������Jqs�"7���6>6�ϒ��z�qT؅�3Y*�l�aE���[�}+��9��<VaH�ȏ���8f0��|��d.�&��ѐ�Ɂ�1W��T^�X����1ʏ �4Lno��� O���B��B��e(� �L�����@��I+��P�s��l��"�����E#,����(��(�Br�P�~"��z-��.!;�6v0� �'�����(;�
�f93�l�!/P��T-�"��\�n���Q�O��	�*n?o��oJ��c���kL�K{/��`և��2GH �<�"@H���P�b��"4B�cDʈ�@�#�t��h�L���%� F�sl����"b8��{�XR��L��N,�	�ԉ�V��H�!d�5l�Ǔ$C)�Ť
e.��x��$�#\$y`P�ek�~��K`sߥp�Ā�`=��6�%/%J��Ι��}IO^ a76��'>��@<�@Lx�
�&򓻜��\�Mć�ܙ^Rs�@P��V>��2C�t��h�|4o���4���A�Rd�3p:������Q�E"clPv)s��fIs�*������H�t5z1&�r^!�����gd��eO6  ������	��٦f�Q-�ĭ��Zؖ� ��JGX�Gx�O���a�P�����r�9��RR����%�r�|���7֨�����T��O�,V��)�)���'��M> &��)���`>��"��h9E�d��"@v�U	`��������1��~���	Шz< 7�2 ���qC%|)���,{`��%���  �Ps�e� ��3���� [�rY��=�����,�&^��<��q�h��6f�H9ɴ¤��簻}`Tl����6�g��O�7v0ʟ����b�@��ᩧ}�<	��4(_o��3n�(5�D(��˨�����Md�G �E��.���\��1�CQ�H%��J&�.@c lf��?�e	4����a��~ �Q8k�@���1�-���-�{�3TO��� �|_P��.� 
�	 ��I%JX Y�丸y:=Qq��2��"���AV"��� ���u�Ee`�h�_1��l`4��1�
�.p���ց�����ܗ�J9��ZگkB�n�9�T�����T1�;�$���<���
Ӏ�r[��q�������ʂYDF"1q�$&�� ��dZB[��O�F.(�b�A��v�x��3Q��=a���PP<4����o��#c{.�M����<�_ �am�L���
&̗��J�Xɀ�PF�k�����,��:IJ�+U�\����e���c?�Dۓ�v�s-��@����wn�F#`����	�yn8�ڧNP+l>Y�&=΄c���ϙd��Ҁ p��A̐ l�!\�D��r?,&3��cb�ap�(��-K˳q� C��?*�s��>B�9���f�f�j�~�a��S` @���'L�1bt��
X�9��b���pA�ym>�ɊA�P5���G� b���"����Vv9(#���R�H��u��l
qK��Z�;���@;�ˎ��b��D��}1�XX���}{�QE6�p�9Ӧ֊�)
r���kI0�����Ȉ$�6]W7 �Y��V�%�p=�@.01 ���(b�؆��̞��2&�c`� ����h��\�����䄅͜6H��5eq_So'u�-�7���Ih�6�mWgH�[�v�N��=Ce�y�6��|�~gQ̩l�O;�n/1����d
Wj�x7k�s+Z�"�8��VsO4��2\w��B���YIc.�ؚAb?�kq��,��r!��Q0
�~����$(&ϔ
���C0( ʎ�{�ޗ���re:�a�|�810��X�ɀ�ܗS*IF<גNV��|�AIaE�� �)
M"L�EzݪO)g
@SxwC��"���iw}�	D?V

���戰�R7��.�.��Γ3��H  8D�l���n��Am �������� �/<m=��4)igB@28�f�eB�ƨ�y��d���C�	{�'���ԁ�ʼ�@�4�8�+B���le�-��GY@I2KV2�>ߐ/'$�@�`JB�9wNa����{�y�EX`F��9��"�!�M~)e����ڤ�U�^���g����y��/��\T��8�i�L,@��Q�J�u�̃�+�'���\N4��W0�#�eQ��?TYs~e�/� �?X3�2�x2M��\��̉C!�Z>Ca�ZaLL JmB��9�%�v�/�;��w��A�0��0�n{̀l Pd�@�|�r`SVʻ!eK��7�C��YV�a�j;����.^�T��)�qڋ�o�\Kڥ\\(\��}a��)nG&���URd��T��&!p��L��g{\��PlOAp�SO��]�-5���=x�jBU���:*��)	��ȼ0Ï� �� �s_��������nBE���Qk����H�"3eR����Pӏ#�3A�`&g��G�)��e7��ȅQi>4�ܧ1e�J�tg��b؁�8Gh+��a����ix�E�:�}�.��es_�� ����^�|ևu^�V���uPSB��d�F���}ӂ(p-Ip�b'�����y�:�:��Iʬ! � ��.1���������� l>V�W��EL2�L�ar�`�=Y
J� &��L3��@3)Y�p�7Iޘ��V2�ђ���$J��H�18 X����D��F�X��E [Z�l�r\%�[|��hQ�ʋ�;����ܧ2R5���h�`����m�R���v���}I��mhD�>yڃ�[���A��{�����v�'Oʆ��
2���Jv((����G%��C�����oD�1<�h����Z�e@���TR���T����l���9nb���ְ9��5�}��vۡ����V�;�8f+�`*Ϲ�F{�e[��ڰ���$�`�W��s�Gf��*nCP�@V�fH�fpґ���3-�����g��sY���q�J�ڿʓ.I��Y� �����V?[�b�
�!`�_��p� \*�A��wԆ��_���_	l��#8���\7�֧x�������j� T�X���� (C o�@���G�b9�+���R��J�Z����O|���;��deD[�b���ݪ�.��o�r���kl�s���d��2PE\��PFк�Bw��'O�h�ɞ]3����`V�L��ʡ�1B���u@���~O�`��v�i/��p 5�W��b�6& �wņYj/��XX�@�s�����I�֮�/��y=�3�Q`�@�CGl$�qK+��!wi½�ޗ�,��a�I�(K�R}U��(�0��l�Ȱ9U���e�A�s*��,�'�(��2�,�^��h�`�K�'
��⾋���T4������Ob8�	� 6>�Fà�~�4�8O8�i��Eel\P�gV� ��u9����r=�%ݚ�T u�a��u�rU
�2���d-�jP"��\�U`*|�?t4c��.����Yw>^�+����p�}�{>N������_��g�uG��$�XW��`1�A� �z( ���X�3���7>�H�HɌ�)�	d5��$͊9�.@*�G1�5�E�|Qd���NX�e�`��<s�`�-Y�j~ܕJ�i��*�<S�##"������'�������z��C�P��(��O�}�[aO%�Y���a��]J��g5���H�IV���T�pQ���J�k�3ϵl>{)af!�G���~��J
�0�((ՆB1�Ia 3��-5������ܷY�6�x���P/Wdګ��AlX�14Ac��,��>2yB��Md��[�>��FX���XH�}�M>�3���s�.�ɬx*]�����qD#n�˯���.�*U�*flbvǻA���0F�Sg������(�X4jȴ^�˻��N���h1���c��#��EmL��b���$��`#G�&*a(T8�;�q4�\Pu1B0G�(T E�f_���=���|�$��K��w7?~̑${ŗ��l�}��f�M�>�J7�,VU/��Ebe��k��Բ� ��"/�pX�:�9́f�pD�'7Jz������[�k��8�6����(��0Dр��#Cܿ؂D+��D%�g�!�+��ZƠ���Z�:3�  a����!��h��hۮR��"],��iU�3�M֠��> T)'��4�6����p�	�C����Sk#���XD7��ڪ��%�k)�*{%`�4�.#;��.2�&X�8q����(JB�P��o��ʙ"�ZM`�t�BcI����`�	&��R�ԫ�h���9�@3qa M��q4&W�ځ)0ȫķfX$�A��]90�� [�2�0�2�)߯6����hϵ�)i:����/�D� �a��j��l>�A�w<f��)v�<&�2���+��Q�2.UH�[��.��:r��=�MMQ)�z5���Oݭ}����o�8=V��G�(�1��H�`�� ���Q�"��/���a�&8*:b $�}����!3D@�4��a���F��j�p�����7M����[�Ֆcg�(�8f$�`f|��
��/7v%bW�@�Ր�D �WPlC�,}i�L��]|c�.�ڝ�㢤r���9�����O�uJ�q�J>�3�a��ݯl�����Ӻ]�a��D �6��  ^�
PZ!�6F�<@�|2�ݪ��j��qDR�hv_k+Ւ)`,�㫶Q(n�)�%��D�ΐ9:�Sj^��%ANq����+�䀧!�iy�*{�sCD �|��IsR�)�k�	�>Y!
�sÍ뙋�C������*��XTJ����w�P(t����?8H�Dan�<�{n�	�����f$���F�K��S��Q�g �h�<s��8����b��,�=�R0>0*C�0|���n�ϧe)C A���|X�^�����E��Nzځ���Pl�O�r�y�62 �g�����X\�� � �:~�Lg1�xL���tr"�hd/ ��p#a���P�L�޷Ǐc}�{"����P&z��\�ni�ߐ����Hu��x����qe`T���έvCѢ����jԆU����c���yq?���? �~�Bډ��b��:T\ݱ��c�wވw�qm��I�.5�7�]ҘT���s�Α�V��
���9lWP%g�G&{�� m�%�w��:n{*"�<r$�+�6�N"�VuSZ�i?���
�lȲQ��Y"��Xq̩_�[�\��N�y.��H�.ԁ�?J�l{�=��?���Mޤ���Tk0� -�I�����nr��P@|�O}6�²&�i�`%��F�����,����A��(,~��sng&_��&��н���IS�qopϱ `��0(�ޣ�XǭQ������|�ƺdC�w{r�N��;Z'����5�7"@���r<��'�>�8�L<x�<0�Ƥ�H�R�n3O����h)��x�<��*�J�ɍ�D�.*���6���:r�~��ά�.Xqu����-	W��m�oN��g��ð�.GO^�΅&��J��plz�&�����hf�^��2#�nzQUy�mns#H�9��q��:�FB��1��a�a��М�ƍ��h��:n�r�[���w�7Ȍ�味�V�03.*g.�a$؈T��}�~��U2��_�u��J�����s��P!���s��S�]a���<tm"�T�e���e��TnY'��g �Y���t�K���E@Z��e�#�uL����cрBȺ.���7ݺ�� �?���l�Y���⠠�J�#z>-�d�&�@��JBN��`G@��}�b�ۍ�7Py��c
�i�&k�5j�n� ,%�K8��YY�) �G*�_���CT�w�M�?[����s_�"o�x]gz��e(M8���u���2l�٨ �����QSm�I��e@��Yќd�ߛ3+Hcd���X�sdi�ߏ1
+�v��VjĥUB��HJVPp�Pf����97����'�a�C�0P�GArp4�������T�0p.��t����@~F"���ʥ{��L"��O`~����SR��^�8'Ċ&IR|����lTY�/u�t(=�-������5��C��W�o���~pU��F	��b��,��y�@��(c��Vi�E���;�R�D!$�ϕ�j�2�I�$A&�0�[,s��_t,�k�\b�F/�f0���,�����+2��R)��#e�sf��xY (�H�E����F�DI>��\%��s��7p3P�V�zm5�
*�������C��i�V��{�o�5�zՕ�o�����F�H��)g��Y�XC܂�"c�l�U��@B����1�{�-@��Aa�K�vX!�#�
i+�Kb��O$�/���1��$�K��k�v��a��F-;��:!k�Q��k�����TЌdkQ�����JQ��+�_Ɂu�B��ί��9
��@5qh^�.��`X&H��>���r�ٖ!}�/�ԝQ�/�E��y�=)��p%|�&�E)?��#%ۄ\����T��2m�1T8 X�
�0���'zi�j����B&G�a�g8�&�� �%��d1�����x4��GZ�kF�5,��Q5�l_V�j�xM��� �4`��Fc_�Ĳ�P�A��i+���f�x^����\�H¦��E{�oXJiS~���ga�8ն�����BVH@ ĸ�mq����כ��!�+s�b�G��k��^�`Vʹ�0����$ZP!EI��vƃ��B�%����!#B��p��!���5a`� ÍWss]V(V~�E�q�I`YC��@�/���4=��I%0 _%��~7���*UX��߇9��j��������O�mu��HҮ�^f�e�H��'kc�S��T��&��
��х�" �#�,�3CX�י�*Q9O�hV0$�@ř��2"�"�d*���w\Uh=���,�Hxȼ�5uJ*F�a��J�:��1
h�^Hv��d���f�Aϱ��"-&��K����=`k#;���`n�eQ�o�"�2���K�-jؕ�2�]�yyY!|i�C`e�7^Swk�%�<�;����x-bI�DCx�}}��T�����$VĿ��.� �'E�0YVg� [LBh4TH���/� 3��Q~�_/�J���I����dcn)�7fZ�-ذ��hu����Q�k��9�V�
�)�,̢K'$����( ��y����`�X�*ū}�oc�Y(���Q-���g����L*��.�!���
��cx�a���`ţj�15�kQUA	��QJ��ҁ�n8 &9ٍ�I�Y�8���z��@��X�h4��['�z��oʪ��<��luӂt�P�\����v���D�Y�
��#ya���Ft�Ȥ��#L�,�f���i�լ�} ����T��)��[���ś�\�e:�)O;랗��q{
��5?确K�^UDs�g��$lŪ��	ZQ��W�;$�ォN
<��A�P%�6��`��H�����%`kJ4$��B�<?#��t��P���`�!� t�+ʙ�#�b�3����Mf�W4�7�@�3�����4�������x��ީ�B��ʋr���S�{�O����=//��$��Ƃ�lPg�ᤵq?�g�Z�VS�[*��O:.r
 ���(`��3��̿�E C+i`1[I#{%F�aN)K���f��W��6�<	#%'���~��W��sÑ8ޅ�勹gV����"��J��^ ӷm--́�� ��,� $#*;( ���J?���q�A�^:�]�$�?�s���^r6_yK��?ɠT�C��Yr^�����������W4I_7������2ȿO3�����ejRC��AE���4���ۍ|T
�3����lZb�1qAmr�@���F-��G�K "njG^�_։x�E |�^��z �A�p���q4C�pU�n�$��m�g�P�w�� �9����V�VoOs��Vx����ZY����� Tr����0��qf�р�&�I�d�{V�:� ��Tr�&
NZ��:��#�$�M�ti��$$5����P?o�������ke�i?��N|��Rt�-�6��B��$�kmB����(�ʐJ`���Ϋ}�E�@Z�^������j�������x�5��D� ����^��)�ݪ�D�=�c�9L���T[���ϧ�-�tLQ~�0F$eh"ʉQ����K1�X��dBh4Ev�fh��q6(��t��z
�Z��a4ګY\#11� `}�,�m1�b��/�0Q-?! �`�$�{Ɂȿ��|��v�����s5�3O�.��L)a��n��z��~�)�R���[`}�Ղ�v-ȪDR7e#i�1�L[�MGbT��~��s -3����h@��F�A�ZC�ZN�/��`[r8��hV��_D��6��^ɪW`�u��Sfh@��j{�lKK���w-�j����U��6��F?���\��[s�'��1�������x��P�rGY�^�(Qc.MJL{2A�l+�+� ���0q��Z�G�B�4"3������y�턡*�TXؚ��} 	]��(������j��� ���k
���.��&�n%�k�T����mu�f8+3����(�?���0�Q>Ȩv߬�~+�y�~c�2gJ志�g���>�1�����o�i0H!��¡DZ�H  ��{�&�Юڊ��P��x�\@g� F��b�yd4Az2Wu/�0��Ef�C%.-FqX�-r��B�=�� �.��hƵ��Y�#:@��MX^�M,��^����8����� ������Y����|T�<׵",�)�������T�w[v�'w
C��H��l�4�\�D l!�*Ŗ�!4Ճ@%b��'a��$jgr��Sj�B���&��X��K��2~XBH�\��b����da˂oDC0:��2�!��g����B%�I� ��1����P��G�i���KK�j��+����*y����=Рܔ�P6��#�Y�ٹ6��"X)�
YA��2��+����a�_^b��2��4 {L���b�˶&h�g�,(�X�AjN#��yqIGy^d����ۍ�vuY�����	Y7��6	��N��$��e���W��^X�s�.T����\}�`5����kbU0��k~΃Y�aFA���rT͔o��/�2n�+� �D�z'�bC8p�V
���>�(0YG;5�� �(4A ��tL߆Z�B՟j�
����.e�Y?mT}D��W�ࣩ~�4�9l^�mz?y,_�sû~���e�w�ʌU,��Ͷ4��逸�������|^X�'�^*/���y�~Zl`P�V�&����!�陭9�G�l�^Rr�2������}`��1#�F>�`[?1KPn}���J�\��C�{M�51����m����O��|H�\���?�âJ��n#���\˖�\>�4�$���mz�v_�n�%����������I ܘc�Օ�����\����"��l�@5-g�k�B0�	�.����UX�	��T����E�>� m���aº����y�oF���k�ר���8r���V8Q���a�o�Y	����jg��ZTM΢��}�6�5f a��(6?�Cb�SE����g,F�~c5ǓI�7f14Nw$�H�ljl���} �a@�v�0�v≂@�]䱩������k����w-M�w�g���N���Z�fCPA3{.�����&H��;ٸ�2'���ƘL��w�SI2 �&32=�lf(2�� Q�y����6�I�*��a��bR"Y@�~���I�6y��y�m�9�m�ֆ1��m�.��=�����m��x�P��%k`����w-��v��?�q�l�x�����G4/���vzms���6@d�1I\�Pd9B�,�2S�f3���#U:l~�D��BR�)b@I°��^9)HK��"(�Ĩ+�Bì�!���R���dvϭ��W` G� ��?���2z��Y`s�2>l�����l�E��V�ҕq>�ŵ9��߷oE�j�1>�7���K>��)Nd	��2�3���Ц� CF̊�����|��7a�6�\���z��fG%�~pX�/�[�X!�K���6#0H����.ީ74p��0���ʠ�F�z�#}Q��w�c�R	���\G�&~��⹯��{�%�T�j ��� a�^'����� ��&@P��hVCL{r&z���J
3!얆yaW6�)��Ҩ��'�$b<��Vr�� �k
�j�?�
����8�A�#+#�4O��D��9O)��0��UГ��yy��VY�֛����z �{�糮��>��aw0)QPS>����ؕ:��f(d���] ��UԄHh�K��P���R��<,u� IP���j^а|؎h�x��z	֐��> �`��Q���\H��j=��y���@�oz�^f�7��E�}����	b��`:y�� 0�;-��~
b>��������JM� ry�#�eOH9���fB��z����ۭ�I�F,(6dh~2L�q�����
`���е�-lx�t.��S� O7���o�����S���|8S���K�|���/��;����O��J�{��A��G��B�,�X?��*�#EE׹A�.�@�����v�.�z20w\�4f^�}��AX���*Oz�?��0�y�F@ҁƵ�$��wi�*��� T�5a�x`ԕ��@5Q3�B%~�m`��S]A�ꁶ_	�f ;>��H"m7�IK��O�	|mD�D�m�y�I��ۗ9�B���X c�F�3x^";4s�a�ht���_�l%�� `�N��mV�����O�n��ᒱ���W*�+6:���_v?�'	X�۱`,�X�b��@�����ь���춑0jƠ�3�� �|4/1{N�k\���	��>d0%��CgtJ�u� �6I8l!(�DK�@�)`� �̠2	sD� ��Q�3w*J$�l���tH�0I�����`��?�bpۏ���A3��WIتj�U[�v 5lo�!@�63֠JYX77�;��<��}o���d-�oH��ѡ6� ��� C6�8��r���f"0�龥]��0�ƌ|�W�[᪶dA�r2�.6�X�i�� �!������A�Ú�(S)���P��z�X�� CVo!�IFy�q��u�r<����i�4�&�갤��B�� \&%��s�4�Š���/z1/SM�!�;��
b̓�\��D��+D+!h$5��A�x3VKÀj��Vm
���.�L��h��N�<H�ŌK�a��:�UF��hvf<���6(t��d�pP���!̟K/C�,V�W4i!�m6��>ma�;�[�@VS,��!.PPr�1Ȏ#��� ��QN�?ॠ P�<���f�HoD�[�z� �tyd
�t�P|�A���� lr�>��"�ؠ¸Cy��
q�k1�j*A`7���B�V��F���h���d.A����9�Z�� ����Gޫձ٠� 6��)��[���i�$@��	hk��m�c����~�W��l��]�V���za��h�
`��ߌ�Q�|�!4g��7��H��<v��4�k�}�dMځ��Nƌ�S~��X%d>��A��X��6���՗bƌN�h;YD4}%��F�M_"N�LF�K��C�wb����@����H�
���IĦ<�r$5>��������"��U*���~�b��70��.�HHXpjN�B�0��"+�a���*�n�R��������uzo��P�~�D.x�D��(}�{8���)Ia?�3S�f5�]��N�9ћ~���]A՞BC��U�s�����Ƞ���}�~��Y���y	��5%E�L���P�\G�
I�:����١򕂰�Y��b�X�Y��Ê2���)�0�e �(x}��!='U
�c=6�LV���;)�rgi�"X���0[Q�� 2�m�����P8����K��@4�ک���N�Qa� v �(��R�q���n�?�:i�������)�ݺÎm���^ �b�G���f���T�eh2��AN�ͳN(���C;��Q�S��0�O�r'sA�s*��=4����l�Ý�1�,�޼5���y��9����J�x*�0Ol���V@v�>�a϶�f� ę'l����I͟�</����}�F� �\�>@T�X�7݅A�/(�����O�-2�a��Lc�U��$��`��1�F��}���<fm'8K��>ՁH# �)�s�1!M�% �/
�L�"xd��T%ە�<����!ȥQ�$�dG�/{� W2���|�G�Sx���̈�1�mR�Ԭ3��FC�&�?4�P�=ӌ�T9�@v,��k!�f�b ��2Q2E�z��w9?r�k��*B *-t"	��=��^z�^�qb��-֩�`���<p�HHI�g�r&Cڨc1t�x�$�O�˩DB��6+|/8%�|�R^��o6 d3z��@u"�$�:�F�z�(Z���V|S8'
��#0�8݌�����2�
3��f"�0P�;3�	��[�y.�f�si�Mkh�������2<�G+��¬��RE�N�k�@�*|�]qt�<ԐZHc�X�����G�L yđ�%��3�ؤ��.h�<�!�v���{�c> l��b��D�;(�B,+{a /�?�/Xׅh�;�<
�\�6�4����L���0'���􉏩��9�>���h/:�lk_KF��v(�������z��D C��A�m��#m)ٶ�Q��,Yj�b�纉S�! �)# �k�&r�GHcߪf��:����{.� L�#a���v�!�~>wz�!���LC/G���o��fL���K�ʒB۝@H���<sp��s�����Y`vo8���7*��X�{/�9%�`�πh\�a�T�ŎW�(I{>@��^O�O2 m��Bv౑@C��	|$P��ӻy%g�J�y�A�gH��4 ��Sc�Fu�;��h3F��]9T��.��=6�Z�p`޵�mO�ω��I�5K#8��ɢ�&q����a����	�6�� ��L�E;����'��F�����N�	������F�V���ü���ȟ`;�����I��lf���
 Hu1$�����0 ���x��Q+{��?w6���K����s:�h���{#	D��"� 	l	�<���9�z�H�W�N�� _����ԀgF�%������ ��sQ"�Pb0@�A�Q�R !��� �.E��Y�'�l)�q4E&9i'n)�)M�6a���-�� �(���J���_dN�m������SD����RvPD��HW%��u'vLd����x�����_�P�Q�|����G�l3Y�c�'g��#蠺#@ȥ;i����V��������Y���Oa�3 0�tg�'��I󐂍��& !V��lG)P"BY₲����������������+�~{�ńc@����T�1�MP�;�R�1$�w��ǭ����4u�1��;�� _�'��:�Ҵ�� &b�L� ���싓�+Vf]�e�0G�	F���x9{���I�担)�ʇI���.{fW���-+d��X�w���~��A�J8�'��Q�fT�	%C@5B�l�lM��e"U��
��gl�Bp1X V���j���A�U��<(uH�*����
��W�w~e���^��a������C5�<VJ H�!�A�$�bQd���s��!L�@�Iع4��� �ҩN�"��&����(��Ӵ⩐�N$2�"��f��� ��,�+c*� ����9�/9���_y �.f;=�	�("Hw�m�g�Cq��cY�C�08�-��꾖@O�Rҹn� �;O5 R�"���m�6lXgø����x�S����y�+�� ��S��q;-��/۷�O��pxd�r� I�l�Mf�����x�t&�S�bR� N��" ��� �y-��@>,����'�""6B�3"��B��=�:�0�@�i
G���1!���7')���������69�˙� Ǟʥ�g� ��x�d{HPc`f����J�v��/���[�\E� ��(W\y�h�/(.���isv���-����!��Y�b�X$q�����4�.��쇅�~�$�a/B��L��i��j��b4u�����XT���f�*D;U����`7�Zu���4Ɛ��e]�^�.� �0G I��Jp(<Hw[\y��J���:Mڌ��
`��O��;q$?���� ����6U�^DS��6) �ع).JeH���?��[�8��S�����C��DȦ T��pjI5AR;1b}L�0��cT��Df���;�w_  �(ĝ��ڦ4�(��W�4��j?��P(�R\Ud� �m������:'�����w�  �F��p�Pql�������#����O�� �W�ϰ@�߹��_T�H��Y;��E�� 8~-��֚�hXL�X]�n�rj��� ���C�}�N�~bv�w{,�?j?ba�T&�j�e ٹ���ޥ���n��܁�hy�*  ,����(�(��J:kܾ�D���v��c&����E�q�J�1d��r�eS���x�^�F�+�p3��Лm��!���҄�dd�.A�\� .4M:MbTC'b��� @ �jk���LZڑ�����]�߽�`�'w�~_�I���9$g�P �hڪDP��:[��{�"1��`V�� ��uBȡs�w�n h��ݪ<7,"��tߥ#���@	��?�Eǐ3��ߵL��b�Gdx��>Y����߻�8 DoQP��t�}Si�ʠՒ�� ĸJή�_������\ �Uǹ����5_� G����u"0U�n ���Ԍ�!l��;��!�ؖ�0����|]�/܈�� X�f���D��N�a �fl���TYP�0d�zr����\���T�[!��J��K�����<{Q��ZnWfP"��VR0��q�)Y4��芀�HR֗��/_$kI!6z��8�Ro�#��@$G����B����l�!��K��`~8#
�U���L���c6�+s��D����$N�i���J�(���TU	���[?dRK�
%A'��&#�����McKB&�Wu�jt�FqP�V����%ǀ���3C���o��Y?4/껐�E7+u�Z��j8�T��\b��<14�����,r�V8,|���X8bJiG�2��Єd�-h�d@�%l�[�f��Ӡ�$c���H�[W�0$n�m�Ï?L���@����$�C�d!�z�W
 q�:'�a������/%fQ"�#	CFEC�~�u.�M�`�����/��L@�6�$������:����b
4�¿B��J��K�	��1���k�?߻T�N}�"j���+������@�����W�e�~R92��e�!y[R��6R	�G�������!���A0Ď0qZa ��'O6K���9PQ��Ɋ�)�"`��ݪ�p<�S:��������O�XR�)�u<��#�Z�v�S�/�p4}�e� �v�tg�3��O$j��|p�ĐY���Ѥ,��OX�^���\=��-�|�GM�Ł���	� I�+[��\T��+��3��Cs��js4���j�����'Fa;�V�"J�D�
�2(��R�e���
#���� G��K�w����Z@�b�ge*L���M:�@���d���vq�t���wCl}ྃ��	�N�T�4�C��V_�%Sy��0[�W��l|�w���  ��B9�=�p�o�V�3Q���c����b�x�X�=$H���F�����@)L�!�O�$���}�;���tv��>��Xc�����]����3��w#ࠀ��FP���������������|����P�����,���0��ə!�!_P�����+A��D���B��8�����<W��A��/��w&l��:��s]O�����s�F2M�(Yv��q�攐O��D@ O5��]w����#^��Y_u���_!����w/.���Y���}{,.�>^�o������LRvƩ�LG~1�R	�!��1 x�gh��L����s��s�~ A�\9b�y�y ��^�J>�"h��O�$�*����m>^>��0�:�����R��i���@2?U蟶��P�] ��{�.��+�����o�,��ሙu�2+�>HWv�8���!�g-Db�7s��ۺ��	9xY�A[a*,RK��b[����1UQ��\����]'Q�<]Y���Kf�z����CR%ar�z�3Ro@���V��$� ~����E�S��TL�
�ɚ�����,�f%3B+��^��}7���$!©I���s�ت�2S����������J)���	���!q�M�(��1߳�>g ��݇�/�t�ᷦ�F�o��r�J�8�a"�v�� g$B\ZBHZc�-���� �R�̓�޿�.�s��_z�����>�������; �r����Dw4�R �)��a�CX9��at�(�єVj��㑁�)�E�[������w�����?��z?������w �c����Ċ����G�,��G�G޷�?��:����Ǉ��~������/�����_�����+�j�����}�����R��A*%�*�C ����MX�80Y�z��X9y-r�U��;Cq��������n�Ǯ_{�c��ew��Y ��.�#Mz�w�y��O�E�M����L�<T��Ϻ�K'��7<~����%�wO�xl(AD`��\��(�*R��$J� �"�c�B�����
��V(-xbr��������ܘt����ňg+�� AP��<�}+M���l��]�� i�RM�F�r�c�f��d����} ��d�W�yn����R�[/, X�C��7�E�R{�ۧ<�F�f��DTB':͟�2ܜVWdJ��q]4�5AA^��@�cC�F�ou7ظ��v&�������7�ʔR�O]Ii��|��}Z���g��AWY�.��  �"f�ikK�C۞p0���%���� X9Ziy)���%��~��'�$�f	�����c�@��D ``����t�����n��}�������@��/y�Xꧫ�M�A7UؘBP�~+�+L��V�@8�\�_\� �q#*MG��� ,������"�L#9uџ���eMib%�{�7�"]9Ǐ �jp.9��*��XD��'���W;�jUG�-WE,G������7�.2�����f�xO��� �����O6���Y�����M�����}�'�+�3�,p�!8n%��R��7�Ԋ#�!����	E�.1���2��w� ������v��jD�eR5�@ȝKsZ?៹�7y5]�� ��R����C���������=�	q�9��KY��QpTv���;N\��h@��O��5�� ����g�ĕ �?F��Tc*�Y��&s�q�6_�!�N�R�y�Jk�p��|�A� ���W8��.� $��~�%I��I@�ߧ���� �Ñ�R]����� �V�Y������)}�s���N3	p�I�#h����~�=c(���3~GP ��Elȃ��T���$h��yb���od����o��:��;}h��W����r�}C��s~A�w�h���*��� ��PH�׀	ȁӘ��� �� �M��e0�w�B a�#H���i6��9u�<�8�\�~I:v$ �TN{�bKx7�c5�@p!�A�O^��$�=I�!ϔKY/XC�̑s_R/5{�o���<4�]9�DN������.<�Zv�TPmUXG�p�+=�� ���z�kHl��,8�|Y�5�R��8/oW�* |L�����zߩ��5Q����
��@H(��4�Y�C2���� is�IL���Gح�3�ZD�k~��>�k�X�H[����g ���Esx�]�2��X�HX���w9��cI���|w���_Aw�����돡� V�m� �L��4@�?HY����4z!z�N\�ęL4�4�����EU"Ǎ~�O鮌,�Kf�$���++#oҿ'�|����ౣT]m1���8H�p��B�y���'beU��V�a��V��F�ύ�?���[9Sad9�^�]�A��2($M�U��o��qH���CHc�||m#_s�{\E<��<4q�E� ʿ�����|Wͱ����d��[}���ntC]z��c��L|��� r��t��V2jɑ�@���8�<	Rk�l4��R$��TDq)B�H�׼�W�� ּ�cl����w/����R�*��9�?7i�sf*�9�d�*�!V|�!���4��� ǐ�|��|��;8Ӱ��c_��Ö/Wma	g�%'�f�	V�(!��#� ��cH+��� �!?~����U>�Hx��c��ܱ#�g� r��p�A�9�3�I��P$�.
�@�܂ ��ip�C@�<n��[<�e�#��� ]��Xq?�T�*. ��9SyV);(XP��;d����^_B8��@
V� Gs�1�K4�C"-�p:xk�O��4 ��S_�9� �� I6\zV+]��F��HT�����[ �!�rd�E_ʅL J�����+�r����Z+�釨D�p
�B�Q�Qb&����}���8�[�92$�^U((+���r�9�Fhuh�,A��w��(Q�d����!�^�s(�5/0t�Aq��GЎ���5zH�<@<U�B�T�SZ�z�Ң{�j?�$ ���hԞu(�!B���)}�P�"x�t�b� �_�����m�bړ���m�����������ɗ�x�?ڻ��7N���݌�x�UJ�����|A�0��L9#�NI ĩ��(��w����:���#`��x��Q>L�ʫ�x���[A�ڳ��\�� ��c� �x<דd���I������%1D���������AT�����p�/�����Xiu�9F�F�8��n��@�!#_��d�LLAp t��|[j�����E?qSk��г!@� 8�h@��@zT�X�K9�=@���-(�tT�S�G"�y]N��{������������ΊC#�����q�f�9�������k�Ã7p;��~	Fq��lT fP^uI�|���ɬ/ё��  4� �-O�/�H�lA��u J��.�)_˔D��!�R	�Y|GRR�h�����i���@�l��t������Ͼ�� ��+��|<�+���}���-�� [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dk5stubeksj26"
path="res://.godot/imported/song graph.png-a138b77b8d156b81e64604414ac08015.ctex"
metadata={
"vram_texture": false
}
          [remap]

path="res://.godot/exported/133200997/export-81c3f45fea7be280987bed288cea854d-base_cursor.scn"
        [remap]

path="res://.godot/exported/133200997/export-996389bb717188551fece8861cd39a2b-basic_text.res"
         [remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
               list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              @i���fsH   res://arrows/arrow_left.pngx�r�KM�C   res://arrows/arrow_right.png�Z�u��)   res://base_cursor.tscn����~�g   res://basic_text.tres�To/e,�z   res://icon.svg���k�x   res://main.tscnI:�Ѿr�m   res://song graph.png     ECFG      application/config/name      
   song_graph     application/run/main_scene         res://main.tscn    application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height            display/window/size/resizable             input/Click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script         input/Right Click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility              