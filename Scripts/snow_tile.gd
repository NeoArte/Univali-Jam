extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_body_entered(body: PlayerClass):
	var tween = get_tree().create_tween()
	tween.tween_property(body, "scale", Vector2(), 0.5).set_trans(Tween.TRANS_BOUNCE)	
	tween.tween_property(body, "scale", Vector2(1,1), 0.5).set_trans(Tween.TRANS_BOUNCE)
	body.remove_level()	

