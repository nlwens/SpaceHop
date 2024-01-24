extends Node2D

var bottle_trash_scene = preload("res://scene/bottle_trash.tscn")
var banana_trash_scene = preload("res://scene/banana_trash.tscn")
var can_trash_scene = preload("res://scene/can_trash.tscn")
var bottle1_trash_scene = preload("res://scene/bottle1_trash.tscn")
var apple_trash_scene = preload("res://scene/apple_trash.tscn")
var width = get_viewport_rect().size.x

func _ready():
	width = get_viewport().get_visible_rect().size.x
	randomize()

func _on_TrashSpawnTimer_timeout():
	var camera_position = get_node("/root/world/Camera2D").global_position  # Adjust the path
	var y_spawn_offset = 800  # Offset for spawning above the camera. Adjust as needed.
	var y = camera_position.y - y_spawn_offset

	var position_x = randf_range(-width , width )  # Random X position within the viewport width

	var trash_type = randi() % 5  # Randomly choose between 0 and 1
	var trash_instance

	if trash_type == 0:
		trash_instance = bottle_trash_scene.instantiate()
	elif trash_type == 1:
		trash_instance = can_trash_scene.instantiate()
	elif trash_type == 2:
		trash_instance = bottle1_trash_scene.instantiate()
	elif trash_type == 3:
		trash_instance = apple_trash_scene.instantiate()
	else:
		trash_instance = banana_trash_scene.instantiate()

	trash_instance.set_position(Vector2(position_x, y))
	add_child(trash_instance)

	print("Spawning trash at: ", Vector2(position_x, y))
