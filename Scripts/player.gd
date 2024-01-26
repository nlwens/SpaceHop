extends RigidBody2D

@export_node_path("Camera2D") var camera_path
var jump_speed = 600
var speed = 200
var gravity = 7
var isAlive = true
var deadzone_y = -1
@export_node_path("CollisionShape2D") var feet
var camera

# Called when the node enters the scene tree for the first time.
func _ready():
	camera = get_node(camera_path)
	set_process(true)


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

		# Apply gravity
		ySpeed += gravity
		set_linear_velocity(Vector2(get_linear_velocity().x, ySpeed))

		if get_position().x > camera.get_viewport_rect().size.x/2:
			set_position(Vector2(-camera.get_viewport_rect().size.x/2,get_position().y))
			pass
			
		if get_position().x < -camera.get_viewport_rect().size.x/2:
			set_position(Vector2(camera.get_viewport_rect().size.x/2,get_position().y))
			pass
	pass

func _on_deadzone_enter():
	# Action when entering the dead zone (fallen down)
	isAlive = false
	print("Entered the dead zone.")
	await get_tree().create_timer(1).timeout
	_reset_to_main_menu()
	# Add any other actions or behavior when the character enters the dead zone here

func _reset_to_main_menu():
	# Implement your logic to reset to the main menu here
	# For example, you can load a new scene or reset the current scene
	# Replace the following line with your actual code
	print("Resetting to main menu...")
	get_tree().change_scene_to_file("res://scene/deadscene.tscn")
	pass

func collision(body):
	if body.is_in_group('paddles') and get_linear_velocity().y > 0 and isAlive:
		$Jump.play()
		set_linear_velocity(Vector2(0, -jump_speed))
	pass

func whole_body(body):
	
	if body.is_in_group('banana_trash') and isAlive:
		$HitBanana.play()
		
	if body.is_in_group('bottle_trash') and isAlive:
		$HitBottle.play()
		
	if body.is_in_group('apple_trash') and isAlive:
		$HitApple.play()
		
	if body.is_in_group('bottle1_trash') and isAlive:
		$HitBottle1.play()
		
	if body.is_in_group('can_trash') and isAlive:
		$HitCan.play()
		
	if body.is_in_group('deadzone'):
		_on_deadzone_enter()
		
	pass # Replace with function body.
