extends Node2D

# Assuming MoneyDisplay is a direct child of the world scene
@onready var money_display = get_node_or_null("MoneyDisplay")
@onready var score_label = get_node("MoneyDisplay/ScoreLabel")  # Adjust the path


# Called when the node enters the scene tree for the first time.
func _ready():
	# Initial setup
	set_process(true)  # Ensure that _process() gets called

func _process(delta):
	score_label.text = str(GameState.score)  # Update the score label each frame
