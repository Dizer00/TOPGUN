//движение
	xspd=lengthdir_x(sped,dir);
	xspd+=lengthdir_x(spd_boost,dir_boost);
	yspd=lengthdir_y(sped,dir);
	yspd+=lengthdir_y(spd_boost,dir_boost);
	
	x+=xspd;
	y+=yspd;
	time+=1
	pop=1
	max_time=20+(abs(spd_boost)*5)*(power_a/2);
	
	
//столкновения
	// уничтожается при столкновении с блоком или слишком далеко
	for (var i=0; i<array_length(global.Obj_solid_list);i+=1)
		if ( place_meeting(x,y, global.Obj_solid_list[i]) )
		{
			destroy=true;
		}
	// расстояние, которое может пройти пуля или уничтожится
	if (time>max_time)
	{
		destroy=true;
	}
	
	if destroy { instance_destroy();
		effect_create_below(ef_spark, x, y, 0.1, c_grey);}
	