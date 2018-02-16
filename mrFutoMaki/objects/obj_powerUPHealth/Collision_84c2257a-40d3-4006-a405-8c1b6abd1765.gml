add_hp = 0.1;//POWERUP_VAUES[? "health"];
obj_Player.player_hp += 30;//obj_Player.PLAYER_START_HP * add_hp;
audio_play_sound(snd_powerUP,10,false);
instance_destroy();
show_debug_message(obj_Player.player_hp);
