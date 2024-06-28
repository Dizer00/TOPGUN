/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if cool>40{
other.hp-=1
cool=0}
if other.hp==5{
Object13_2.sprite_index=Sprite16_1
}
if other.hp==4{
Object13_2.sprite_index=Sprite16_2
}
if other.hp==3{
Object13_1.sprite_index=Sprite16_1
}
if other.hp==2{
Object13_1.sprite_index=Sprite16_2
}
if other.hp==1{
Object13.sprite_index=Sprite16_1
}
if other.hp==0{
Object13.sprite_index=Sprite16_2
room_restart()
}