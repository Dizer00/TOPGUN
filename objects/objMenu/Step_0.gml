//кнопки
downKey=keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
upKey=keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
acceptKey=keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

// количетсво опций в каждом меню
op_length=array_length(option[menu_level]);

//перемещение по меню
pos += downKey-upKey;

if pos>=op_length {pos=0;}

if pos<0 {pos=op_length-1;}


if acceptKey
{
	var _sml= menu_level;
	
	switch(menu_level)
	{
		// базовое меню
		case 0:
			switch(pos)
			{
			//начать игру
			case 0: menu_level=1; break;
			//выход
			case 1: game_end();break;
			
			case 2: room_goto(RoomBistiary); break;
			
			case 3: room_goto(RSeting); break;
			}
		break;
		//меню выбора уровней
		case 1:
			switch(pos)
			{
			//волкопидарас
			case 0: room_goto(desriplvl1); break;
			
			//ведьмаебучая
			case 1: room_goto(STGE2CHMO); audio_stop_sound(musMenu); audio_play_sound(musPole,90,true,1,1,1,1); break;
			}
		break;
		

}
	
	if _sml !=menu_level {pos=0};
	
	
	op_length=array_length(option[menu_level]);

}
