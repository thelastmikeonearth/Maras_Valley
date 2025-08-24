extends StaticBody2D

var is_open := false

@onready var door = $AnimatedSprite2D

func open():
	door.play()
	is_open = true
	
func close():
	door.play_backwards()
	is_open = false
	
func _input(event):
	#if Input.is_action_pressed("p%d_move_left" % player_id):
		if is_open:
			close()
		else:
			open()
