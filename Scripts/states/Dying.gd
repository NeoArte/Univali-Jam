extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func run(player: PlayerClass):
	player.anim_player.play('DeathAnimation')
	player.state = 4
	
func die():
	get_tree().reload_current_scene()
