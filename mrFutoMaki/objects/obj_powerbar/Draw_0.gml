x_start = obj_camera.x - 500; // why is the camera.x towards the end of the screen?

// draw powerbar container
draw_set_color(c_dkgray);
draw_to_x = x_start + power_bar_width;
draw_to_y = power_bar_y + power_bar_height;
pb_container = draw_rectangle(x_start, power_bar_y, draw_to_x, draw_to_y, false);

// draw powerbar value
draw_set_color(c_maroon);
draw_to_x = draw_to_x - 4;
draw_to_y = draw_to_y - 4;
pb_value = draw_rectangle(x_start + 4, power_bar_y + 4, draw_to_x, draw_to_y, false);
