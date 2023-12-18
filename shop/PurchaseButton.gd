extends Button

# Reference to the main character
#var character : Sprite2D = preload("res://MainChar.png")

# Gold cost for the new image
var purchaseCost : int = 300

# Function called when the purchase button is pressed
func _on_Purchase1Button_pressed():
	# Check if the player has enough gold
	if playerHasEnoughGold():
		# Deduct the gold
		deductGold()

		# Change the character image
		#character.changeCharacterImage(preload("res://s.1.PNG"))
	else:
		# Display a message or handle the case when the player doesn't have enough gold
		print("Not enough gold!")

func _on_Purchase2Button_pressed():
	# Check if the player has enough gold
	if playerHasEnoughGold():
		# Deduct the gold
		deductGold()

		# Change the character image
		#character.changeCharacterImage(preload("res://s.2.PNG"))
	else:
		# Display a message or handle the case when the player doesn't have enough gold
		print("Not enough gold!")


# Function to check if the player has enough gold
func playerHasEnoughGold() -> bool:
	# Replace this with your actual gold tracking system
	return get_player_gold() >= purchaseCost

# Function to deduct gold from the player
func deductGold() -> void:
	# Replace this with your actual gold deduction logic
	set_player_gold(get_player_gold() - purchaseCost)

# Function to get the player's gold (replace with your actual gold tracking system)
func get_player_gold() -> int:
	return 0

# Function to set the player's gold (replace with your actual gold tracking system)
func set_player_gold(amount: int) -> void:
	pass
