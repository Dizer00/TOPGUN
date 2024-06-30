/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
c_lightblue=#005555
draw_set_alpha(0.5);
draw_rectangle_color(0,0,140,90,c_lightblue,c_black,c_black,c_black,false)
draw_set_colour(c_yellow);
draw_set_font(Font1);


if cur_arrow=="basic"{
draw_sprite_stretched(spr_Arrow,0,-10,-20,150,150)
draw_text(80,45,arrows[0])}

if cur_arrow=="explosive"{
draw_sprite_stretched(spr_Arrow_explore,0,-10,-20,150,150)
draw_text(80,45,arrows[1])}

if cur_arrow=="poison"{
draw_sprite_stretched(spr_Arrow_posion,0,-10,-20,150,150)
draw_text(80,45,arrows[2])}
draw_set_alpha(1);


if hp==6{
	draw_sprite(Sprite16,0,10,10)
	draw_sprite(Sprite16,0,50,10)
	draw_sprite(Sprite16,0,90,10)
}
if hp==5{
	draw_sprite(Sprite16,0,10,10)
	draw_sprite(Sprite16,0,50,10)
	draw_sprite(Sprite16_1,0,90,10)
}
if hp==4{
	draw_sprite(Sprite16,0,10,10)
	draw_sprite(Sprite16,0,50,10)
	draw_sprite(Sprite16_2,0,90,10)
}
if hp==3{
	draw_sprite(Sprite16,0,10,10)
	draw_sprite(Sprite16_1,0,50,10)
	draw_sprite(Sprite16_2,0,90,10)
}
if hp==2{
	draw_sprite(Sprite16,0,10,10)
	draw_sprite(Sprite16_2,0,50,10)
	draw_sprite(Sprite16_2,0,90,10)
}
if hp==1{
	draw_sprite(Sprite16_1,0,10,10)
	draw_sprite(Sprite16_2,0,50,10)
	draw_sprite(Sprite16_2,0,90,10)
}
if hp==0{
	draw_sprite(Sprite16_2,0,10,10)
	draw_sprite(Sprite16_2,0,50,10)
	draw_sprite(Sprite16_2,0,90,10)
}
