//кнопки
downKey=keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
upKey=keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
acceptKey=keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

pos += downKey-upKey;

if pos>=2 {pos=0;}

if pos<0 {pos=1;}

if acceptKey
{
	if pos == 0 {room_goto(STGE1Chmo);}
	if pos == 1 {room_goto(MENU);}
}