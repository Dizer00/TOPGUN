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
		if(counter1 == 510){
			counter1 = 0;
			++CurrentStep1
		
			}
			else
				++counter1;
				break;
				
		
		
		
		
		
	}
}
else if (CurrentState == cutScenStates2.Paused){
	
}