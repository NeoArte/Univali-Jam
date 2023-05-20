extends CharacterBody2D
class_name Player

const SPEED = 300.0

@export var state = 1
@export var level = 3
var direction = Vector2(0, 0)

@onready var idle = get_node('States/Idle')
@onready var moving = get_node('States/Moving')
@onready var dying = get_node('States/Dying')

@onready var states_nodes = {
	'1': idle,
	'2': moving,
	'3': dying,
}

@onready var startup_anim_player = get_node('StartupAnimationPlayer')
@onready var anim_player = get_node('AnimationPlayer')

func _init():
	pass
	
func add_level():
	level += 1 if level <= 3 else 0

func remove_level():
	level -= 1 if level >= 1 else 0

func _physics_process(delta):
	match state:
		1:
			states_nodes['1'].run(self)
		2:
			states_nodes['2'].run(self, delta)
		3:
			states_nodes['3'].run()
