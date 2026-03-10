
var bg_sky = layer_get_id("BG_Sky");
var bg_street = layer_get_id("BG_Street");


layer_x(bg_sky, lerp(0,camera_get_view_x(view_camera[0]), 0.5));