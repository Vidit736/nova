extends Node2D

@onready var world = $World
@onready var player = $World/Player  # Make sure this matches your actual node path

var move_speed = 100

func _process(delta):
	if player == null:
		push_error("Player not found!")
		return

	var dir = player.input_dir.normalized()
	if dir != Vector2.ZERO:
		world.position -= dir * move_speed * delta
