extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.playernum == 1:
		texture = preload("res://P.I.G/s.1.PNG")
		scale = Vector2(0.35, 0.35)
		position = Vector2(0,-40)
		
	if Global.playernum == 2:
		texture = preload("res://P.I.G/s.2.PNG")
		scale = Vector2(0.35, 0.35)
		position = Vector2(0,-40)
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
