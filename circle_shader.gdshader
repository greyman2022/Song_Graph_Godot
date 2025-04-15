shader_type canvas_item;

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
