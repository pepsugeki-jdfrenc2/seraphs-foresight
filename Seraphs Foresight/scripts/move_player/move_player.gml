// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_player(){
		var _hor = (left - right);
		var _vert = (up - down);
	
		//State will never be bruh moment 
		if(state != "Immobile"){
			vsp = approach(vsp, -_vert * speedNorm, accel);
			hsp = approach(hsp, -_hor * speedNorm, accel);
	
			if((right - left) != 0 && (down - up) != 0){
				vsp = approach(vsp, -_vert * speedDiag, accel);
				hsp = approach(hsp, -_hor * speedDiag, accel);
			}
		}
	x += hsp;
	y += vsp;
	
	//Change image angle based on direction moving
	//var newDir = point_direction(x, y, x - _hor, y - _vert);
	
	//Change image angle based on mouse location
	 var newDir = point_direction(x, y, mouse_x, mouse_y);

	// Normalize angles to the range of 0-360 degrees
	newDir = newDir % 360;
	image_angle = image_angle % 360;

	// Calculate the difference in angles and adjust for shortest rotation path
	var angleDiff = (newDir - image_angle + 360) % 360;
	if (angleDiff > 180) {
	    angleDiff -= 360;
	}

	// Rotate the image angle towards the new direction
	// Assuming _hor is not relevant here as we're using mouse for direction
	if(newDir != image_angle) {
	    image_angle = approach(image_angle, image_angle + angleDiff, rotateSpeed);
	}
	
}