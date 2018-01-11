/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4899BDCD
/// @DnDArgument : "var" "walk"
if(walk == 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 400BEE9B
	/// @DnDParent : 4899BDCD
	/// @DnDArgument : "speed" "0"
	image_speed = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70E70C22
/// @DnDArgument : "var" "walk"
/// @DnDArgument : "value" "1"
if(walk == 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2B98036E
	/// @DnDParent : 70E70C22
	/// @DnDArgument : "speed" "3"
	image_speed = 3;
}