extends CanvasLayer

@onready var main = $Main
@onready var settings = $Settings
@onready var shop = $Shop


func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")

# Function to handle the settings button press
func _on_button_settings_pressed():
	main.visible = false
	settings.visible = true

# Function to handle the back button in settings
func _on_button_settings_back_pressed():
	main.visible = true
	settings.visible = false
	
func _on_button_shop_pressed():
	get_tree().change_scene_to_file("res://shop.tscn")
	
func _on_button_shop_back_pressed():
	main.visible = true
	shop.visible= false
	

