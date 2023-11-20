// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	
	click = mouse_check_button(mb_left);
	r_click = mouse_check_button(mb_right);
	
	space = keyboard_check_pressed(vk_space);
	l_shift = keyboard_check_pressed(vk_shift);
	
	
	move_player();
	
	
	
	//Player Actions
	if(click && canAttack){
		state = "Attack";	
	}
}