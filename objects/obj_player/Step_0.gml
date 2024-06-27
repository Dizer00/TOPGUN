// получает направление
moveDir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
xspd = moveSpd * moveDir;
jkp = keyboard_check_pressed(ord("W"));

// пока не понял, но связано с отображением на экране
var subPixel=0.5;
// если встретился с блоком
if place_meeting(x + xspd, y, obj_block)
{
	// тоже про пиксели че то, нихера не понял
	var pixelCheck = subPixel * sign(jmpSpd);
	while !place_meeting(x + pixelCheck, y, obj_block)
	{
		x+=subPixel;
	}
	// перс стоит на месте
	xspd=0;
}

// само движение
	// горизонталь
	x+=xspd;
	
	// падение вниз
	yspd+=grav;
	// прыжок
	if ( jkp && place_meeting(x, y+1, obj_justblock) )
	{
		yspd=jmp_spd;
	}
	// коллизия по вертикали
	var subPixel=0.5;
	if ( place_meeting(x, y + yspd , obj_justblock) )
	{
		var pixelCheck=subPixel*sign(yspd);
		
		while !place_meeting(x,y+pixelCheck,obj_justblock)
		{
			y+=pixelCheck;
		}
		yspd=0;
	}
	y+=yspd;