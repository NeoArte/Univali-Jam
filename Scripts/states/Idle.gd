extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func run(player: PlayerClass):
	# print('IDLE')
	
	if player.anim_player.get_current_animation() == 'Transition_3-2':
		
		return
	
	player.position = player.position.snapped(Vector2(256/2, 152))
	player.anim_player.stop()
	player.startup_anim_player.stop()
	
	# Get the input direction and handle the movement/deceleration.
	var horizontal_dir = Input.get_axis("LeftMove", "RightMove")
	var vertical_dir = Input.get_axis("UpMove", "DownMove")
	if horizontal_dir:
		player.direction = Vector2(horizontal_dir, 0)
	elif vertical_dir:
		player.direction = Vector2(0, vertical_dir)
	if player.direction != Vector2(0,0):
		player.state = 2
		var startup = 'Startup' if player.state == 3 else ''
		match player.direction:
			Vector2(-1,0):
				player.startup_anim_player.play('Level%s/%sWalkingLeft' % [player.level, startup])
			Vector2(1,0):
				player.startup_anim_player.play('Level%s/%sWalkingRight' % [player.level, startup])
			Vector2(0,-1):
				player.startup_anim_player.play('Level%s/WalkingUp' % player.level)
			Vector2(0,1):
				player.startup_anim_player.play('Level%s/WalkingDown' % player.level)
		return
	player.anim_player.play('Level%s/Idle' % player.level)
