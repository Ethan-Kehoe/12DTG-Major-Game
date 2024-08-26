extends Node3D

var speed = 2
var velocity = 2
var accelerate = 10

@onready var nav: NavigationAgent3D = $player/NavigationAgent3D
@onready var motion_platform = $platform
@onready var right_motion = $right_wall
@onready var left_motion = $left_wall
@onready var front_motion = $front
@onready var target = $target

enum State { Normal, On, Off }

var current_state = State

func _ready():
	current_state = State.Normal
	pass # Replace with function body.

func _physics_process(delta):
	
	var direction = Vector3()
	
	nav.target_position = target.global_position
	
	direction = nav.get_next_path_position() - global_position
	direction = direction.normalized()
	
	velocity = direction * speed * accelerate * delta
	




func _on_animated_sprite_3d_ready():
	pass # Replace with function body.


func _on_player_ready():
	pass # Replace with function body.
