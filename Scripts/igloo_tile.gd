extends Area2D

@export_file var next_level_path
var s: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	s = load(next_level_path)
	pass # Replace with function body.


func _on_body_entered(body: PlayerClass):
	var root = get_tree().get_root()
	var level = root.get_node('Level')
	root.remove_child(level)
	level.call_deferred('free')
	
	var next_level_res = load('res://Animations/Level1.res')
	print('BATATATATATATATATATATATA')
	var next_level = s.instantiate()
	print(body.direction)
	body.direction = Vector2.ZERO
	body.state = 3
	root.add_child(next_level)
