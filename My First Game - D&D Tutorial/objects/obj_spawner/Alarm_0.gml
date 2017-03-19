/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3AB7F200
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""Layer_Enemy""
/// @DnDSaveInfo : "objectid" "e266a9a0-8d34-47d1-b8be-5885de6563b7"
instance_create_layer(random(room_width), random(room_height), "Layer_Enemy", obj_enemyspawn); 

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4F429A1D
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);


