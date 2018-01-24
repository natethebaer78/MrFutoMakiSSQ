cameraEnd = obj_camera.x + obj_camera.sprite_width;
cameraStart = obj_camera.x;
out_of_range = (reset_bottom > cameraEnd || cameraStart > reset_top);
within_range = (reset_bottom < cameraEnd && cameraEnd < reset_top);

if !shrimp_added && (num_shrimp < 3) && within_range {
  instance_create_layer(add_shrimp_at, y, "Enemies", obj_shrimpSoldier);
  shrimp_added = true;
  num_shrimp = num_shrimp + 1;
} else if shrimp_added && out_of_range {
  shrimp_added = false;
}