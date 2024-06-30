/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (place_meeting(x+5,y,objTrigger)){
	if  place_meeting(x,y,objTrigger) && !instance_exists(objCut_Scene_Boss_Parent)
	{
		instance_create_layer(x,y,"Instances",objCut_Scene_Boss)	;
		image_index = 0;
		image_speed = 0;
	}
}