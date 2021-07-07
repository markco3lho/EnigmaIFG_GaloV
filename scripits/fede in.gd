extends AnimationPlayer


func _on_fede_in_animation_finished(anim_name):
	queue_free()
	pass 


func _on_creditos_pressed():
	play()
	pass 
