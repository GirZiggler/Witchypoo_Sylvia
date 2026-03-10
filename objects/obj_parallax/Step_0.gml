_cam_x = camera_get_view_x(view_camera[0]);

for (var i = 0; i < array_length(parallax_layers); i++)
{
	layer_x(parallax_layers[i], _cam_x * parallax_weights_x[i]);
}