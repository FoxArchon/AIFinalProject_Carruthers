/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E124F86
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "testMechanic_rm"
if(room == testMechanic_rm){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 74410B30
	/// @DnDParent : 3E124F86
	/// @DnDArgument : "var" "cloud_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "30"
	/// @DnDArgument : "max" "730"
	var cloud_y = floor(random_range(30, 730 + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5B6774DA
	/// @DnDParent : 3E124F86
	/// @DnDArgument : "xpos" "-50"
	/// @DnDArgument : "ypos" "cloud_y"
	/// @DnDArgument : "objectid" "cloud1_obj"
	/// @DnDArgument : "layer" ""CloudLayer""
	/// @DnDSaveInfo : "objectid" "cloud1_obj"
	instance_create_layer(-50, cloud_y, "CloudLayer", cloud1_obj);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 52F8A382
	/// @DnDParent : 3E124F86
	/// @DnDArgument : "steps" "720"
	alarm_set(0, 720);}