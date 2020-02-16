
draw_set_color(c_white)
draw_text(75,53,"Madeira: "+string(global.wood));


if global.vida = 4 {
draw_sprite(spr_vida,0,60,40);
}

if global.vida = 3 {
draw_sprite(spr_vida,1,60,40);
}

if global.vida = 2 {
draw_sprite(spr_vida,2,60,40);
}

if global.vida = 1 {
draw_sprite(spr_vida,3,60,40);
}

if global.vida = 0 {
draw_sprite(spr_vida,4,60,40);
}