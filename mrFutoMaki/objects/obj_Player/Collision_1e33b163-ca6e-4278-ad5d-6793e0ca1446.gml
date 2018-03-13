can_be_hit = is_undefined(hit_cooldown) || (get_timer() > (hit_cooldown + COOLDOWN_TIME))

if can_be_hit {
	// audio_play_sound(snd_playerHit,4,false);
  if (player_hp > 0) {
  	lost_hp = ATTACK_VAUES[? "boss1"];
    player_hp -= PLAYER_START_HP * lost_hp;
    hit_cooldown = get_timer();
  }

  if (player_hp <= 0) {
    instance_destroy();
  }
}