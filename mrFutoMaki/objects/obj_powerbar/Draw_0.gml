x_start = obj_camera.x - 500; // why is the camera.x towards the end of the screen?

// draw powerbar container
draw_set_color(c_gray);
draw_to_x = x_start + PB_START_WIDTH;
draw_to_y = power_bar_y + power_bar_height;
pb_container = draw_rectangle(x_start - 4, power_bar_y- 4, draw_to_x + 4, draw_to_y + 4, false);

// draw powerbar value
draw_set_color(c_lime);

if (instance_exists(obj_Player)) {
  percent	 = (obj_Player.player_hp / obj_Player.PLAYER_START_HP);
  lost_power = PB_START_WIDTH - (PB_START_WIDTH * percent);
  
  if (power_bar_width > (PB_START_WIDTH - lost_power)) {
    power_bar_width -= 3;
  }
  draw_to_x  = x_start + power_bar_width;
} else {
  draw_to_x = x_start;
}

pb_value = draw_rectangle(x_start, power_bar_y, draw_to_x, draw_to_y, false);