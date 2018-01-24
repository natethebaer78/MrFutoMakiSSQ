cameraEnd = obj_camera.x + obj_camera.sprite_width;
cameraStart = obj_camera.x;
out_of_range = (reset_bottom > cameraEnd || cameraStart > reset_top);
within_range = (reset_bottom < cameraEnd && cameraEnd < reset_top);

if !eel_added && (num_eels < 3) && within_range {
  instance_create_layer(add_eel_at, y, "Enemies", obj_eelShocker);
  eel_added = true;
  num_eels = num_eels + 1;
} else if eel_added && out_of_range {
  eel_added = false;
}