var gpb_start;
gpb_start = InputPressed(INPUT_VERB.PAUSE);

if (gpb_start)
{
	is_paused = !is_paused;
	if(is_paused)
	{
		Obj_pause_manager.pause_tag("pauseable");
	}
	else
	{
		Obj_pause_manager.unpause_tag("pauseable");
	}
}