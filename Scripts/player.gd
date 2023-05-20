extends CharacterBody2D


const SPEED = 300.0

var collision_shape = get_node("States")
var levels = {
	1: get_node("Levels/Level1"),
	2: get_node("Levels/Level2"),
	3: get_node("Levels/Level3"),
}

func _init():
	collision_shape.set_shape()

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
