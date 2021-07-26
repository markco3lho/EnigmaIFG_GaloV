extends Area2D

var can_interact1 = false
const DIALOG = preload ("res://scanes/scanes dialog box/carta_info.tscn")

func _on_carta_body_entered(body):
	print('carta')
	if body.name == "player":
		$Label1.visible = true
		$Label2.visible = true
		can_interact1 = true
	pass 

func _on_carta_body_exited(body):
	if body.name == "player":
		$Label1.visible = false
		$Label2.visible = false
		can_interact1 = false
	pass 
	
func _input(event):
	if Input.is_action_just_pressed("interagir") and can_interact1 == true:
		$Label1.visible = false
		$Label2.visible = false 
		$click.play()
		var dialog = DIALOG.instance()
		get_parent().add_child(dialog)
		queue_free()
pass
