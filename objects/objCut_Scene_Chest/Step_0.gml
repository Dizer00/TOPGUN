/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(CurrentState == cutScenStates.Active){
	switch (CurrentStep){
		case 0 :
			if(objChelVolk.x != 200){
				++objChelVolk.x;}
				else{
					++CurrentStep;						
					}
		break;
	
		case 1:	
		if(counter == 200){
			counter = 0;
			++CurrentStep
						  }
			else
				++counter;
		break;
				
		case 2:
		effect_create_above(ef_explosion, x, y, 1, c_white);
		if timer<30{
		timer+=1}
		else{
		effect_clear()}

		objChelVolk.visible = false;
		++CurrentStep;
		
		break;
				
		case 3:
		if(objPlayer.x != 200){
			++objPlayer.x;
			//objPlayer.image_index = 1;
			//objPlayer.image_speed = 1;
							  }
		else
		++CurrentStep;
		
		break;
			
		
		case 4:
		if(counter == 200){
			counter = 0;
			++CurrentStep
						  }
			else
				++counter;
		break;
			case 5:
		instance_destroy(objChelVolk);
		break;
		
		
		
		
	}
}
else if (CurrentState == cutScenStates.Paused){
	
}