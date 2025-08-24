extends CharacterBody2D


const SPEED = 300.0

signal interact

@export var player_id: int = 0 # Set this in the inspector for each player instance

func _physics_process(delta: float) -> void:
	velocity = Input.get_vector(
		"p%d_move_left" % player_id, 
		"p%d_move_right" % player_id,
		"p%d_move_up" % player_id,
		"p%d_move_down" % player_id) * SPEED * delta
	
	move_and_slide()
