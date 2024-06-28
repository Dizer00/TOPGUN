/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (instance_exists(objPlayer))
{
    // Вычисляем угол между противником и игроком
    var shoot_dirplayer = point_direction(x, y, objPlayer.x, objPlayer.y);
    
    // Создаем пулю
    var bullet = instance_create_layer(x, y, "Instances", objSlayer);
    bullet.speed = bullet_speed;
    bullet.direction = shoot_dirplayer;
}