if(oPlayer.click && movePointer == 0){
	initialMouseX = mouse_x;
	initialMouseY = mouse_y;
	movePointer = 1;	
} else if(!oPlayer.click){
	movePointer = 0;	
	lastMouseX = pointerX;
	lastMouseY = pointerY;
}