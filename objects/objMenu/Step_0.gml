downKey=keyboard_check_pressed(ord("S"));
upKey=keyboard_check_pressed(ord("W"));
acceptKey=keyboard_check_pressed(vk_space);

pos += downKey-upKey;
if pos>=op_length 
{pos=0;}

if pos<0
{pos=op_length-1;}


if acceptKey{
switch(pos)
	{
		//начать игру
		case 0:
			room_goto(Stage1);
			
		break;
		// настройки
		case 1:
			room_goto(Stage1);
			
		break;
		// бестиарий
		case 2:
			room_goto(Stage1);
			
		break;
		//выход
		case 3:
			room_goto(Stage1);
			
		break;
		
		
}
}