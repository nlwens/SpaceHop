extends Control

@onready var Failed = $Failed
@onready var Success = $Success

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_purchase_1_pressed():
	if Global.score >= 100:
		Global.score -= 100
		Global.playernum = 1
		Success.visible = true
		await get_tree().create_timer(1).timeout
		Success.visible = false
	
	else:
		Failed.visible = true
		await get_tree().create_timer(1).timeout
		Failed.visible = false

	pass # Replace with function body.


func _on_purchase_2_pressed():
	if Global.score >= 100:
		Global.score -= 100
		Global.playernum = 2
		Success.visible = true
		await get_tree().create_timer(1).timeout
		Success.visible = false
	
	else:
		Failed.visible = true
		await get_tree().create_timer(1).timeout
		Failed.visible = false
		
	pass # Replace with function body.


func _on_purchase_3_pressed():
	if Global.score >= 100:
		Global.score -= 100
		Global.playernum = 0
		Success.visible = true
		await get_tree().create_timer(1).timeout
		Success.visible = false
	
	else:
		Failed.visible = true
		await get_tree().create_timer(1).timeout
		Failed.visible = false
	pass # Replace with function body.
