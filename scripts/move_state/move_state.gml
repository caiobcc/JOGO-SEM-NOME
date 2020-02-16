script_execute(get_input);
#region //mover
//MOVER
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);

//conseguir direção

var dir = point_direction(0,0,xaxis,yaxis)

if (xaxis == 0) and (yaxis == 0)
{
	len=0;
} else {
	len=spd;
}

//Variaveis de velocidade
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// COLISÃO CHECK
if place_meeting(x+hspd,y,obj_wall) {
	while !place_meeting(x+hspd,y,obj_wall) {
	x += sign(hspd)
}
hspd = 0;
}
x+=hspd;


// Colission Vertical
if place_meeting(x,y+vspd,obj_wall) {
	while !place_meeting(x,y+vspd,obj_wall) {
	y += sign(vspd)
}
vspd = 0;
}
y+=vspd;
#endregion



//Control sprite
image_speed = sign(len)*1.0;
if (len == 0) image_index = 0;

//Sprites na Vertical (CIMA E BAIXO)

if (vspd > 0) {
sprite_index = player_down
} else if (vspd <0) { 
sprite_index = player_up
}

//Sprites na horizontas (LADOS)
if (hspd > 0) {
sprite_index = player_right
} else if (hspd <0) { 
sprite_index = player_left
}