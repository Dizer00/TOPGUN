if (aimdir>=0 && aimdir<180){
draweapon();
}

draw_self(); // если используем это событие, то функция нужна или перс пропадет

if (aimdir>=180 && aimdir<360){
draweapon();
}