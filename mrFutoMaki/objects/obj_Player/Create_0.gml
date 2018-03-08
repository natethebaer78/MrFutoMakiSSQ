COOLDOWN_TIME   = 750000; // 3/4 second
PLAYER_START_HP = 100;

ATTACK_VAUES = ds_map_create();
ds_map_add(ATTACK_VAUES, "eelShocker", 0.25);
ds_map_add(ATTACK_VAUES, "shrimpSoldier", 0.1);
ds_map_add(ATTACK_VAUES, "shrimpBullet", 0.05);
ds_map_add(ATTACK_VAUES, "boss1", 0.3);


hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;

hascontrol = true;

player_hp = PLAYER_START_HP; // using percents

hit_cooldown = undefined;
