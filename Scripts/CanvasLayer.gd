extends CanvasLayer

@onready var main = $Main
@onready var settings = $Settings
@onready var shop = $Shop
@onready var money_display = get_node_or_null("world/MoneyDisplay")



func _ready():
	GameState.in_gameplay = false


func _on_button_play_pressed():
	GameState.in_gameplay = true
	get_tree().change_scene_to_file("res://world.tscn")
	Global.highscore = 0


# Function to handle the settings button press
func _on_button_settings_pressed():
	main.visible = false
	settings.visible = true

# Function to handle the back button in settings
func _on_button_settings_back_pressed():
	main.visible = true
	settings.visible = false
	
func _on_button_shop_pressed():
	get_tree().change_scene_to_file("res://shop/shop.tscn")
	
func _on_button_shop_back_pressed():
	main.visible = true
	shop.visible= false



func _on_button_quit_pressed():
	get_tree().quit()
