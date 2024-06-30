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

if poison>0{
	time+=1
	if time>30{
	time=0
	poison-=1
	hp-=1}
}

if fire>0{
	time_2+=1
	if time_2>30{
	time_2=0
	fire-=1
	hp-=1}
}

motion_set(dirplayer, move_speed);
if hp <= 0 instance_destroy();