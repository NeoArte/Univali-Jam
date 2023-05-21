extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func run(player: PlayerClass, delta: float):
	if not player.audio.playing:
		player.audio.play()
	var motion = player.direction * player.speed * delta
	var col_info = player.move_and_collide(motion * 3, true)
	if col_info:
		player.audio.stop()
		if not player.col_audio_player.playing:
			player.col_audio_player.play()
		player.direction = Vector2.ZERO
		player.state = 1
		return
	player.move_and_collide(motion)
