extends KinematicBody2D

var velocidade = Vector2.ZERO

const  VELOCIDADE_MAX = 150
const  ACELERACAO = 500
const  ATRITO = 900

onready var animacaoArvore = $AnimationTree
onready var animacaoEstado = animacaoArvore.get("parameters/playback") 


func _physics_process(delta):
	var resultante = Vector2.ZERO
	resultante.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	resultante.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	resultante = resultante.normalized()
	
	if resultante != Vector2.ZERO: 
		animacaoArvore.set("parameters/Andando/blend_position", resultante)
		animacaoArvore.set("parameters/Parado/blend_position",  resultante)
		
		velocidade = velocidade.move_toward(resultante * VELOCIDADE_MAX, ACELERACAO * delta)
		
		animacaoEstado.travel("Andando")
		
	else: 
		animacaoEstado.travel("Parado")
		velocidade = velocidade.move_toward(Vector2.ZERO, ATRITO * delta)
	
	move_and_slide(velocidade)
