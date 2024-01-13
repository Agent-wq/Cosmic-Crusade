// Makes the player face and rotate around the mouse pointer
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;

// Get input
right_key  = keyboard_check(ord("D"));
left_key  = keyboard_check(ord("A"));
up_key  = keyboard_check(ord("W"));
down_key  = keyboard_check(ord("S"));

// Get x and y speeds
x_speed = (right_key - left_key) * _player_speed;
y_speed = (down_key - up_key) * _player_speed;

// Collisions
if (place_meeting(x + x_speed,y,[obj_invis_wall]))
{
	x_speed = 0;
}
if (place_meeting(x,y + y_speed,[obj_invis_wall]))
{
	y_speed = 0;
}

// Make the player move
x += x_speed;
y += y_speed;
// Shooting
if(keyboard_check(ord("E")))
{
	instance_create_layer(x,y,layer,obj_bullet); 
	show_debug_message("bullet");
}
if(mouse_check_button(mb_left))
{
	instance_create_layer(x,y,layer,obj_bullet); 
	show_debug_message("bullet");
}
