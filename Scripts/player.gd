extends RigidBody2D
@export_node_path("Camera2D") var camera_path

var jump_speed = 600
var speed = 200
<<<<<<< Updated upstream
var camera

=======
var gravity = 9
var isAlive = true
var deadzone_y = -1
@export_node_path("CollisionShape2D") var feet
>>>>>>> Stashed changes
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	camera = get_node(camera_path)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var left_key = Input.is_action_pressed("ui_left")
	var right_key = Input.is_action_pressed("ui_right")
	var ySpeed = get_linear_velocity().y
	if left_key:
		set_linear_velocity(Vector2(-speed, ySpeed))
	if right_key:
		set_linear_velocity(Vector2(speed, ySpeed))
	pass

func collision(body):	
	if body.is_in_group('deadzone'):
<<<<<<< Updated upstream
		$Fail.play()
	pass
	
	if body.is_in_group('paddles') and get_linear_velocity().y > 0:
		$Jump.play()
		set_linear_velocity(Vector2(0,-jump_speed))
	pass
=======
		_on_deadzone_enter()
	pass # Replace with function body.



>>>>>>> Stashed changes
