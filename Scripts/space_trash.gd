extends StaticBody2D
@export_node_path("Camera2D") var camera_path

var direction = Vector2.RIGHT
var velocity = Vector2.ZERO
var speed = 100
var width : float

func _ready():
	set_process(true)
	pass

func _process(delta):
	width = get_viewport_rect().size.x
	velocity = direction * speed
	position += velocity * delta
	prints(position.x)
	if position.x > width/2 - 50:
		direction *= -1
	elif position.x < -width/2 + 50:
		direction *= -1
	pass

func response():
	emit_signal("delete_object",self)
