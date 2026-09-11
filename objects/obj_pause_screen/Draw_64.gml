if(!is_paused) exit;

draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(0,0,room_width, room_height, false);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_font(Daydream);

draw_text(room_width / 2, room_height / 2, "PAUSED");
draw_text_colour(room_width / 2, room_height / 2, "PAUSED",c_white,c_white,c_white,c_white, 1);