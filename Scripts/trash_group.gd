extends Node2D

var trash = preload("res://scene/Space_trash.tscn")
var width = get_viewport_rect().size.x

# Called when the node enters the scene tree for the first time.
func _ready():
	width = get_viewport().get_visible_rect().size.x
	randomize()
	var y = 0
	while y > -30000:
		var trash = trash.instantiate()
		trash.set_position(Vector2(randf_range(-width/2,width/2),y))
		add_child(trash)
		y -= randf_range(300,550)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
