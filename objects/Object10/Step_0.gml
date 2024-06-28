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
motion_set(dirplayer, move_speed);
if (point_distance(x, y, objPlayer.x, objPlayer.y) <= enemy_distance_to_player)
{
    // Останавливаем движение
    hspeed = 0;
    vspeed = 0;
    
    //  задержка 
    alarm[0] = 1;
}

if hp <= 0 instance_destroy();