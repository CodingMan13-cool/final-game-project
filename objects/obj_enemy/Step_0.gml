/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E5DEBBD
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 378DBAEC
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7E336F42
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 38DA64EB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Collision_tilemap"
var l38DA64EB_0 = instance_place(x + 0, y + 2, [Collision_tilemap]);if ((l38DA64EB_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5513090E
	/// @DnDParent : 38DA64EB
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 27658CEB
	/// @DnDDisabled : 1
	/// @DnDParent : 38DA64EB
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48725E59
	/// @DnDDisabled : 1
	/// @DnDParent : 27658CEB
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6C023255
	/// @DnDParent : 38DA64EB
	/// @DnDArgument : "x" "x+(25*sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Collision_tilemap"
	var l6C023255_0 = instance_place(x+(25*sign(move_x)), y + 0, [Collision_tilemap]);if ((l6C023255_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54A0C805
		/// @DnDParent : 6C023255
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3FF03DF1
	/// @DnDParent : 38DA64EB
	/// @DnDArgument : "x" "x+(30*sign(move_x))"
	/// @DnDArgument : "y" "y+50"
	/// @DnDArgument : "object" "Collision_tilemap"
	/// @DnDArgument : "not" "1"
	var l3FF03DF1_0 = instance_place(x+(30*sign(move_x)), y+50, [Collision_tilemap]);if (!(l3FF03DF1_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 787D13EC
		/// @DnDParent : 3FF03DF1
		/// @DnDArgument : "expr" "move_x*-1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x*-1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63C60C52
		/// @DnDParent : 3FF03DF1
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4FBF9BD7
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E801D1F
	/// @DnDParent : 4FBF9BD7
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5496FC25
		/// @DnDParent : 5E801D1F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 302F932C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Collision_tilemap_deathzone"
var l302F932C_0 = instance_place(x + 0, y + 2, [Collision_tilemap_deathzone]);if ((l302F932C_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0119CAF8
	/// @DnDParent : 302F932C
	instance_destroy();}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 670B99D1
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "Collision_tilemap"
move_and_collide(move_x, move_y, Collision_tilemap,4,0,0,walk_speed,jump_speed);