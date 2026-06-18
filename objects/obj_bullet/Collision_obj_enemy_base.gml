/// collision with enemy

with (other) {
	hp_ -= 1;
	image_blend = c_red;
	alarm[0] = 3;
}

instance_destroy();