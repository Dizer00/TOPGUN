//кнопки
downKey=keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
upKey=keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
acceptKey=keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

pos += downKey-upKey;

if pos>=2 {pos=0;}

if pos<0 {pos=1;}

if acceptKey
{
	if pos == 0 {room_goto(STGE1Chmo); audio_pause_sound(musMenu);audio_play_sound(musEpic,90,true,1,1,1,1);}
	if pos == 1 {room_goto(MENU);}
}