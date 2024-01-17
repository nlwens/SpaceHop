extends Node2D

var score = 0  # Tracks the player's score

var in_gameplay = false  # Variable to track game state

func add_score(amount : int):
	score += amount
	# Signal or update UI here if needed


# Called when the node enters the scene tree for the first time.

func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
