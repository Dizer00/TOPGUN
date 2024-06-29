// управление
#region управление
	rightKey = keyboard_check( ord ("D") );
	upKey = keyboard_check( ord ("W") );
	leftKey = keyboard_check( ord ("A") );
	downKey = keyboard_check( ord ("S") );
	qKey = keyboard_check( ord ("Q") );
	shiftKey = keyboard_check( vk_lshift );
	shootKey= mouse_check_button(mb_right);
	attackKey= mouse_check_button_released(mb_left);
#endregion

#region ультра каст
if qKey==1 and charge>=5{
	x=true
	while x==true{
		i=random(array_length(global.Enemies_list))
		show_message(global.Enemies_list)
		obj=global.Enemies_list[i]
		nea=instance_nearest(x, y, obj)
		if (instance_exists(obj)) and nea!=-4
			x=false
			nea.hp-=5
			instance_create_layer(nea.x,nea.y,layer.id,obj_Arrow)}
}

#endregion

#region супер мега отрыжка бутерброда (молюсь богу ебли чтобы не пропало)
	if cool_cur<cool_max{
	cool_cur+=1}
	if shiftKey==1 && cool_cur==cool_max
	{
		boost=3
		invisible=true
		len-=1
		if len<0{
		len=8
		boost=1
		invisible=false
		cool_cur=0
		}
	}
	else{
		boost=1
		invisible=false
	}
#endregion

#region движение
	// вычисление нарпавления
	var horizKey = rightKey - leftKey;
	var vertKey = downKey - upKey;
	moveDir = point_direction(0,0, horizKey, vertKey); // movedir содержит в себе угол
	
	// вычисление скоростей
	var spd=0;
	var inputLevel = point_distance(0,0, horizKey, vertKey); // inputLevel - двигается ли игрок
	inputLevel= clamp(inputLevel, 0,1)
	spd = moveSpd * inputLevel;
	
	xspd = lengthdir_x(spd, moveDir)*boost;
	yspd = lengthdir_y(spd, moveDir)*boost;
	
	// коллизии
	for (var i=0; i<array_length(global.Obj_solid_list);i+=1)
		if place_meeting(x+xspd, y, global.Obj_solid_list[i]) 
		{
			xspd=0;
		}
	for (var i=0; i<array_length(global.Obj_solid_list);i+=1) 
		if place_meeting(x, y+yspd, global.Obj_solid_list[i])
		{
			yspd=0;
		}
	
	// движение игрока
	if x+xspd>0 and x+xspd < room_width{
	x+=xspd;}
	if y+yspd>0 and y+yspd < room_height{
	y+=yspd;}
	
	
	// глубина расположения (без использования слоев)
	depth=-bbox_bottom;
	
	// отрыжка мега супер неуязвимость ультра (рывок короче)
	
	#endregion 


#region прицеливание

	centreY=y+centreYoffset;
	
	// aim
	aimdir=point_direction(x,centreY, mouse_x, mouse_y);
	
#endregion

#region спрайты поворота игрока

	if ( aimdir<=90 || aimdir>=270 )
	{
		image_xscale=1;
	}
	else
	{
		image_xscale=-1;
	}
	if (xspd==0 && yspd==0) {image_index=0;}

	#endregion


#region стрельба
if (shootKey && shootimer<=0)
{
	shootimer=weapon.cooldown;
	var xoffset=lengthdir_x(weaponOffestDist+weapon.length, aimdir);
	var yoffset=lengthdir_y(weaponOffestDist+weapon.length, aimdir);
	var bulletInst = instance_create_depth(x+xoffset, centreY+yoffset, depth-100, weapon.bulletObj);
	
	//направление полета
	
	with(bulletInst)
	{
		dir+=other.aimdir;
	}
	
}

shootimer--;
#endregion

#region ближний бой

if attackKey 
{
	sprite_index=sprPlayermech;
	instance_create_depth(x+weaponOffestDist, centreY, 1, obj_hit);
<<<<<<< Updated upstream
	alarm[0]=1;
=======
>>>>>>> Stashed changes
}