// код на вычисление конечной точки камеры по осям
var sqrend_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
var sqrend_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
// код на вычисление точки появления внутри камеры
var randX = random_range( camera_get_view_x(view_camera[0]), sqrend_x );
var randY = random_range( camera_get_view_y(view_camera[0]), sqrend_y );
// появление на карте, пока что заполняется все точки беспрерывно
if( (coldown<2) && (instance_number(objWolf) < 6) && (distance_to_object(all) > 150) )
{
	alarm[0]=coldown;
	coldown=60;
}
coldown--;