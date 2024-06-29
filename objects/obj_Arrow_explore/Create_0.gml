/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
xspd=0;
yspd=0;
destroy=false;
time=0
type="poison"
spd_boost=abs(objPlayer.xspd+objPlayer.yspd)/2
dir_boost=abs(objPlayer.moveDir)/2
sped=3;
poison_dmg=1
poison_time=5
power_a=1
dir=random_range(-4,4)
maxdist=400+(abs(spd_boost)*30);


