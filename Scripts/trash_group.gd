extends Node2D

var bottle_trash = preload("res://scene/Space_trash.tscn")
var banana_trash = preload("res://scene/banana_trash.tscn")
var width = get_viewport_rect().size.x

# Called when the node enters the scene tree for the first time.
func _ready():
	width = get_viewport().get_visible_rect().size.x
	randomize()
	var y = 0
	while y > -300000:
		var trashtemp = randi_range(-1,1)
		var temp = randi_range(-1,1)
		if trashtemp >=0:
			var bottle_trash = bottle_trash.instantiate()
			bottle_trash.set_position(Vector2((width/2)*temp,y))
			await get_tree().create_timer(2).timeout
			add_child(bottle_trash)
		else :
			var banana_trash = banana_trash.instantiate()
			banana_trash.set_position(Vector2((width/2)*temp,y))
			await get_tree().create_timer(2).timeout
			add_child(banana_trash)
		y -= randf_range(300,550)
		prints(y)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
