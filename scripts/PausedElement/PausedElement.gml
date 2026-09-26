function PausedElement(_id) constructor
{
	id = _id;
	pauses = [];

	on_pause = variable_instance_exists(id, "on_pause") ? id.on_pause : undefined;
	on_unpause = variable_instance_exists(id, "on_unpause") ? id.on_unpause : undefined;
	
	static add = function(_length) 
	{
		array_insert(pauses,0,_length);
		return self;
	}
	
	static shift = function() 
	{
		array_shift(pauses);
	}
	
	static update = function()
	{
		if(array_length(pauses) == 0) return true;
		
		pauses[0]--;
		if(pauses[0] == 0)
		{
			shift();
		}
		
		return array_length(pauses) == 0;
	}
}