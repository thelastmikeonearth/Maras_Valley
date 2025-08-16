extends CharacterBody2D


const SPEED = 300.0

@export var player_id: int = 0 # Set this in the inspector for each player instance

func _physics_process(_delta: float) -> void:
	velocity = Input.get_vector("p%d_move_left" % player_id, 
	"p%d_move_right" % player_id, "p%d_move_up" % player_id, "p%d_move_down" % player_id) * SPEED

	move_and_slide()
