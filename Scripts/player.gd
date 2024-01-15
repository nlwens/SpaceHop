extends RigidBody2D
@export_node_path("Camera2D") var camera_path

var jump_speed = 600
var speed = 200
var camera
var isAlive = true
<<<<<<< Updated upstream

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	camera = get_node(camera_path)
	pass # Replace with function body.
=======
var deadzone_y = -1
@export_node_path("CollisionShape2D") var feet
@onready var money_display = get_node("../MoneyDisplay")

# When starting the game
func start_game():
	GameState.in_gameplay = true

>>>>>>> Stashed changes

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var money_display = get_node_or_null("CanvasLayer/MoneyDisplay")
	if money_display:
		money_display.visible = GameState.in_gameplay
	
	if isAlive:
		var left_key = Input.is_action_pressed("ui_left")
		var right_key = Input.is_action_pressed("ui_right")
		var ySpeed = get_linear_velocity().y
		if left_key:
			set_linear_velocity(Vector2(-speed, ySpeed))
		if right_key:
			set_linear_velocity(Vector2(speed, ySpeed))
	pass

<<<<<<< Updated upstream
func collision(body):		
	if body.is_in_group('paddles') and get_linear_velocity().y > 0:
=======
func _on_deadzone_enter():
	# Action when entering the dead zone (fallen down)
	isAlive = false
	BgAudio.stop()
	$Fail.play()
	print("Entered the dead zone.")
	await get_tree().create_timer(2).timeout
	_reset_to_main_menu()
	# Add any other actions or behavior when the character enters the dead zone here

func _reset_to_main_menu():
	# Implement your logic to reset to the main menu here
	# For example, you can load a new scene or reset the current scene
	# Replace the following line with your actual code
	money_display.visible = false  # Hide MoneyDisplay when returning to main menu
	print("Resetting to main menu...")
	get_tree().change_scene_to_file("res://main_menu.tscn")
	pass

func collision(body):
	if body.is_in_group('paddles') and get_linear_velocity().y > 0 and isAlive:
		money_display.visible = true  # Show the MoneyDisplay when jumping
>>>>>>> Stashed changes
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



