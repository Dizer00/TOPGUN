hp-=other.power_a
objPlayer.charge+=1
fire+=5
instance_destroy(other);
var dir = point_direction(x,y,other.x,other.y);