cameraEnd    = obj_camera.x + obj_camera.sprite_width;
cameraStart  = obj_camera.x;
within_range = (reset_bottom < cameraEnd && cameraEnd < reset_top);

can_add_shrimp = is_undefined(shrimp_spawn_cooldown ) || (get_timer() > (shrimp_spawn_cooldown  + SHRIMP_ADD_COOLDOWN))

if can_add_shrimp && within_range && (num_shrimp < 4) {
  instance_create_layer(add_shrimp_at, y, "Enemies", obj_shrimpSoldier);
  shrimp_spawn_cooldown = get_timer();
	num_shrimp += 1;
}
