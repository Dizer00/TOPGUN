/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
 // Скорость движения противника
move_speed = 1.5;
var enemy_distance_to_player = 175;
// Получаем расстояние 
var dist_x = objPlayer.x - x;
var dist_y = objPlayer.y - y;

// Вычисляем угол между противником и игроком
var dirplayer = point_direction(x,y,objPlayer.x, objPlayer.y)


// Двигаем противника 
motion_set(dirplayer, move_speed);
if (point_distance(x, y, objPlayer.x, objPlayer.y) <= enemy_distance_to_player)
{
    // Останавливаем движение
    hspeed = 0;
    vspeed = 0;
    
}

if (alarm[1] == -1)
    {
		
		var shoot_cooldown = 60;
		if hp <=40 shoot_cooldown = 50;
		
        // Устанавливаем таймер на следующий выстрел
        alarm[1] = shoot_cooldown;
        
        // Создаем пулю
        var bullet = instance_create_layer(x, y, "Instances", objSlayer);
        bullet.speed = bullet_speed;
        bullet.direction = dirplayer;
		var original_direction = dirplayer;

        // Выпускаем 10 объектов objSlayer во все стороны
		if hp <= 10{
        for (var i = 0; i < 10; i++)
        {
            // Создаем новый объект objSlayer
            var extra_bullet = instance_create_layer(x, y, "Instances", objSlayer);
            extra_bullet.speed = bullet_speed;
            extra_bullet.direction = original_direction + (i * 36); // Угол каждого следующего выстрела смещен на 36 градусов
        }}
    }

if (poison > 0)
    {
        time += 1;
        if (time > 30)
        {
            time = 0;
            poison -= 1;
            hp -= 1;
            
            // Если противник отравлен, то устанавливаем скорость в 0
            move_speed *= 0.9;
        }
    }
    else
    {
        // Если отравление закончилось, то восстанавливаем скорость
        move_speed = 2;
    }

if fire>0{
	time_2+=1
	if time_2>30{
	time_2=0
	fire-=1
	hp-=1}
}

if hp <= 0 instance_destroy();

