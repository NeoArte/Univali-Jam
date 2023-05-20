extends CharacterBody2D
class_name Player

const SPEED = 300.0

@export var state = 1
var direction = Vector2(0, 0)

@onready var idle = get_node('States/Idle')
@onready var moving = get_node('States/Moving')

@onready var states_nodes = {
	'1': idle,
	'2': moving
}

func _init():
	pass

func _physics_process(delta):
	match state:
		1:
			direction = states_nodes['1'].run()
			if direction != Vector2(0,0):
				state = 2
		2:
			var direction = states_nodes['2'].run(self, delta)
