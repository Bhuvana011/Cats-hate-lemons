x_speed = 0; 
y_speed += .5;
if keyboard_check(vk_right) {
	x_speed = walk_speed;
	
}
if keyboard_check(vk_left) {
	x_speed = -walk_speed;
}
if (place_meeting(x, y + 1, oSolid)) { 

    if (keyboard_check_pressed(vk_up)) { 

        y_speed = -7; 

    } else { 

        y_speed = 0; 

    }

}
move_and_collide(x_speed, y_speed, oSolid);

if (place_meeting(x, y, oLemon)) { 

    room_restart();

}
if (y > (room_height) or y < 0 or x > room_width) { 

    room_restart();
}

if(place_meeting(x, y, oFLag)){
	x=0;
	y=0;
}

if(place_meeting(x, y, oStar)){
	room_goto(Win);
}
