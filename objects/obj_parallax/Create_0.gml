parallax_weights_x = [0.5, 1];

parallax_layers = array_filter(layer_get_all(), function(layer_id) {
	return layer_get_type(layer_id) == layer_type_room
		&& string_pos("BG",layer_get_name(layer_id)) > 0;
});