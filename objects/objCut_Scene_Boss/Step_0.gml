/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if(CurrentState1 == cutScenStates2.Active){
	switch (CurrentStep1){
		case 0 :
			if(objPlayer.x != 210){
				++objPlayer.x;}
				else{
					++CurrentStep1;
				//objPlayer.image_index = 0;
				//objPlayer.image_speed = 0;
				}
			
		break;
		case 1:	
		if(counter1 == 200){
			counter1 = 0;
			++CurrentStep1
		
			}
			else
				++counter1;
				break;
				case 2:
		if(counter1 == 100){
			counter1 = 0;
			++CurrentStep1
		
			}
			else
				++counter1;
		case 3:
	
		//instance_deactivate_object(objChelVolk);
		effect_create_above(ef_explosion, x, y, 1, c_white);
		if timer<30{
		timer+=1}
		else{
		effect_clear()}

		objChelVolk.visible = false;
		if (instance_number(objVolckolack) == 0) 
		var newInstance = instance_create_layer(430, 315, "Instances", objVolckolack);
		break;
		
		
		
		
		
	}
}
else if (CurrentState == cutScenStates2.Paused){
	
}