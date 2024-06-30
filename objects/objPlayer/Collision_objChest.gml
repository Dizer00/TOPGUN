/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (place_meeting(x+5,y,objChest)){
	if  place_meeting(x,y,objChest) && !instance_exists(objCut_Scene_Parent)
	{
		instance_create_layer(x,y,"Instances",objCut_Scene_Chest)	;
		image_index = 0;
		image_speed = 0;
	}
}