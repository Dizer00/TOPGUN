draw_set_font(fntMainMenu);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// вывод надписей в меню
for(var i=0; i<2; i++)
{
	var _c = c_white;
	if pos==i {_c=c_yellow};
	draw_text_color(x, y+op_space*i, option[i], _c,_c,_c,_c,1);
}