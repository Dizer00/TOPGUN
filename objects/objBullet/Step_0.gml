//движение
	xspd=lengthdir_x(spd,dir);
	yspd=lengthdir_y(spd,dir);
	
	x+=xspd;
	y+=yspd;
//столкновения
	// уничтожается при столкновении с блоком или слишком далеко
	if ( place_meeting(x,y, objBlocksolid) )
	{
		destroy=true;
	}
	// расстояние, которое может пройти пуля или уничтожится
	if (point_distance(xstart,ystart,x,y)>maxdist)
	{
		destroy=true;
	}
	
	if destroy { instance_destroy(); }