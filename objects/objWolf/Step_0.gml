/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var move_speed = 2; // Скорость движения противника
// Получаем расстояние 
var dist_x = objPlayer.x - x;
var dist_y = objPlayer.y - y;

// Вычисляем угол между противником и игроком
var dirplayer = point_direction(x,y,objPlayer.x, objPlayer.y)


// Двигаем противника 
motion_set(dirplayer, move_speed);