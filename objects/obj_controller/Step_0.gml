#region pause
//chave do pause
if(keyboard_check_pressed(vk_escape)){
	//pause
	if(!pause){
		pause = true;
		
		//desativar
		instance_deactivate_all(true);
		pauseSurf = surface_create(RES.WIDTH, RES.HEIGHT);
		
		surface_copy(pauseSurf, 0, 0, application_surface);
		
		//ui
		event_user(0);
		
		//reativar
	}else{
		pause = false;
		
		instance_activate_all();
		
		if(surface_exists(pauseSurf)){
			surface_free(pauseSurf);
		}
		
		//ui remove
		event_user(1);
	}
}
#endregion

//paused
if (pause) {
	//scroll menu
	var _wheel = mouse_wheel_up() - mouse_wheel_down();
	_wheel *= 40;
	
	cMenuScroll += _wheel;
	
	//limite
	cMenuScroll = clamp(cMenuScroll, -cMenuHeight, 0);
	
	
	//aplicar
	with(obj_ButtonCraft){
		y = ystart + other.cMenuScroll;
	}
	with(obj_ButtonTitle){
		y = ystart + other.cMenuScroll;
	}
} 