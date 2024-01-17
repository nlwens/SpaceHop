extends Node2D
 
var star= preload("res://star.tscn")
func _ready():
	randomize()
	var y=0
	while y > -3000:
		var new_star= star.instance()
		new_star.set_position(Vector2(0,y))
		add_child(new_star)
		y -=randf_range(0,210)
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
