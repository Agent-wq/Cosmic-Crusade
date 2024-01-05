// Makes the player face and rotate around the mouse pointer
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
// Wraps the player around the room i.e makes him loop around
move_wrap(true,true,sprite_width);
// Movement 
if(keyboard_check(ord("A")))
{
	x -= _player_speed;	
}
if(keyboard_check(ord("D")))
{	
	x += _player_speed;
}
if(keyboard_check(ord("W")))
{
	y -= _player_speed;	
}
if(keyboard_check(ord("S")))
{	
	y += _player_speed;
}