extends Control

var dialog = [
		'Bom, apenas um teste!', 
		'Espero que funcione Hehe.'
	]
	
var dialog_index = 0
var fineshed = false

func _ready():
	load_dialog()

func _physics_process(delta):
	$"Ind".visible = fineshed
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()

func load_dialog():
	if dialog_index < dialog.size():
		fineshed = false
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 0, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
			)
		$Tween.start()
	else:
		queue_free()
	dialog_index += 1

func _on_Tween_tween_completed(object, key):
	fineshed = true
