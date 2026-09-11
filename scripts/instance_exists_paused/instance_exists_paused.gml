function instance_exists_paused(_obj_or_id){
	if(instance_exists(_obj_or_id)) return true;
	
	var _paused_elements = Obj_pause_manager.paused_elements;
	for(var _i = 0; _i < array_length(_paused_elements); _i++)
	{
		var _id = _paused_elements[_i];
		if(_id == _obj_or_id || _id.object_index == _obj_or_id) return true; 
	}
	
	return false;
}