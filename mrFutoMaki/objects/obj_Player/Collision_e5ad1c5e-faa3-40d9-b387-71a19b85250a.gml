can_be_hit = is_undefined(hit_cooldown) || (get_timer() > (hit_cooldown + COOLDOWN_TIME))

if can_be_hit {
  if (player_hp > 0) {
    player_hp -= 1;
    hit_cooldown = get_timer();
  } else {
    instance_destroy();
  }
}