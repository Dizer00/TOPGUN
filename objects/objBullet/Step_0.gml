//движение
	xspd=lengthdir_x(spd,dir);
	xspd+=lengthdir_x(spd_boost,dir_boost);
	yspd=lengthdir_y(spd,dir);
	yspd+=lengthdir_y(spd_boost,dir_boost);
	
	x+=xspd;
	y+=yspd;
	time+=1
	max_time=50+(abs(spd_boost)*10);
	
//столкновения
	// уничтожается при столкновении с блоком или слишком далеко
	for (var i=0; i<array_length(global.Obj_notsolid_list);i+=1)
		if ( place_meeting(x,y, global.Obj_notsolid_list[i]) )
		{
			destroy=true;
		}
	// расстояние, которое может пройти пуля или уничтожится
	if (time>max_time)
	{
		destroy=true;
	}
	
	if destroy { instance_destroy(); }