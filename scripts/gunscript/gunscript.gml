// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draweapon()
{
	var xoffset=lengthdir_x(weaponOffestDist, aimdir);
	var yoffset=lengthdir_y(weaponOffestDist, aimdir);
	
	// рисвока пушки
	var weaponYscale=1;
	
	// переворот пушки 
	if aimdir>90 && aimdir<270
	{
		weaponYscale=-1;
	}
	
	draw_sprite_ext( weapon.sprite,0, x+xoffset, centreY+yoffset, 1,weaponYscale, aimdir, c_white, 1);
	
}