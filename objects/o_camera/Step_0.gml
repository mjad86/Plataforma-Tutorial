///@desc update camera

//Update destination
if(instance_exists(follow)) {
	
	xTo = follow.x;
	yTo = follow.y;
	
}//end if

//Update object position
x += (xTo - x) * 0.15;
y += (yTo - y) * 0.15;

//Maintain camera inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);
