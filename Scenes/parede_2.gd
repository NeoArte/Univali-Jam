extends Area2D
@export_range(1,3) var nivel_req: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body: Player):
	if body.level != nivel_req:
		body.state = 1
	
