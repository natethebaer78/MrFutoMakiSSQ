if (!eel_added) && (obj_Player.x >= add_eel_at) {
  show_debug_message("add that eel!");
  instance_create_layer(add_eel_at+200, y-100, "Enemies", obj_eelShocker);
  eel_added = true;
} else {
  //show_debug_message(obj_Player.x);
}