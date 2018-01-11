//Get Player Input

if(hascontrol)
{
key_left = keyboard_check(vk_left); 
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);


//Caluculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_floor)) && (key_jump)
{
	vsp = -12;
}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
//Horizontal Collision
if (place_meeting(x+hsp,y,obj_floor))
{
	while (!place_meeting(x+sign(hsp),y,obj_floor))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_floor))
{
	while (!place_meeting(x,y+sign(vsp),obj_floor))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//Animation

if (!place_meeting(x,y+1,spr_floor))
{
 sprite_index = spr_PlayerJump;
 image_speed = 0;
 if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = spr_Player; 
	}

	else 

	 {
		sprite_index = spr_PlayerRun;
	 }

}

if (hsp != 0) image_xscale = sign(hsp);





