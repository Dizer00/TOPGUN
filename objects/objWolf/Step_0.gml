if distance_to_object(objPlayer) <150{
//move_speed = 0; // Скорость движения противника
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

   if (poison > 0)
    {
        time += 1;
        if (time > 30)
        {
            time = 0;
            poison -= 1;
            hp -= 1;
            
            // Если противник отравлен, то устанавливаем скорость в 0
            move_speed *= 0.7;
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
motion_set(dirplayer, move_speed);
if hp <= 0 {instance_destroy();
randomize()
r=irandom(4)
if r==0{
objPlayer.hp+=irandom_range(1,3)}
if r==2 or r==1{
objPlayer.arrows[1]+=irandom_range(3,7)}
if r==3{
objPlayer.arrows[2]+=irandom_range(3,7)}
}
}