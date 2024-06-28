// конструктор на образец для создания оружия
function createweapons( _sprite, _wlength, _bulletObj, _cooldown ) constructor
{
	sprite=_sprite;
	length=_wlength;
	bulletObj=_bulletObj;
	cooldown=_cooldown;
}

// СПИСОК ОБЬЕКТОВ С КОЛИЗИЕЙ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!_________!_______
global.Obj_notsolid_list=[objBlock,Xyu]
//лист ружий
global.WeaponsList = {
	
	weapon1 : new createweapons(
		spr_gun, 
		sprite_get_bbox_right(spr_gun)-sprite_get_xoffset(spr_gun),
		objBullet,
		5
		),
		
	weapon2 : new createweapons(
		spr_gun2, 
		sprite_get_bbox_right(spr_gun)-sprite_get_xoffset(spr_gun),
		objBullet2,
		15
		)
	
}