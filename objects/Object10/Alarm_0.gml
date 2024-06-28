/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (instance_exists(objPlayer))
{
    
    var new_dirplayer = point_direction(x, y, objPlayer.x, objPlayer.y);
    
 
	var movesp = 10; // Скорость рывка
    motion_set(new_dirplayer, movesp * 2);
}