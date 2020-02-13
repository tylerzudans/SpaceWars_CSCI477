/// @description create instances of screen crawling text, and continue to next level if any key is pressed.
// You can write your code in this editor

if(keyboard_check(vk_anykey))
{
	room_goto(room0)	
}

//increase counter
counter++;
counter%=(red_text_frq*gold_text_frq);

//spawn texts
if(counter%red_text_frq == 0 && object_exists(text_object)){//spawn red text
	
	text_instance = instance_create_depth(0,random_range(height1,height2),0,text_object);
	text_instance.image_yscale=text_scale;//scale
	text_instance.image_xscale=text_instance.image_yscale;//scale
	text_instance.sprite_index=red_sprite;
	text_instance.hspeed=red_text_spd;
	//text_instance.phy_angular_velocity = 1;
	text_instance.image_angle=270;
}

if(counter%gold_text_frq == 0 && object_exists(text_object)){//spawn gold text
	
	text_instance = instance_create_depth(1,random_range(height1,height2),0,text_object);
	text_instance.image_yscale=text_scale;//scale
	text_instance.image_xscale=text_instance.image_yscale;//scale
	text_instance.sprite_index=gold_sprite;
	text_instance.hspeed=gold_text_spd;	
}


//debug
//instance_create_depth(0,0,0,text_object);