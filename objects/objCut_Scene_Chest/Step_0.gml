/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(CurrentState == cutScenStates.Active){
	switch (CurrentStep){
		case 0 :
			if(objLeshiy.x != 300){
				--objLeshiy.x;}
				else{
					objLeshiy.image_index = 0;
					objLeshiy.image_speed = 0;
					++CurrentStep;
				}
			
		break;
		case 1:
		dB = instance_create_layer(objLeshiy.x,objLeshiy.y - 75, "Instances", objDialogBox);
		if (instance_exists(objDialogBox)){
		dB.myText = "Podi_proch"}
		if(counter == 120){
			counter = 0;
			++CurrentStep
			}
			else
				++counter;
				break;
		case 2:
		instance_destroy(objDialogBox);
		if(objLeshiy.x != 400){
				++objLeshiy.x;
				objLeshiy.image_index = 1;
				objLeshiy.image_speed = 1;
				}
				else
					
					++CurrentStep;
					break;
				
		case 3:
	if(objLeshiy.x != 500){
				++objLeshiy.x;
				objLeshiy.image_index = 1;
				objLeshiy.image_speed = 1;
				}
				else
					
					++CurrentStep;
					break;
	  ++CurrentStep;
	break;
		
		case 4:
		instance_destroy(objLeshiy);
		
		
		
		
	}
}
else if (CurrentState == cutScenStates.Paused){
	
}