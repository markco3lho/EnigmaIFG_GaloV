extends Area2D
var can_interact = false
const DIALOG = preload ("res://scanes/scanes dialog box/res_firma.tscn")

func _on_resfirma_body_entered(body):
	print ("Resposta da Firma")
	if body.name == "player":
		can_interact = true
	pass 

func _on_resfirma_body_exited(body):
	if body.name == "player":
		can_interact = false 
	pass 
func _input(event):
	if Input.is_action_just_pressed("interagir") and can_interact == true:
		var dialog = DIALOG.instance()
		get_parent().add_child(dialog)
pass 
