/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(CurrentState == cutScenStates.Active){
	switch (CurrentStep){
		case 0 :
			if(objChelVolk.x != 500){
				++objChelVolk.x;}
				else{
					++CurrentStep;
						objPlayer.image_index = 0;
				objPlayer.image_speed = 0;
				}
			
		break;
		case 1:	
		if(counter == 510){
			counter = 0;
			++CurrentStep
		
			}
			else
				++counter;
				break;
				
		case 2:
		instance_destroy(objDialogBox);
		if(objPlayer.x != 220){
				++objPlayer.x;
				objPlayer.image_index = 1;
				objPlayer.image_speed = 1;
				}
				else
					
					++CurrentStep;
					break;
				
		case 3:
	if(objChelVolk.x != 500){
				++objChelVolk.x;
				}
				else
					
					++CurrentStep;
					break;
			break;
		
			case 4:
			if(objChelVolk.x != 550){
				++objChelVolk.x;
				}
					else
						++CurrentStep;
				instance_destroy(objChelVolk);
					break;
			
		
		
		
		
	}
}
else if (CurrentState == cutScenStates.Paused){
	
}