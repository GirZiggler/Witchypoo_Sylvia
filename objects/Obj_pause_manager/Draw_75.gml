for (var _i = 0; _i < array_length(pause_queue); _i++)
{
	with(pause_queue[_i])
	{
		array_push(other.paused_elements, id);
	}
}

pause_queue = [];

for (var _i = 0; _i < array_length(unpause_queue); _i++)
{
	with(unpause_queue[_i])
	{
		var _index = array_get_index(other.paused_elements, id);
		if(_index != -1)
		{
			array_delete(other.paused_elements, _index, 1);
		}
	}
}
unpause_queue = [];

for (var _i = 0; _i < array_length(paused_elements); _i++)
{
	instance_deactivate_object(paused_elements[_i]);
}
