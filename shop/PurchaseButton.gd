extends Button

@onready var Failed = $Failed

func _on_purchase1_pressed():
	if Global.score >= 30:
		Global.score -= 30
	
	else:
		Failed.visible = true
	pass # Replace with function body.

func _on_purchase2_pressed():
	if Global.score >= 30:
		Global.score -= 30
	pass # Replace with function body.
