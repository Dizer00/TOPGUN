/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
//font_set_cache_size(fntMainMenu, currentFontSize * 0.5)

draw_set_font(fntMainMenu_1);

switch (CurrentStep)

{

case 1:
draw_text(objChelVolk.x - 70 ,objChelVolk.y - 50 ,"Я быстрее\nИлюша");
break

case 4:
draw_text(objPlayer.x - 120 ,objPlayer.y - 150,"СТОЙ окоянный!\n Куда делся то? Ну ничего\n, все равно найду и башка твоя\n с плеч улетит!");
break
}