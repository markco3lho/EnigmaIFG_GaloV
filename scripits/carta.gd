extends Area2D

var can_interact = false
const DIALOG = preload ("res://scanes/scanes dialog box/carta_info.tscn")

func _on_carta_body_entered(body):
	if body.name == "player":
		$inte1.visible = true
		$inte2.visible = true
		can_interact = true
	pass 

func _on_carta_body_exited(body):
	if body.name == "player":
		$inte1.visible = false
		$inte2.visible = false
		can_interact = false
	pass 
	
func _input(event):
	if Input.is_action_just_pressed("interagir") and can_interact == true:
		$inte1.visible = false
		$inte2.visible = false
		var dialog = DIALOG.instance()
		get_parent().add_child(dialog)
pass
