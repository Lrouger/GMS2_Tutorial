/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 0109CD92
/// @DnDArgument : "xscale" "0.02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.02"
/// @DnDArgument : "yscale_relative" "1"

{
	image_xscale += 0.02;
	image_yscale += 0.02;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 444EE479
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 7C75EF1C
	/// @DnDParent : 444EE479
	
	{
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0F0493A0
	/// @DnDParent : 444EE479
	/// @DnDArgument : "objind" "obj_enemy"
	/// @DnDSaveInfo : "objind" "f0abdf0a-ebd3-4a15-bbf6-535951d8036b"
	instance_change(obj_enemy, true);


}

