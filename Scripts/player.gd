extends RigidBody2D
@export_node_path("Camera2D") var camera_path

var jump_speed = 600
var speed = 200
var camera
var isAlive = true

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	camera = get_node(camera_path)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if isAlive:
		var left_key = Input.is_action_pressed("ui_left")
		var right_key = Input.is_action_pressed("ui_right")
		var ySpeed = get_linear_velocity().y
		if left_key:
			set_linear_velocity(Vector2(-speed, ySpeed))
		if right_key:
			set_linear_velocity(Vector2(speed, ySpeed))
	pass

func collision(body):		
	if body.is_in_group('paddles') and get_linear_velocity().y > 0:
		$Jump.play()
		set_linear_velocity(Vector2(0,-jump_speed))
	pass


func whole_body(body):
	if body.is_in_group('deadzone'):
		BgAudio.stop()
		$Fail.play()
		get_node("Area2D").queue_free();
		isAlive = false
	pass # Replace with function body.



