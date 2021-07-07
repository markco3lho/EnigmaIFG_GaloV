extends Button

func _on_Button_mouse_entered():
	$menu_navigative.play()
	$sprite.modulate.r = 0.7
	$sprite.modulate.g = 0.7
	$sprite.modulate.b = 0.7
	pass 
func _on_Button_mouse_exited():
	pass 
	$menu_navigative.play()
	$sprite.modulate.r = 1
	$sprite.modulate.g = 1
	$sprite.modulate.b = 1
func _on_Button_pressed():
	$menu_navigative.play()
	$sprite.modulate.r = 0.5
	$sprite.modulate.g = 0.5
	$sprite.modulate.b = 0.5
	
	pass 
