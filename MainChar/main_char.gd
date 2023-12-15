extends Node2D

# The current character image
var currentImage : Texture = preload("res://MainChar.png")
#(Make sure to replace "path_to_default_image.png" with the actual path to default character image.)


func _ready():
	# Set the initial character image
	$Sprite.texture = currentImage
	

# Function to change the character image
func changeCharacterImage(newImage: Texture) -> void:
	currentImage = newImage
	$Sprite.texture = currentImage

