// конструктор на образец для создания оружия
function createweapons( _sprite, _wlength, _bulletObj, _cooldown ) constructor
{
	sprite=_sprite;
	length=_wlength;
	bulletObj=_bulletObj;
	cooldown=_cooldown;
}

// СПИСОК ОБЬЕКТОВ С КОЛИЗИЕЙ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!_________!_______
global.Obj_solid_list=[objBlock,Xyu,objBack,objDrevo1,objDrevo2,objDrevo3,objDrevo4,objPenok,objPenok2]
//Updated upstream
// СПИСОК ВРАГОВ ____________!"""""""""""""!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//Stashed changes
global.Enemies_list=[objVolckolack,objPoludnica,ObjGrib,objChert,objLeshiy]
//лист ружий
global.stats=[10,10,6]
global.WeaponsList = {
	
	weapon1 : new createweapons(
		spr_gun, 
		sprite_get_bbox_right(spr_gun)-sprite_get_xoffset(spr_gun),
		obj_Arrow_posion,
		15
		),
		
	weapon2 : new createweapons(
		spr_gun2, 
		sprite_get_bbox_right(spr_gun)-sprite_get_xoffset(spr_gun),
		objBullet2,
		15
		),
	weapon3 : new createweapons(
		spr_gun2, 
		sprite_get_bbox_right(spr_gun)-sprite_get_xoffset(spr_gun),
		obj_Arrow_explore,
		15
		)
	
}