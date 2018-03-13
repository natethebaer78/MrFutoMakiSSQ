with (other)
{
  lost_hp = ATTACK_VAUES[? "shrimpBullet"];;
  player_hp -= PLAYER_START_HP * lost_hp;
  flash = 3;
  hitfrom = other.direction;
}

instance_destroy();