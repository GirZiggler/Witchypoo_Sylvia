/// collision with enemy

with (other) {
	hp_ -= 1;
	image_blend = c_red;
	alarm[0] = 3;
	audio_play_sound(enemy_hurt, 2, false);
}

instance_destroy();