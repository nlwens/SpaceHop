extends Button

# Function called when the exit button is pressed
#func _on_ExitButton_pressed():

func _on_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")
	pass # Replace with function body.
