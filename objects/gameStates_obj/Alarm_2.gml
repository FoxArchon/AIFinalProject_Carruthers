/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E124F86
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "testMechanic_rm"
if(room == testMechanic_rm){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 74410B30
	/// @DnDParent : 3E124F86
	/// @DnDArgument : "var" "cloud_y2"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "30"
	/// @DnDArgument : "max" "730"
	var cloud_y2 = floor(random_range(30, 730 + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5B6774DA
	/// @DnDParent : 3E124F86
	/// @DnDArgument : "xpos" "-50"
	/// @DnDArgument : "ypos" "cloud_y2"
	/// @DnDArgument : "objectid" "cloud2_obj"
	/// @DnDArgument : "layer" ""CloudLayer""
	/// @DnDSaveInfo : "objectid" "cloud2_obj"
	instance_create_layer(-50, cloud_y2, "CloudLayer", cloud2_obj);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 52F8A382
	/// @DnDParent : 3E124F86
	/// @DnDArgument : "steps" "720"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 720);}