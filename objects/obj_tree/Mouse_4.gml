
/* MEU PRIMEIRO CODIGO BUELO 
if (broke=4)
	global.wood ++;
if (broke=3)
	global.wood ++;
if (broke=2)
	global.wood ++;
if (broke=1)
	global.wood ++;
	*/
	
if canbreak = true
	{
	if (broke > 0 && broke < 5)
{
		broke-=1;
		global.wood++;	
		audio_play_sound(sound0,1,0)
}
	}



