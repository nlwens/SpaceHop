extends Node2D

var tile = preload("res://tile.tscn")
var tile2 = preload("res://tile2.tscn")
var width

# Called when the node enters the scene tree for the first time.
func _ready():
	width = get_viewport().get_visible_rect().size.x
	randomize()
	var y = 0
	while y > -30000:
		var new_tile = tile.instantiate()
		var new_tile2 = tile2.instantiate()
		new_tile.set_position(Vector2(randf_range(-width/2,width/2),y))
		new_tile2.set_position(Vector2(randf_range(-width/2,width/2),y+200))
		add_child(new_tile)
		add_child(new_tile2)
		y -= randf_range(100,250)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
