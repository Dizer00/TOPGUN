var move_speed = 2; // Скорость движения противника
var enemy_distance_to_player = 300;
// Получаем расстояние 
var dist_x = objPlayer.x - x;
var dist_y = objPlayer.y - y;
cool+=1

// Вычисляем угол между противником и игроком
var dirplayer = point_direction(x,y,objPlayer.x, objPlayer.y)

if ( dirplayer<=90 || dirplayer>=270 )
	{
		image_xscale=1;
	}
	else
	{
		image_xscale=-1;
	}

// Двигаем противника 
if tick_av{
tick+=1
if tick==200{
tick=0
tick_av=false}
}

motion_set(dirplayer, move_speed);