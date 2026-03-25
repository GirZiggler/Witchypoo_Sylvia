//create standard inputs
var gp_left, gp_right, gp_up, gp_down, gp_shoot, diag;
var hmove, vmove;



gp_left =	InputCheck(INPUT_VERB.LEFT);
gp_right =  InputCheck(INPUT_VERB.RIGHT);
gp_up =		InputCheck(INPUT_VERB.UP);
gp_down =	InputCheck(INPUT_VERB.DOWN);
gp_shoot =	InputPressed(INPUT_VERB.ACTION);

hmove = gp_right - gp_left;
vmove = gp_down - gp_up;
diag = (gp_up or gp_down) and (gp_left or gp_right);


#region movement
if hmove != 0
{
	hspeed_ += hmove * Obj_game_manager.accel_;
	hspeed_ = clamp(hspeed_, -Obj_game_manager.max_speed, Obj_game_manager.max_speed);
}
else
{
	hspeed_ = lerp(hspeed_,0,Obj_game_manager.friction_);
}

if vmove != 0
{
	vspeed_ += vmove*Obj_game_manager.accel_;
	vspeed_ = clamp(vspeed_, -Obj_game_manager.max_speed, Obj_game_manager.max_speed);
}
else
{
	vspeed_ = lerp(vspeed_,0,Obj_game_manager.friction_);
}

diagspeed_ = sqrt(Obj_game_manager.max_speed)/2;

if diag
{
	hspeed_ *= diagspeed_;
	vspeed_ *= diagspeed_;
}
else
{
	Obj_game_manager.max_speed = Obj_game_manager.og_speed;
}

x += hspeed_;
y += vspeed_;
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
	}
}

#endregion attack