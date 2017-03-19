/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4B0900A8
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "18145d11-8c28-4508-9f55-a04305440d6d"
var l4B0900A8_0 = false;
l4B0900A8_0 = instance_exists(obj_player);
if(l4B0900A8_0)
{
	

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 15C5F016
	/// @DnDParent : 4B0900A8
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	
	{
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 05ACB0C0
	/// @DnDParent : 4B0900A8
	/// @DnDArgument : "speed" "spd"
	
	{
		speed = spd;
	}


}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1B72A44E
/// @DnDArgument : "angle" "direction"

{
	image_angle = direction;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DB7EBF9
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AF47368
	/// @DnDApplyTo : 4a9f4a4a-4710-4d3b-98d6-0b19d4e5880a
	/// @DnDParent : 4DB7EBF9
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += +1;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 324C34B5
	/// @DnDParent : 4DB7EBF9
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "1b11be69-dd26-4967-a987-3ee88ad79ce7"
	
	{
		audio_sound_pitch(snd_death, random_range(0.8,1.2));
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6091165A
	/// @DnDParent : 4DB7EBF9
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "1b11be69-dd26-4967-a987-3ee88ad79ce7"
	
	{
		audio_play_sound(snd_death, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A3C2E54
	/// @DnDParent : 4DB7EBF9
	instance_destroy();


}

