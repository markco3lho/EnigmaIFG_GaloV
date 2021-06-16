extends Area2D

var can_interact = false
const DIALOG = preload ("res://scanes/scanes dialog box/dialog_economia.tscn")

func _on_Area2D_body_entered(body):
	if body.name == "player":
		$Label1.visible = true
		$Label2.visible = true
		can_interact = true
	pass 

func _on_Area2D_body_exited(body):
	if body.name == "player":
		$Label1.visible = false
		$Label2.visible = false
		can_interact = false
	pass 
	
func _input(event):
	if Input.is_action_just_pressed("interagir") and can_interact == true:
		$Label1.visible = false
		$Label2.visible = false 
		var dialog = DIALOG.instance()
		get_parent().add_child(dialog)
pass
