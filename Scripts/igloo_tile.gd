extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_body_entered(body: Player):
	body.add_level()


func _on_ChangeScene_body_entered(body: Player):

	get_tree().change_scene("res://teste.tscn")
