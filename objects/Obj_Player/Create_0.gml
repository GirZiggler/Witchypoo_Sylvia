///Player Object - Sylvia
// Witchypoo Sylvia's title character

//Player states
enum PLAYER_STATE
{
	SPAWNING_1,
	SPAWNING_2,
	PLAYING,
	COMPLETED,
	SIZE
}

enum BULLET_TYPE
{
	BALKAN,
	CANDY_CORN,
	PUMPKIN_BOMB,
}

curr_shot_level = 1;
curr_bomb_level = 3;

//max speed for x and y speeds
max_x_speed = 120;
max_y_speed = 120;

can_shoot = true;