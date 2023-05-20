extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func run():
	# Get the input direction and handle the movement/deceleration.
	var horizontal_dir = Input.get_axis("LeftMove", "RightMove")
	var vertical_dir = Input.get_axis("DownMove", "UpMove")
	
	if horizontal_dir:
		return Vector2(horizontal_dir, 0)
	elif vertical_dir:
		return Vector2(0, vertical_dir)
	return Vector2(0, 0)
