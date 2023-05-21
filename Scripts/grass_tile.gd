extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_body_entered(body: PlayerClass):
	var tween = get_tree().create_tween()
	print(body.spr.scale)
	tween.tween_property(body.spr, "scale", Vector2(body.spr.scale.x,0), 0.5).set_trans(Tween.TRANS_BOUNCE)
	tween.tween_property(body.spr, "scale", Vector2(body.spr.scale.x,1), 0.5).set_trans(Tween.TRANS_BOUNCE)
	tween.tween_callback(body.stop_idle)
	body.remove_level()

func _on_body_exited(body: PlayerClass):
	pass
