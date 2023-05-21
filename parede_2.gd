extends Area2D
@export_range(1,3,1) var nivel_req: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_body_entered(body: PlayerClass):
	print(body.level)
	print(nivel_req)
	if body.level != nivel_req:
		body.state = 1
		body.direction = Vector2.ZERO
