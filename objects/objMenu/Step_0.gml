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
			case 0: menu_level=2; break;
			// настройки
			case 1: menu_level=1; break;
			//выход
			case 2: game_end();break;
			}
		break;
		
		//меню настроек
		case 1:
			switch(pos)
			{
			//размер очка
			case 0:
			//громкость
			case 1: 
			//яркость
			case 2:
			//назад
			case 3: menu_level=0; break;
			}
		//меню выбора уровней
		case 2:
			switch(pos)
			{
			//волкопидарас
			case 0: room_goto(desriplvl1); break;
			}

}
	
	if _sml !=menu_level {pos=0};
	
	
	op_length=array_length(option[menu_level]);

}