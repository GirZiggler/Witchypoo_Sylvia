var gpb_start, bg_id, bg_id2;

bg_id = layer_background_get_id("BG_Sky");
bg_id2 = layer_get_id("BG_Street");

gpb_start = InputPressed(INPUT_VERB.PAUSE);


if (gpb_start)
{
	is_paused = !is_paused;
	if(is_paused)
	{
		Obj_pause_manager.pause_tag("pauseable");
		layer_background_speed(bg_id, 0);
		layer_hspeed(bg_id2,0); 
	}
	else
	{
		Obj_pause_manager.unpause_tag("pauseable");
		layer_background_speed(bg_id, 1);
		layer_hspeed(bg_id2, -3);
	}
}