/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7442F88E
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B22797F
/// @DnDArgument : "var" "cx"
/// @DnDArgument : "value" "camera_get_view_x(vc)"
var cx = camera_get_view_x(vc);


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 67D409A3
/// @DnDArgument : "var" "cy"
/// @DnDArgument : "value" "camera_get_view_y(vc)"
var cy = camera_get_view_y(vc);


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 10B59AA3
/// @DnDArgument : "var" "cw"
/// @DnDArgument : "value" "camera_get_view_width(vc)"
var cw = camera_get_view_width(vc);


/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 19006962
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "1417e08c-436b-403d-9616-682334b44596"

{
	draw_set_font(fnt_score);
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1
/// @DnDHash : 3271AC6A
/// @DnDArgument : "halign" "1"

{
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 109CB303
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 055BD48C
/// @DnDArgument : "x" "cx + (cw/2)"
/// @DnDArgument : "y" "cy +32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "thescore"

{
	var l055BD48C_0 = cx + (cw/2);
	var l055BD48C_1 = cy +32;
	draw_text(l055BD48C_0, l055BD48C_1, string("Score: ") + string(thescore));
}

