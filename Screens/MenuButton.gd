extends TextureButton

@export_file var next_level_path
var next_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	next_scene = load(next_level_path)


func _on_button_up():
	var root = get_tree().get_root()
	var level = root.get_node('MainScreen')
	root.remove_child(level)
	level.call_deferred('free')
	
	var next_level = next_scene.instantiate()
	print(next_level)
	root.add_child(next_level)
