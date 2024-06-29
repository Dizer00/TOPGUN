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
		if (!instance_exists(objDialogBox))
		db = myText = "Пошёл нахуй"
		if(counter == 120){
			counter = 0;
			++CurrentStep
			}
			else
				++counter;
				break;
	}
}
else if (CurrentState == cutScenStates.Paused){
	
}