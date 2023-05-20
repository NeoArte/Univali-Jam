extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func run(player: Player, delta: float):
	var motion = player.direction * 100 * delta
	var col_info = player.move_and_collide(motion)
	print(col_info, player.position)
	if col_info:
		player.state = 1
