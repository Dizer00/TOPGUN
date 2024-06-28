// движение
moveDir = 0;
moveSpd = 5;
xspd = 0;
yspd = 0;
//  стата типо хп
hp=0;
// будет ли игрок сасать
invisible=false

// спрайты оружия
centreYoffset=-30;
weaponOffestDist=30;
aimdir=0;

// спрайты передвижения
face=2;
sprite=[sprPlayerR, sprPlayerU, sprPlayerL];

// инфа о стрельбе
	// баланс темпа стрельбы
	shootimer=0;
	
	weapon=global.WeaponsList.weapon2;