/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
particle_System = part_system_create();


particle_Dust = part_type_create();

part_type_sprite(particle_Dust,spr_Dust,0,0,1);
part_type_size(particle_Dust,0.5,1,0.001,0);
part_type_direction(particle_Dust,0,359,0,1);
part_type_speed(particle_Dust,0.1,0.2,-0.004,0);
part_type_life(particle_Dust,10,15);
part_type_orientation(particle_Dust,0,359,0.1,1,0);
part_type_alpha3(particle_Dust, 0.1, 0.2 , 0.01);