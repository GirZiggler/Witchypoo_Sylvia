var cy = camera_get_view_y(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);
var cx = camera_get_view_x(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

x = clamp(x,cx+sprite_width/2, cx+cw-sprite_height/2);
y = clamp(y, cy+sprite_height/2, cy+ch-sprite_height/2);