/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var move_speed = 2; // Скорость движения противника
var enemy_distance_to_player = 300;
// Получаем расстояние 
var dist_x = objPlayer.x - x;
var dist_y = objPlayer.y - y;
cool+=1

// Вычисляем угол между противником и игроком
var dirplayer = point_direction(x,y,objPlayer.x, objPlayer.y)



// Двигаем противника 
if tick_av{
tick+=1
if tick==200{
tick=0
tick_av=false}
}

if (point_distance(x, y, objPlayer.x, objPlayer.y) <= enemy_distance_to_player) and tick<40
{
    // Останавливаем движение
    hspeed = 0;
    vspeed = 0;
    
    //  задержка 
	tick_av=true
	if tick>=20{
		var new_dirplayer = point_direction(x, y, objPlayer.x, objPlayer.y);
		var movesp = 10; // Скорость рывка
		motion_set(new_dirplayer, movesp);
	}
	
}

else
{
	motion_set(dirplayer, move_speed);
	
}

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

if hp <= 0 instance_destroy();
