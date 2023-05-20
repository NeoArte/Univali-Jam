extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func run(player: Player, delta: float):
	player.velocity = player.direction * 1000 * delta
	# print(player.direction)
	var t = player.move_and_collide(player.position + player.velocity, true)
	print(t)
