function bullet(bullet_type)
{
	switch(bullet_type)
	{
		case "standard":
			instance_create_layer(x + 8, y, "Instances", obj_bullet);
		break;
	}
}