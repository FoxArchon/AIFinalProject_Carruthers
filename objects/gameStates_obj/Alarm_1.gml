/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39732CEF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "testMechanic_rm"
if(room == testMechanic_rm){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 23899B62
	/// @DnDParent : 39732CEF
	/// @DnDArgument : "var" "birds_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "100"
	/// @DnDArgument : "max" "630"
	var birds_y = floor(random_range(100, 630 + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6DF04EBB
	/// @DnDParent : 39732CEF
	/// @DnDArgument : "xpos" "-25"
	/// @DnDArgument : "ypos" "birds_y"
	/// @DnDArgument : "objectid" "birds_obj"
	/// @DnDArgument : "layer" ""BirdLayer""
	/// @DnDSaveInfo : "objectid" "birds_obj"
	instance_create_layer(-25, birds_y, "BirdLayer", birds_obj);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5ACE6432
	/// @DnDParent : 39732CEF
	/// @DnDArgument : "steps" "1200"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 1200);}