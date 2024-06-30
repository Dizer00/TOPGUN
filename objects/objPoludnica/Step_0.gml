/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
 // Скорость движения противника
move_speed = 2;
var enemy_distance_to_player = 100;
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
        // Устанавливаем таймер на следующий выстрел
        alarm[1] = shoot_cooldown;
        
        // Создаем пулю
        var bullet = instance_create_layer(x, y, "Instances", objSlayer);
        bullet.speed = bullet_speed;
        bullet.direction = dirplayer;
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

if hp <= 0 instance_destroy();
