/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5614DB0F
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "testMechanic_rm"
if(room == testMechanic_rm){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 3614C578
	/// @DnDParent : 5614DB0F
	/// @DnDArgument : "soundid" "wind_snd"
	/// @DnDSaveInfo : "soundid" "wind_snd"
	audio_play_sound(wind_snd, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6AC6076F
	/// @DnDParent : 5614DB0F
	/// @DnDArgument : "steps" "1100"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 1100);}