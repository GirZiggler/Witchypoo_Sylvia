//create standard inputs
var gp_left, gp_right, gp_up, gp_down, gp_shoot, diag;
var hmove, vmove;



gp_left =	InputCheck(INPUT_VERB.LEFT);
gp_right =  InputCheck(INPUT_VERB.RIGHT);
gp_up =		InputCheck(INPUT_VERB.UP);
gp_down =	InputCheck(INPUT_VERB.DOWN);
gp_shoot =	InputPressed(INPUT_VERB.ACTION);

hSpeed = gp_right - gp_left;
vSpeed = gp_down - gp_up;
diag = (gp_up or gp_down) and (gp_left or gp_right);


#region movement
if hSpeed != 0
{
	x += hSpeed * move_speed;
}


if vSpeed != 0
{
	y += vSpeed * move_speed;
}


#endregion movement

#region attack
if can_shoot == true
{
	if gp_shoot 
	{
		//instance_create_layer(x,y, "Instances",obj_bullet);
		bullet(bullet_type);
		can_shoot = false;
		alarm[0] = 10;
		audio_play_sound(player_shoot_sound, 2, false);
	}
}

#endregion attack

if hp_ <= 0
{
	instance_destroy();
	
}