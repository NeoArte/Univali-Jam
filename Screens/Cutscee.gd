extends Control


func _ready():
	$AnimationPlayer.play('Cutscene')

func next_scene():
	var root = get_tree().get_root()
	var level = root.get_node('Cutscee')
	root.remove_child(level)
	level.call_deferred('free')
	
	var next_level = load("res://Scenes/Levels/Level1.tscn").instantiate()
	print(next_level)
	root.add_child(next_level)
