player_hp = obj_Player.player_hp;
new_hp = player_hp + (obj_Player.PLAYER_START_HP * POWERUP_VAUES[? "standard"]);

if (new_hp >= obj_Player.PLAYER_START_HP) {
  obj_Player.player_hp = obj_Player.PLAYER_START_HP;
} else {
	obj_Player.player_hp = new_hp;
}

audio_play_sound(snd_powerUP,10,false);
instance_destroy();
show_debug_message(obj_Player.player_hp);
