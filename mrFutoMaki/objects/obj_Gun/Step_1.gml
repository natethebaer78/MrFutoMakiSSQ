if instance_exists(obj_Player) {
  x = obj_Player.x+2;
  y = obj_Player.y+6;
	
	half_width = camera_get_view_width(view_camera[0]) / 2;

	if (keyboard_check(vk_left)) {
		x_dir = obj_camera.x - half_width;
	} else if (keyboard_check(vk_right)) {
		x_dir = obj_camera.x + half_width;
	}
	
	if (keyboard_check(vk_up)) {
		y_dir = 0;
	} else if (keyboard_check(vk_down)) {
		y_dir = 900;
	} else {
		y_dir = y;
	}
	image_angle = point_direction(x, y, x_dir, y_dir);


  firingdelay = firingdelay - 1;
  recoil      = max(0,recoil - 1);
  if (keyboard_check(ord("B"))) && (firingdelay < 0) {
		recoil = 4;
		firingdelay = 5;
		ScreenShake(2,10);		
		audio_play_sound(snd_bullet,7,false);
		with (instance_create_layer(x+20,y,"Bullets",obj_soyBullet)) {
		  speed     = 15;
		  direction = other.image_angle + random_range(-3, 3);
		  image_angle = direction;
		}
  }

  x = x - lengthdir_x(recoil,image_angle);
  y = y - lengthdir_y(recoil,image_angle);

  if (image_angle > 90) && (image_angle < 270) {
	  image_yscale = -1;
  } else {
	  image_yscale = 1;
  }
}