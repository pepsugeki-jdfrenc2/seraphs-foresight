/// @description Insert description here
// You can write your code in this editor
if(hp <= 0){
	state = "Dead";	
}

switch(state){
	case "Idle":
		
	break;
	case "Attack":
	    rotateSpeed = 0.5;
		
	    if (!instance_exists(oAttackSq)) {
	        _atkSqr = instance_create_depth(x, y, depth - 1, oAttackSq);
	    } else {
	        // Find the existing oAttackSq instance
	        _atkSqr = instance_find(oAttackSq, 0); // Get the first instance of oAttackSq
	    }

	    // Check if lastMouseX and lastMouseY are set
	    if (_atkSqr.lastMouseX != 0 || _atkSqr.lastMouseY != 0 ) {
	        var _lastMouseX = _atkSqr.lastMouseX;
	        var _lastMouseY = _atkSqr.lastMouseY;

	        // Destroy the oAttackSq instance and change state
	        with (_atkSqr) instance_destroy();
			rotateSpeed = 70;
	        state = "Idle";
	    }
	break;
	case "Hurt":
	
	break;
	case "Parry":
	
	break;
	case "Dodge":
	
	break;
	case "Immobile":
	
	break;
	case "Dead":
	
	break;
}

